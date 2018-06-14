<?php
namespace Home\Controller;

use Common\Controller\HomeBaseController;

/**
 * 3ms首页Controller
 */
class IndexController extends HomeBaseController
{
    /**
     * 首页
     */
    public function index()
    {
        // session('names', 'asd');
        $data = D('AdminNav')->getTreeData('level', 'order_number,id');

        $newData = $data[39]['_data'];

        $solution = $data[44];

        $digital = $data[45]['_data'][46];

        $successCase = $data[45]['_data'][47];

        $reports = $data[45]['_data'][48];

        $hotVideo = $data[45]['_data'][49];

        $video_arr = M('video')->where('status=1')->order('order_number')->select();

        $assign = array(
            'newData'          => $newData,
            'solution'         => $solution,
            'digital'          => $digital,
            'successCase'      => $successCase,
            'reports'          => $reports,
            'hotVideo'         => $hotVideo,
            'v5_indexArr'      => $this->indexShowArr(42),
            'jsqy_indexArr'    => $this->indexShowArr(43),
            'case_indexArr'    => $this->indexShowArr(47),
            'reports_indexArr' => $this->indexShowArr(48),
            'video_arr'        => $video_arr,

        );
        // var_dump();die;
        $this->assign($assign);

        $lang = I('lang') ? strtolower(I('lang')) : "";

        if ($lang == 'en') {
            $this->display('index_en'); //英文版页面
        } else {
            $this->display('index');
        }

    }

    private function indexShowArr($navid)
    {
        $re  = M('category')->where('navid=' . $navid)->order('order_number')->select();
        $arr = array();
        foreach ($re as $k => $v) {
            $arr[] = $v['id'];
        }
        $where['cateid'] = array('in', $arr);
        $where['status'] = 1;
        return M('ziliao')->where($where)->order('order_number')->select();
    }

    public function _empty($methed_name)
    {
        $this->redirect('Home/index/index');
        exit(0);
    }

}
