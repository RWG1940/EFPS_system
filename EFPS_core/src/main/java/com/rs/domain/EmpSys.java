package com.rs.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

/**
 * 
 * @TableName emp_sys
 */
@TableName(value ="emp_sys")
public class EmpSys implements Serializable {
    /**
     * 
     */
    @TableId
    private Integer id;

    /**
     * 
     */
    private Integer eId;

    /**
     * 
     */
    private Integer sysMsgId;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    public EmpSys(Integer eId, Integer insertedId) {
        this.eId = eId;
        this.sysMsgId = insertedId;
    }

    /**
     * 
     */
    public Integer getId() {
        return id;
    }

    /**
     * 
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 
     */
    public Integer geteId() {
        return eId;
    }

    /**
     * 
     */
    public void seteId(Integer eId) {
        this.eId = eId;
    }

    /**
     * 
     */
    public Integer getSysMsgId() {
        return sysMsgId;
    }

    /**
     * 
     */
    public void setSysMsgId(Integer sysMsgId) {
        this.sysMsgId = sysMsgId;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        EmpSys other = (EmpSys) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.geteId() == null ? other.geteId() == null : this.geteId().equals(other.geteId()))
            && (this.getSysMsgId() == null ? other.getSysMsgId() == null : this.getSysMsgId().equals(other.getSysMsgId()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((geteId() == null) ? 0 : geteId().hashCode());
        result = prime * result + ((getSysMsgId() == null) ? 0 : getSysMsgId().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", eId=").append(eId);
        sb.append(", sysMsgId=").append(sysMsgId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}