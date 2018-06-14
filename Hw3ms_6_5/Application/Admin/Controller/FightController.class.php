<?php
namespace Admin\Controller;

use Common\Controller\AdminBaseController;

/**
 * 分类管理控制器
 */
class FightController extends AdminBaseController
{

    public function index()
    {
        $navid = I('get.nav') ? I('get.nav') : 0; //菜单id
        $data  = D('Category')->where('navid=' . $navid)->getTreeData('tree', 'order_number,id');

        $data2 = D('Category')->where('navid=' . $navid)->getTreeData('level', 'order_number,id');

        $pid   = M('admin_nav')->where('id=' . $navid)->find()['pid'];
        $pname = M('admin_nav')->where('id=' . $pid)->find()['name'];

        $this->setData($data);

        $this->setData2($data2);

        // var_dump($data2);die;

        $assign = array(
            'data'  => $data2,
            'name'  => M('admin_nav')->where('id=' . $navid)->find()['name'],
            'pname' => $pname,
        );
        $this->assign($assign);
        if ($navid == '49') {
            $this->display('video_cate');
        } else {
            $this->display();
        }

    }

    /**
     * 添加分类
     */
    public function add()
    {
        $navid = I('get.nav') ? I('get.nav') : 0;
        $data  = I('post.');

        // var_dump($data);die;

        if (!$this->canChild($data['pid'])) {
            $this->error('添加失败,分类不能超过三级');
        }
        if (!empty(M('ziliao')->where('cateid=' . $data['pid'])->find())) {
            $this->error('添加失败,此分类已有资料');
        }
        unset($data['id']);
        $result = D('Category')->addData($data);
        if ($result) {
            $this->success('添加成功');
        } else {
            $this->error('添加失败');
        }
    }

    private function canChild($id)
    {
        $pid = M('category')->where('id=' . $id)->find()['pid'];
        if ($pid == 0) {
            return true;
        }
        $ppid = M('category')->where('id=' . $pid)->find()['pid'];
        if ($ppid == 0) {
            return true;
        }
        return false;
    }

    /**
     * 修改分类
     */
    public function edit()
    {
        $data = I('post.');
        // var_dump($data);die;
        $map = array(
            'id' => $data['id'],
        );
        $result = D('Category')->editData($map, $data);
        if ($result) {
            $this->success('修改成功');
        } else {
            $this->error('修改失败');
        }
    }

    /**
     * 删除分类
     */
    public function delete()
    {
        $id  = I('get.id');
        $map = array(
            'id' => $id,
        );
        $result = D('Category')->deleteData($map);
        if ($result) {
            $this->success('删除成功');
        } else {
            $this->error('请先删除子分类');
        }
    }

    /**
     * 分类排序
     */
    public function order()
    {
        $data   = I('post.');
        $result = D('Category')->orderData($data);
        if ($result) {
            $this->success('排序成功');
        } else {
            $this->error('排序失败');
        }
    }

    public function addziliao()
    {
        $data   = I('post.');
        $result = M('ziliao')->add($data);
        if ($result) {
            $this->success('添加成功');
        } else {
            $this->error('添加失败');
        }
    }

    private function setData(&$data)
    {
        foreach ($data as $k => $v) {
            if (empty(M('category')->where('pid=' . $v['id'])->select())) {
                $data[$k]['haschild'] = '0';
            } else {
                $data[$k]['haschild'] = '1';
            }
            // $data[$k]['ziliao'] = M('ziliao')->where('cateid=' . $v['id'])->select();
        }
        return $data;
    }

    private function setData2(&$data)
    {
        foreach ($data as $a => $b) {
            if (empty($b['_data'])) {
                if (empty(M('category')->where('pid=' . $b['id'])->select())) {
                    $data[$a]['haschild'] = '0';
                } else {
                    $data[$a]['haschild'] = '1';
                }
            } else {
                $data[$a]['haschild'] = '1';
                foreach ($b['_data'] as $c => $d) {
                    if (empty($d['_data'])) {
                        if (empty(M('category')->where('pid=' . $d['id'])->select())) {
                            $data[$a]['_data'][$c]['haschild'] = '0';
                        } else {
                            $data[$a]['_data'][$c]['haschild'] = '1';
                        }
                    } else {
                        $data[$a]['_data'][$c]['haschild'] = '1';
                        foreach ($d['_data'] as $e => $f) {
                            $data[$a]['_data'][$c]['_data'][$e]['haschild'] = '0';
                        }
                    }
                }
            }
        }
        return $data;
    }

}
