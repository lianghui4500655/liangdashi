<?php
namespace Home\Controller;

use Common\Controller\HomeBaseController;

/**
 * 详情页控制器
 */
class DetailController extends HomeBaseController
{

    public function index()
    {
        // var_dump(session('names'));die;
        $navid = I('get.nav') ? I('get.nav') : 0; //菜单id
        $arr   = D('Category')->where('navid=' . $navid)->order('order_number')->select();
        //获取该菜单下的分类数组(二维)
        $data = \Org\Nx\Data::channelLevel($arr, '0', '', 'id', 'pid');
        //转为层级结构(多维)

        if ($navid == '49') {
            $this->setData($data); //给最底层的分类并入视频数组
        } else {
            $this->tt($data); //给最底层的分类并入资料数组
        }
        // $navPid = M('admin_nav')->where('id=' . $navid)->find()['pid'];
        $nar_arr = M('admin_nav')->where('id=' . $navid)->find();
        $navPid  = $nar_arr['pid'];

        $n_arr = M('admin_nav')->where('id=' . $navid)->find();
        $name  = $n_arr['name'];

        $navArr = M('admin_nav')->where('pid=' . $navPid)->order('order_number')->select(); //查询该菜单的所有兄弟菜单数组(二维)
        $assign = array(
            'data'   => $data,
            'name'   => $name,
            'navArr' => $navArr,
        );
        $this->assign($assign);
        $this->display();
    }
    private function tt(&$data) //资料,根据层级处理

    {
        foreach ($data as $a => $b) {
            if (empty($b['_data'])) {
                $data[$a]['ziliao'] = M('ziliao')->where('cateid=' . $b['id'])->order('order_number')->select();
            }
            foreach ($b['_data'] as $c => $d) {
                if (empty($d['_data'])) {
                    $data[$a]['_data'][$c]['ziliao'] = M('ziliao')->where('cateid=' . $d['id'])->order('order_number')->select();
                } else {
                    foreach ($d['_data'] as $e => $f) {
                        $data[$a]['_data'][$c]['_data'][$e]['ziliao'] = M('ziliao')->where('cateid=' . $f['id'])->order('order_number')->select();
                    }
                }
            }
        }
        return $data;
    }
    private function setData(&$data) //视频,只有一级分类

    {
        foreach ($data as $k => $v) {
            $data[$k]['ziliao'] = M('video')->where('cateid=' . $v['id'])->order('order_number')->select();
        }
        return $data;
    }

    public function _empty($methed_name)
    {
        $this->redirect('Home/index/index');
        exit(0);
    }

}
