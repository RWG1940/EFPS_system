package com.rs.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

/**
 * 航班停机位关联表
 * @TableName flight_parking_stand
 */
@TableName(value ="flight_parking_stand")
public class FlightParkingStand implements Serializable {
    /**
     * 主键ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 航班ID
     */
    private Long flightId;

    /**
     * 停机位ID
     */
    private Long parkingStandId;

    /**
     * 分配时间
     */
    private Date assignedTime;

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
     * 主键ID
     */
    public Long getId() {
        return id;
    }

    /**
     * 主键ID
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 航班ID
     */
    public Long getFlightId() {
        return flightId;
    }

    /**
     * 航班ID
     */
    public void setFlightId(Long flightId) {
        this.flightId = flightId;
    }

    /**
     * 停机位ID
     */
    public Long getParkingStandId() {
        return parkingStandId;
    }

    /**
     * 停机位ID
     */
    public void setParkingStandId(Long parkingStandId) {
        this.parkingStandId = parkingStandId;
    }

    /**
     * 分配时间
     */
    public Date getAssignedTime() {
        return assignedTime;
    }

    /**
     * 分配时间
     */
    public void setAssignedTime(Date assignedTime) {
        this.assignedTime = assignedTime;
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
        FlightParkingStand other = (FlightParkingStand) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getFlightId() == null ? other.getFlightId() == null : this.getFlightId().equals(other.getFlightId()))
            && (this.getParkingStandId() == null ? other.getParkingStandId() == null : this.getParkingStandId().equals(other.getParkingStandId()))
            && (this.getAssignedTime() == null ? other.getAssignedTime() == null : this.getAssignedTime().equals(other.getAssignedTime()))
            && (this.getCreatedAt() == null ? other.getCreatedAt() == null : this.getCreatedAt().equals(other.getCreatedAt()))
            && (this.getUpdatedAt() == null ? other.getUpdatedAt() == null : this.getUpdatedAt().equals(other.getUpdatedAt()))
            && (this.getRemarks() == null ? other.getRemarks() == null : this.getRemarks().equals(other.getRemarks()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getFlightId() == null) ? 0 : getFlightId().hashCode());
        result = prime * result + ((getParkingStandId() == null) ? 0 : getParkingStandId().hashCode());
        result = prime * result + ((getAssignedTime() == null) ? 0 : getAssignedTime().hashCode());
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
        sb.append(", flightId=").append(flightId);
        sb.append(", parkingStandId=").append(parkingStandId);
        sb.append(", assignedTime=").append(assignedTime);
        sb.append(", createdAt=").append(createdAt);
        sb.append(", updatedAt=").append(updatedAt);
        sb.append(", remarks=").append(remarks);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}