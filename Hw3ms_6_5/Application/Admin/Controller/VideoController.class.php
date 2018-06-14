<?php
namespace Admin\Controller;

use Common\Controller\AdminBaseController;
use Think\Upload;

/**
 * 后台热点视频管理控制器
 */
class VideoController extends AdminBaseController
{

    public function index()
    {
        $navid    = I('get.nav') ? I('get.nav') : 0;
        $cateid   = I('get.cate') ? I('get.cate') : 0;
        $pid      = M('admin_nav')->where('id=' . $navid)->find()['pid'];
        $name     = M('category')->where('id=' . $cateid)->find()['name'];
        $navpname = M('admin_nav')->where('id=' . $pid)->find()['name'];
        $navname  = M('admin_nav')->where('id=' . $navid)->find()['name'];
        $re       = M('category')->where('navid=' . $navid)->select();
        $arr      = array();
        foreach ($re as $k => $v) {
            $arr[] = $v['id'];
        }
        $where['cateid'] = array('in', $arr);
        $where['status'] = 1;

        // var_dump($data);die;
        $this->assign($assign);
        $data = M('video')->query("select *,( CASE status WHEN '1' THEN '是' ELSE '否' END) as state from hw3ms_video where cateid=" . $cateid . " order by order_number,status desc");

        $assign = array(
            'data'     => $data,
            'name'     => $name,
            'navname'  => $navname,
            'navpname' => $navpname,
        );
        // var_dump($data);die;
        $this->assign($assign);
        $this->display();
    }

    /**
     * 添加视频
     */
    public function add()
    {

        $data = I('post.');

        $reg = '/(ht|f)tp(s?)\:\/\/[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)([a-zA-Z0-9\-\.\?\,\'\/\\\+&amp;%\$#_]*)?/';
        if (!preg_match($reg, $data['url']) && $data['url'] != "") {
            $this->error('不合法的中文链接');
        }
        if (!preg_match($reg, $data['url_en']) && $data['url_en'] != "") {
            $this->error('不合法的英文链接');
        }

        $config = array(
            'exts'     => array("jpg", "gif", 'png', "jpeg"), //允许上传的文件后缀
            'maxSize'  => 2145728,
            'rootPath' => './Upload/video_img/',
        );
        $file = new Upload($config);

        $upData = $file->upload();

        if ($upData) {

            $data['img'] = trim($config['rootPath'], '.') . $upData['img']['savepath'] . $upData['img']['savename'];

        } else {
            unset($data['img']);
        }
        $data['createtime'] = date('Y-m-d H:i:s');
        // var_dump($data);die;
        $result = M('video')->add($data);
        if ($result) {
            $this->success('添加成功');
        } else {
            $this->error('添加失败');
        }
    }

    /**
     * 修改视频
     */
    public function edit()
    {
        $data = I('post.');

        $reg = '/(ht|f)tp(s?)\:\/\/[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)([a-zA-Z0-9\-\.\?\,\'\/\\\+&amp;%\$#_]*)?/';
        if (!preg_match($reg, $data['url']) && $data['url'] != "") {
            $this->error('不合法的中文链接');
        }
        if (!preg_match($reg, $data['url_en']) && $data['url_en'] != "") {
            $this->error('不合法的英文链接');
        }

        $config = array(
            'exts'     => array("jpg", "gif", 'png', "jpeg"), //允许上传的文件后缀
            'maxSize'  => 2145728,
            'rootPath' => './Upload/video_img/',
        );
        $file = new Upload($config);

        $upData = $file->upload();

        if ($upData) {

            $data['img'] = trim($config['rootPath'], '.') . $upData['img']['savepath'] . $upData['img']['savename'];

        } else {
            unset($data['img']);
        }
        // var_dump($data);die;
        $map = array(
            'id' => $data['id'],
        );
        $result = D('Video')->editData($map, $data);
        if ($result) {
            $this->success('修改成功');
        } else {
            $this->error('修改失败');
        }
    }

    /**
     * 删除视频
     */
    public function delete()
    {
        $id  = I('get.id');
        $map = array(
            'id' => $id,
        );
        $result = D('Video')->deleteData($map);
        if ($result) {
            $this->success('删除成功');
        } else {
            $this->error('error');
        }
    }

    /**
     * 排序
     */
    public function order()
    {
        $data   = I('post.');
        $result = D('Video')->orderData($data);
        if ($result) {
            $this->success('排序成功');
        } else {
            $this->error('排序失败');
        }
    }

    public function index_show()
    {
        $data = I('post.');
        if ($data['status'] == '1') {
            $count = M('video')->where('status=1')->count();
            if ($count > 3) {
                $this->error('首页最多显示4个');
            }
            if (!M('video')->where('id=' . $data['id'])->find()['img']) {
                $this->error('首页显示必须有图片,请先上传图片进行修改');
            }

        }
        $map = array(
            'id' => $data['id'],
        );
        $result = D('Video')->editData($map, $data);
        if ($result) {
            $this->success('success');
        } else {
            $this->error('error');
        }
    }

    public function indexShowSet()
    {
        $navid    = I('get.nav') ? I('get.nav') : 0;
        $pid      = M('admin_nav')->where('id=' . $navid)->find()['pid'];
        $navpname = M('admin_nav')->where('id=' . $pid)->find()['name'];
        $navname  = M('admin_nav')->where('id=' . $navid)->find()['name'];
        $data     = M('video')->where('status=1')->order('order_number')->select();
        $assign   = array(
            'data'     => $data,
            'navname'  => $navname,
            'navpname' => $navpname,
        );
        // var_dump($data);die;
        $this->assign($assign);
        $this->display();

    }

}
