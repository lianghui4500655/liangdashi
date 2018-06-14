<?php
namespace Common\Controller;

use Common\Controller\BaseController;

/**
 * admin 基类控制器
 */
class AdminBaseController extends BaseController
{
    /**
     * 初始化方法
     */
    public function _initialize()
    {
        parent::_initialize();
        $auth      = new \Think\Auth();
        $rule_name = MODULE_NAME . '/' . CONTROLLER_NAME . '/' . ACTION_NAME;
        $result    = $auth->check($rule_name, $_SESSION['user']['id']);

        if (!check_login()) {
            $this->error('您需要登录！!', U('Admin/Login/index'));
        }
        if (!$result) {
            $this->error('没有权限!');
        }
        // 分配菜单数据
        $nav_data = D('AdminNav')->getTreeDataAdmin('level', 'order_number,id');

        $assign = array(
            'nav_data' => $nav_data,
        );
        $this->assign($assign);
    }

}
