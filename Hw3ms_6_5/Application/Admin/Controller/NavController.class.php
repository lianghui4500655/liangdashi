<?php
namespace Admin\Controller;

use Common\Controller\AdminBaseController;

/**
 * 后台菜单管理
 */
class NavController extends AdminBaseController
{
    /**
     * 菜单列表
     */
    public function index()
    {
        $data = D('AdminNav')->getTreeData('level', 'order_number,id');
        $this->setData($data);

        $assign = array(
            'data' => $data,
        );
        $this->assign($assign);
        $this->display();
    }

    /**
     * 添加菜单
     */
    public function add()
    {
        $data = I('post.');
        unset($data['id']);
        $result = D('AdminNav')->addData($data);
        if ($result) {
            $this->success('添加成功', U('Admin/Nav/index'));
        } else {
            $this->error('添加失败');
        }
    }

    /**
     * 修改菜单
     */
    public function edit()
    {
        $data = I('post.');
        $map  = array(
            'id' => $data['id'],
        );
        $result = D('AdminNav')->editData($map, $data);
        if ($result) {
            $this->success('修改成功', U('Admin/Nav/index'));
        } else {
            $this->error('修改失败');
        }
    }

    /**
     * 删除菜单
     */
    public function delete()
    {
        $id  = I('get.id');
        $map = array(
            'id' => $id,
        );
        $result = D('AdminNav')->deleteData($map);
        if ($result) {
            $this->success('删除成功', U('Admin/Nav/index'));
        } else {
            $this->error('请先删除子菜单');
        }
    }

    /**
     * 菜单排序
     */
    public function order()
    {
        $data   = I('post.');
        $result = D('AdminNav')->orderData($data);
        if ($result) {
            $this->success('排序成功', U('Admin/Nav/index'));
        } else {
            $this->error('排序失败');
        }
    }

    private function setData(&$data)
    {
        foreach ($data as $a => $b) {
            if (empty($b['_data'])) {
                if (empty(M('AdminNav')->where('pid=' . $b['id'])->select())) {
                    $data[$a]['haschild'] = '0';
                } else {
                    $data[$a]['haschild'] = '1';
                }
            } else {
                $data[$a]['haschild'] = '1';
                foreach ($b['_data'] as $c => $d) {
                    if (empty($d['_data'])) {
                        if (empty(M('AdminNav')->where('pid=' . $d['id'])->select())) {
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
