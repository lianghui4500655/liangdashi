<?php
namespace Admin\Controller;

use Think\Controller;

/**
 * 后台登录控制器
 */
class LoginController extends Controller
{
    /**
     * 首页
     */
    public function index()
    {
        $this->display('login');
    }

    public function login()
    {
        if (IS_POST) {
            // 做一个简单的登录 组合where数组条件
            $map             = I('post.');
            $map['password'] = md5($map['password']);
            $data            = M('Users')->where($map)->find();
            if (empty($data)) {
                $this->error('账号或密码错误');
            } else {
                $_SESSION['user'] = array(
                    'id'       => $data['id'],
                    'username' => $data['username'],
                    'avatar'   => $data['avatar'],
                );
                $this->success('登录成功', U('Admin/Index/index'));
            }
        } else {
            $data   = check_login() ? $_SESSION['user']['username'] . '已登录' : '未登录';
            $assign = array(
                'data' => $data,
            );
            $this->assign($assign);
            $this->display();
        }
    }

    /**
     * 退出
     */
    public function logout()
    {
        session('user', null);
        $this->success('退出成功', U('Admin/Login/index'));
    }

}
