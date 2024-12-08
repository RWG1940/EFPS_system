package com.rs.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

/**
 * 航班计划表
 * @TableName flight_plan
 */
@TableName(value ="flight_plan")
public class FlightPlan implements Serializable {
    /**
     * 主键ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 航班号
     */
    private String flightNumber;

    /**
     * 机型
     */
    private String aircraftType;

    /**
     * 起飞机场代码
     */
    private String departureAirport;

    /**
     * 降落机场代码
     */
    private String arrivalAirport;

    /**
     * 计划起飞时间
     */
    private Date scheduledDepartureTime;

    /**
     * 计划到达时间
     */
    private Date scheduledArrivalTime;

    /**
     * 实际起飞时间
     */
    private Date actualDepartureTime;

    /**
     * 实际到达时间
     */
    private Date actualArrivalTime;

    /**
     * 登机口
     */
    private String gate;

    /**
     * 停机位
     */
    private String stand;

    /**
     * 航班状态：0-计划中，1-已起飞，2-已降落，3-延误，4-取消
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
     * 航班号
     */
    public String getFlightNumber() {
        return flightNumber;
    }

    /**
     * 航班号
     */
    public void setFlightNumber(String flightNumber) {
        this.flightNumber = flightNumber;
    }

    /**
     * 机型
     */
    public String getAircraftType() {
        return aircraftType;
    }

    /**
     * 机型
     */
    public void setAircraftType(String aircraftType) {
        this.aircraftType = aircraftType;
    }

    /**
     * 起飞机场代码
     */
    public String getDepartureAirport() {
        return departureAirport;
    }

    /**
     * 起飞机场代码
     */
    public void setDepartureAirport(String departureAirport) {
        this.departureAirport = departureAirport;
    }

    /**
     * 降落机场代码
     */
    public String getArrivalAirport() {
        return arrivalAirport;
    }

    /**
     * 降落机场代码
     */
    public void setArrivalAirport(String arrivalAirport) {
        this.arrivalAirport = arrivalAirport;
    }

    /**
     * 计划起飞时间
     */
    public Date getScheduledDepartureTime() {
        return scheduledDepartureTime;
    }

    /**
     * 计划起飞时间
     */
    public void setScheduledDepartureTime(Date scheduledDepartureTime) {
        this.scheduledDepartureTime = scheduledDepartureTime;
    }

    /**
     * 计划到达时间
     */
    public Date getScheduledArrivalTime() {
        return scheduledArrivalTime;
    }

    /**
     * 计划到达时间
     */
    public void setScheduledArrivalTime(Date scheduledArrivalTime) {
        this.scheduledArrivalTime = scheduledArrivalTime;
    }

    /**
     * 实际起飞时间
     */
    public Date getActualDepartureTime() {
        return actualDepartureTime;
    }

    /**
     * 实际起飞时间
     */
    public void setActualDepartureTime(Date actualDepartureTime) {
        this.actualDepartureTime = actualDepartureTime;
    }

    /**
     * 实际到达时间
     */
    public Date getActualArrivalTime() {
        return actualArrivalTime;
    }

    /**
     * 实际到达时间
     */
    public void setActualArrivalTime(Date actualArrivalTime) {
        this.actualArrivalTime = actualArrivalTime;
    }

    /**
     * 登机口
     */
    public String getGate() {
        return gate;
    }

    /**
     * 登机口
     */
    public void setGate(String gate) {
        this.gate = gate;
    }

    /**
     * 停机位
     */
    public String getStand() {
        return stand;
    }

    /**
     * 停机位
     */
    public void setStand(String stand) {
        this.stand = stand;
    }

    /**
     * 航班状态：0-计划中，1-已起飞，2-已降落，3-延误，4-取消
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 航班状态：0-计划中，1-已起飞，2-已降落，3-延误，4-取消
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
        FlightPlan other = (FlightPlan) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getFlightNumber() == null ? other.getFlightNumber() == null : this.getFlightNumber().equals(other.getFlightNumber()))
            && (this.getAircraftType() == null ? other.getAircraftType() == null : this.getAircraftType().equals(other.getAircraftType()))
            && (this.getDepartureAirport() == null ? other.getDepartureAirport() == null : this.getDepartureAirport().equals(other.getDepartureAirport()))
            && (this.getArrivalAirport() == null ? other.getArrivalAirport() == null : this.getArrivalAirport().equals(other.getArrivalAirport()))
            && (this.getScheduledDepartureTime() == null ? other.getScheduledDepartureTime() == null : this.getScheduledDepartureTime().equals(other.getScheduledDepartureTime()))
            && (this.getScheduledArrivalTime() == null ? other.getScheduledArrivalTime() == null : this.getScheduledArrivalTime().equals(other.getScheduledArrivalTime()))
            && (this.getActualDepartureTime() == null ? other.getActualDepartureTime() == null : this.getActualDepartureTime().equals(other.getActualDepartureTime()))
            && (this.getActualArrivalTime() == null ? other.getActualArrivalTime() == null : this.getActualArrivalTime().equals(other.getActualArrivalTime()))
            && (this.getGate() == null ? other.getGate() == null : this.getGate().equals(other.getGate()))
            && (this.getStand() == null ? other.getStand() == null : this.getStand().equals(other.getStand()))
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
        result = prime * result + ((getFlightNumber() == null) ? 0 : getFlightNumber().hashCode());
        result = prime * result + ((getAircraftType() == null) ? 0 : getAircraftType().hashCode());
        result = prime * result + ((getDepartureAirport() == null) ? 0 : getDepartureAirport().hashCode());
        result = prime * result + ((getArrivalAirport() == null) ? 0 : getArrivalAirport().hashCode());
        result = prime * result + ((getScheduledDepartureTime() == null) ? 0 : getScheduledDepartureTime().hashCode());
        result = prime * result + ((getScheduledArrivalTime() == null) ? 0 : getScheduledArrivalTime().hashCode());
        result = prime * result + ((getActualDepartureTime() == null) ? 0 : getActualDepartureTime().hashCode());
        result = prime * result + ((getActualArrivalTime() == null) ? 0 : getActualArrivalTime().hashCode());
        result = prime * result + ((getGate() == null) ? 0 : getGate().hashCode());
        result = prime * result + ((getStand() == null) ? 0 : getStand().hashCode());
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
        sb.append(", flightNumber=").append(flightNumber);
        sb.append(", aircraftType=").append(aircraftType);
        sb.append(", departureAirport=").append(departureAirport);
        sb.append(", arrivalAirport=").append(arrivalAirport);
        sb.append(", scheduledDepartureTime=").append(scheduledDepartureTime);
        sb.append(", scheduledArrivalTime=").append(scheduledArrivalTime);
        sb.append(", actualDepartureTime=").append(actualDepartureTime);
        sb.append(", actualArrivalTime=").append(actualArrivalTime);
        sb.append(", gate=").append(gate);
        sb.append(", stand=").append(stand);
        sb.append(", status=").append(status);
        sb.append(", createdAt=").append(createdAt);
        sb.append(", updatedAt=").append(updatedAt);
        sb.append(", remarks=").append(remarks);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}