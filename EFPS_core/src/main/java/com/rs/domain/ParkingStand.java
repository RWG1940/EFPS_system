package com.rs.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

/**
 * 停机位表
 * @TableName parking_stand
 */
@TableName(value ="parking_stand")
public class ParkingStand implements Serializable {
    /**
     * 停机位ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 停机位编号
     */
    private String code;

    /**
     * 停机位大小（如小型、中型、大型）
     */
    private String size;

    /**
     * 停机位状态：1-可用，0-不可用
     */
    private Integer status;

    /**
     * 停机位位置（如北区A1）
     */
    private String location;

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
     * 停机位ID
     */
    public Long getId() {
        return id;
    }

    /**
     * 停机位ID
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 停机位编号
     */
    public String getCode() {
        return code;
    }

    /**
     * 停机位编号
     */
    public void setCode(String code) {
        this.code = code;
    }

    /**
     * 停机位大小（如小型、中型、大型）
     */
    public String getSize() {
        return size;
    }

    /**
     * 停机位大小（如小型、中型、大型）
     */
    public void setSize(String size) {
        this.size = size;
    }

    /**
     * 停机位状态：1-可用，0-不可用
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 停机位状态：1-可用，0-不可用
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * 停机位位置（如北区A1）
     */
    public String getLocation() {
        return location;
    }

    /**
     * 停机位位置（如北区A1）
     */
    public void setLocation(String location) {
        this.location = location;
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
        ParkingStand other = (ParkingStand) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getCode() == null ? other.getCode() == null : this.getCode().equals(other.getCode()))
            && (this.getSize() == null ? other.getSize() == null : this.getSize().equals(other.getSize()))
            && (this.getStatus() == null ? other.getStatus() == null : this.getStatus().equals(other.getStatus()))
            && (this.getLocation() == null ? other.getLocation() == null : this.getLocation().equals(other.getLocation()))
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
        result = prime * result + ((getSize() == null) ? 0 : getSize().hashCode());
        result = prime * result + ((getStatus() == null) ? 0 : getStatus().hashCode());
        result = prime * result + ((getLocation() == null) ? 0 : getLocation().hashCode());
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
        sb.append(", size=").append(size);
        sb.append(", status=").append(status);
        sb.append(", location=").append(location);
        sb.append(", createdAt=").append(createdAt);
        sb.append(", updatedAt=").append(updatedAt);
        sb.append(", remarks=").append(remarks);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}