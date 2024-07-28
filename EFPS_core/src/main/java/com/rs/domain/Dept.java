package com.rs.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @TableName dept
 */
@TableName(value ="dept")
public class Dept implements Serializable {
    /**
     * 
     */
    @TableId
    private Integer id;

    /**
     * 
     */
    private Integer dId;

    /**
     * 
     */
    private String dName;

    /**
     * 
     */
    private String dAvatarpath;

    /**
     * 
     */
    private Date dCreatetime;

    /**
     * 
     */
    private Date dUpdatetime;

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
    public Integer getdId() {
        return dId;
    }

    /**
     * 
     */
    public void setdId(Integer dId) {
        this.dId = dId;
    }

    /**
     * 
     */
    public String getdName() {
        return dName;
    }

    /**
     * 
     */
    public void setdName(String dName) {
        this.dName = dName;
    }

    /**
     * 
     */
    public String getdAvatarpath() {
        return dAvatarpath;
    }

    /**
     * 
     */
    public void setdAvatarpath(String dAvatarpath) {
        this.dAvatarpath = dAvatarpath;
    }

    /**
     * 
     */
    public Date getdCreatetime() {
        return dCreatetime;
    }

    /**
     * 
     */
    public void setdCreatetime(Date dCreatetime) {
        this.dCreatetime = dCreatetime;
    }

    /**
     * 
     */
    public Date getdUpdatetime() {
        return dUpdatetime;
    }

    /**
     * 
     */
    public void setdUpdatetime(Date dUpdatetime) {
        this.dUpdatetime = dUpdatetime;
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
        Dept other = (Dept) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getdId() == null ? other.getdId() == null : this.getdId().equals(other.getdId()))
            && (this.getdName() == null ? other.getdName() == null : this.getdName().equals(other.getdName()))
            && (this.getdAvatarpath() == null ? other.getdAvatarpath() == null : this.getdAvatarpath().equals(other.getdAvatarpath()))
            && (this.getdCreatetime() == null ? other.getdCreatetime() == null : this.getdCreatetime().equals(other.getdCreatetime()))
            && (this.getdUpdatetime() == null ? other.getdUpdatetime() == null : this.getdUpdatetime().equals(other.getdUpdatetime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getdId() == null) ? 0 : getdId().hashCode());
        result = prime * result + ((getdName() == null) ? 0 : getdName().hashCode());
        result = prime * result + ((getdAvatarpath() == null) ? 0 : getdAvatarpath().hashCode());
        result = prime * result + ((getdCreatetime() == null) ? 0 : getdCreatetime().hashCode());
        result = prime * result + ((getdUpdatetime() == null) ? 0 : getdUpdatetime().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", dId=").append(dId);
        sb.append(", dName=").append(dName);
        sb.append(", dAvatarpath=").append(dAvatarpath);
        sb.append(", dCreatetime=").append(dCreatetime);
        sb.append(", dUpdatetime=").append(dUpdatetime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}