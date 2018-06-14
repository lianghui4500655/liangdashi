<?php
namespace Admin\Controller;

use Common\Controller\AdminBaseController;

/**
 * 后台首页控制器
 */
class IndexController extends AdminBaseController
{
    /**
     * 首页
     */
    public function index()
    {
        // var_dump(C());
        $this->display();
    }

    public function logout()
    {
        session('user', null);
        $this->success('退出成功', U('Admin/Login/index'));
    }

}
