package com.rs.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

/**
 * 跑道表
 * @TableName runway
 */
@TableName(value ="runway")
public class Runway implements Serializable {
    /**
     * 跑道ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 跑道编号
     */
    private String code;

    /**
     * 跑道长度（米）
     */
    private Integer length;

    /**
     * 跑道宽度（米）
     */
    private Integer width;

    /**
     * 跑道表面类型（如沥青、混凝土）
     */
    private String surfaceType;

    /**
     * 跑道状态：1-可用，0-不可用
     */
    private Integer status;

    /**
     * 创建时间
     */
    private Date createdAt;

    /**
     * 更新时间
     */
    private Date updatedAt;

    /**
     * 备注信息
     */
    private String remarks;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**
     * 跑道ID
     */
    public Long getId() {
        return id;
    }

    /**
     * 跑道ID
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 跑道编号
     */
    public String getCode() {
        return code;
    }

    /**
     * 跑道编号
     */
    public void setCode(String code) {
        this.code = code;
    }

    /**
     * 跑道长度（米）
     */
    public Integer getLength() {
        return length;
    }

    /**
     * 跑道长度（米）
     */
    public void setLength(Integer length) {
        this.length = length;
    }

    /**
     * 跑道宽度（米）
     */
    public Integer getWidth() {
        return width;
    }

    /**
     * 跑道宽度（米）
     */
    public void setWidth(Integer width) {
        this.width = width;
    }

    /**
     * 跑道表面类型（如沥青、混凝土）
     */
    public String getSurfaceType() {
        return surfaceType;
    }

    /**
     * 跑道表面类型（如沥青、混凝土）
     */
    public void setSurfaceType(String surfaceType) {
        this.surfaceType = surfaceType;
    }

    /**
     * 跑道状态：1-可用，0-不可用
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 跑道状态：1-可用，0-不可用
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * 创建时间
     */
    public Date getCreatedAt() {
        return createdAt;
    }

    /**
     * 创建时间
     */
    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    /**
     * 更新时间
     */
    public Date getUpdatedAt() {
        return updatedAt;
    }

    /**
     * 更新时间
     */
    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    /**
     * 备注信息
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * 备注信息
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks;
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
        Runway other = (Runway) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getCode() == null ? other.getCode() == null : this.getCode().equals(other.getCode()))
            && (this.getLength() == null ? other.getLength() == null : this.getLength().equals(other.getLength()))
            && (this.getWidth() == null ? other.getWidth() == null : this.getWidth().equals(other.getWidth()))
            && (this.getSurfaceType() == null ? other.getSurfaceType() == null : this.getSurfaceType().equals(other.getSurfaceType()))
            && (this.getStatus() == null ? other.getStatus() == null : this.getStatus().equals(other.getStatus()))
            && (this.getCreatedAt() == null ? other.getCreatedAt() == null : this.getCreatedAt().equals(other.getCreatedAt()))
            && (this.getUpdatedAt() == null ? other.getUpdatedAt() == null : this.getUpdatedAt().equals(other.getUpdatedAt()))
            && (this.getRemarks() == null ? other.getRemarks() == null : this.getRemarks().equals(other.getRemarks()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getCode() == null) ? 0 : getCode().hashCode());
        result = prime * result + ((getLength() == null) ? 0 : getLength().hashCode());
        result = prime * result + ((getWidth() == null) ? 0 : getWidth().hashCode());
        result = prime * result + ((getSurfaceType() == null) ? 0 : getSurfaceType().hashCode());
        result = prime * result + ((getStatus() == null) ? 0 : getStatus().hashCode());
        result = prime * result + ((getCreatedAt() == null) ? 0 : getCreatedAt().hashCode());
        result = prime * result + ((getUpdatedAt() == null) ? 0 : getUpdatedAt().hashCode());
        result = prime * result + ((getRemarks() == null) ? 0 : getRemarks().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", code=").append(code);
        sb.append(", length=").append(length);
        sb.append(", width=").append(width);
        sb.append(", surfaceType=").append(surfaceType);
        sb.append(", status=").append(status);
        sb.append(", createdAt=").append(createdAt);
        sb.append(", updatedAt=").append(updatedAt);
        sb.append(", remarks=").append(remarks);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}