package com.rs.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

/**
 * 
 * @TableName emp_area_efps
 */
@TableName(value ="emp_area_efps")
public class EmpAreaEfps implements Serializable {
    /**
     * 
     */
    @TableId
    private Integer id;

    /**
     * 
     */
    private Integer efpsId;

    /**
     * 
     */
    private Integer eId;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

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
    public Integer getEfpsId() {
        return efpsId;
    }

    /**
     * 
     */
    public void setEfpsId(Integer efpsId) {
        this.efpsId = efpsId;
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
        EmpAreaEfps other = (EmpAreaEfps) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getEfpsId() == null ? other.getEfpsId() == null : this.getEfpsId().equals(other.getEfpsId()))
            && (this.geteId() == null ? other.geteId() == null : this.geteId().equals(other.geteId()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getEfpsId() == null) ? 0 : getEfpsId().hashCode());
        result = prime * result + ((geteId() == null) ? 0 : geteId().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", efpsId=").append(efpsId);
        sb.append(", eId=").append(eId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}