package com.npe.cr.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.npe.cr.entity.PageResult;
import com.npe.cr.dao.TbLabstateMapper;
import com.npe.cr.pojo.TbLabstate;
import com.npe.cr.pojo.TbLabstateExample;
import com.npe.cr.service.LabstateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 服务实现层
 *
 * @author Administrator
 */
@Service
public class LabstateServiceImpl implements LabstateService {

    @Autowired
    private TbLabstateMapper labstateMapper;

    /**
     * 查询全部
     */
    @Override
    public List<TbLabstate> findAll() {
        return labstateMapper.selectByExample(null);
    }

    /**
     * 按分页查询
     */
    @Override
    public PageResult findPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        Page<TbLabstate> page = (Page<TbLabstate>) labstateMapper.selectByExample(null);
        return new PageResult(page.getTotal(), page.getResult());
    }

    /**
     * 增加
     */
    @Override
    public void add(TbLabstate labstate) {
        labstateMapper.insert(labstate);
    }

    /**
     * 修改
     */
    @Override
    public void update(TbLabstate labstate) {
        labstateMapper.updateByPrimaryKey(labstate);
    }

    /**
     * 根据ID获取实体
     *
     * @param id
     * @return
     */
    @Override
    public TbLabstate findOne(Long id) {
        return labstateMapper.selectByPrimaryKey(id);
    }

    /**
     * 批量删除
     */
    @Override
    public void delete(Long[] ids) {
        for (Long id : ids) {
            labstateMapper.deleteByPrimaryKey(id);
        }
    }

    @Override
    public PageResult findPage(TbLabstate labstate, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);

        TbLabstateExample example = new TbLabstateExample();
        TbLabstateExample.Criteria criteria = example.createCriteria();

        if (labstate != null) {
            if (labstate.getTimestate() != null && labstate.getTimestate().length() > 0) {
                criteria.andTimestateLike("%" + labstate.getTimestate() + "%");
            }

        }

        Page<TbLabstate> page = (Page<TbLabstate>) labstateMapper.selectByExample(example);
        return new PageResult(page.getTotal(), page.getResult());
    }

}
