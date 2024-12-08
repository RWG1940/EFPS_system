package com.rs.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

/**
 * 航班信息表
 * @TableName flight_info
 */
@TableName(value ="flight_info")
public class FlightInfo implements Serializable {
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
     * 航空公司名称
     */
    private String airline;

    /**
     * 机型
     */
    private String aircraftType;

    /**
     * 起飞机场三字码
     */
    private String departureAirport;

    /**
     * 降落机场三字码
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
     * 航路信息
     */
    private String route;

    /**
     * 航班状态：0-计划中，1-起飞，2-降落，3-延误，4-取消
     */
    private Integer flightStatus;

    /**
     * 延误原因
     */
    private String delayReason;

    /**
     * 当前高度（单位：米）
     */
    private Integer altitude;

    /**
     * 当前速度（单位：公里/小时）
     */
    private Integer speed;

    /**
     * 当前经纬度坐标
     */
    private String position;

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
     * 航空公司名称
     */
    public String getAirline() {
        return airline;
    }

    /**
     * 航空公司名称
     */
    public void setAirline(String airline) {
        this.airline = airline;
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
     * 起飞机场三字码
     */
    public String getDepartureAirport() {
        return departureAirport;
    }

    /**
     * 起飞机场三字码
     */
    public void setDepartureAirport(String departureAirport) {
        this.departureAirport = departureAirport;
    }

    /**
     * 降落机场三字码
     */
    public String getArrivalAirport() {
        return arrivalAirport;
    }

    /**
     * 降落机场三字码
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
     * 航路信息
     */
    public String getRoute() {
        return route;
    }

    /**
     * 航路信息
     */
    public void setRoute(String route) {
        this.route = route;
    }

    /**
     * 航班状态：0-计划中，1-起飞，2-降落，3-延误，4-取消
     */
    public Integer getFlightStatus() {
        return flightStatus;
    }

    /**
     * 航班状态：0-计划中，1-起飞，2-降落，3-延误，4-取消
     */
    public void setFlightStatus(Integer flightStatus) {
        this.flightStatus = flightStatus;
    }

    /**
     * 延误原因
     */
    public String getDelayReason() {
        return delayReason;
    }

    /**
     * 延误原因
     */
    public void setDelayReason(String delayReason) {
        this.delayReason = delayReason;
    }

    /**
     * 当前高度（单位：米）
     */
    public Integer getAltitude() {
        return altitude;
    }

    /**
     * 当前高度（单位：米）
     */
    public void setAltitude(Integer altitude) {
        this.altitude = altitude;
    }

    /**
     * 当前速度（单位：公里/小时）
     */
    public Integer getSpeed() {
        return speed;
    }

    /**
     * 当前速度（单位：公里/小时）
     */
    public void setSpeed(Integer speed) {
        this.speed = speed;
    }

    /**
     * 当前经纬度坐标
     */
    public String getPosition() {
        return position;
    }

    /**
     * 当前经纬度坐标
     */
    public void setPosition(String position) {
        this.position = position;
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
        FlightInfo other = (FlightInfo) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getFlightNumber() == null ? other.getFlightNumber() == null : this.getFlightNumber().equals(other.getFlightNumber()))
            && (this.getAirline() == null ? other.getAirline() == null : this.getAirline().equals(other.getAirline()))
            && (this.getAircraftType() == null ? other.getAircraftType() == null : this.getAircraftType().equals(other.getAircraftType()))
            && (this.getDepartureAirport() == null ? other.getDepartureAirport() == null : this.getDepartureAirport().equals(other.getDepartureAirport()))
            && (this.getArrivalAirport() == null ? other.getArrivalAirport() == null : this.getArrivalAirport().equals(other.getArrivalAirport()))
            && (this.getScheduledDepartureTime() == null ? other.getScheduledDepartureTime() == null : this.getScheduledDepartureTime().equals(other.getScheduledDepartureTime()))
            && (this.getScheduledArrivalTime() == null ? other.getScheduledArrivalTime() == null : this.getScheduledArrivalTime().equals(other.getScheduledArrivalTime()))
            && (this.getActualDepartureTime() == null ? other.getActualDepartureTime() == null : this.getActualDepartureTime().equals(other.getActualDepartureTime()))
            && (this.getActualArrivalTime() == null ? other.getActualArrivalTime() == null : this.getActualArrivalTime().equals(other.getActualArrivalTime()))
            && (this.getRoute() == null ? other.getRoute() == null : this.getRoute().equals(other.getRoute()))
            && (this.getFlightStatus() == null ? other.getFlightStatus() == null : this.getFlightStatus().equals(other.getFlightStatus()))
            && (this.getDelayReason() == null ? other.getDelayReason() == null : this.getDelayReason().equals(other.getDelayReason()))
            && (this.getAltitude() == null ? other.getAltitude() == null : this.getAltitude().equals(other.getAltitude()))
            && (this.getSpeed() == null ? other.getSpeed() == null : this.getSpeed().equals(other.getSpeed()))
            && (this.getPosition() == null ? other.getPosition() == null : this.getPosition().equals(other.getPosition()))
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
        result = prime * result + ((getAirline() == null) ? 0 : getAirline().hashCode());
        result = prime * result + ((getAircraftType() == null) ? 0 : getAircraftType().hashCode());
        result = prime * result + ((getDepartureAirport() == null) ? 0 : getDepartureAirport().hashCode());
        result = prime * result + ((getArrivalAirport() == null) ? 0 : getArrivalAirport().hashCode());
        result = prime * result + ((getScheduledDepartureTime() == null) ? 0 : getScheduledDepartureTime().hashCode());
        result = prime * result + ((getScheduledArrivalTime() == null) ? 0 : getScheduledArrivalTime().hashCode());
        result = prime * result + ((getActualDepartureTime() == null) ? 0 : getActualDepartureTime().hashCode());
        result = prime * result + ((getActualArrivalTime() == null) ? 0 : getActualArrivalTime().hashCode());
        result = prime * result + ((getRoute() == null) ? 0 : getRoute().hashCode());
        result = prime * result + ((getFlightStatus() == null) ? 0 : getFlightStatus().hashCode());
        result = prime * result + ((getDelayReason() == null) ? 0 : getDelayReason().hashCode());
        result = prime * result + ((getAltitude() == null) ? 0 : getAltitude().hashCode());
        result = prime * result + ((getSpeed() == null) ? 0 : getSpeed().hashCode());
        result = prime * result + ((getPosition() == null) ? 0 : getPosition().hashCode());
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
        sb.append(", airline=").append(airline);
        sb.append(", aircraftType=").append(aircraftType);
        sb.append(", departureAirport=").append(departureAirport);
        sb.append(", arrivalAirport=").append(arrivalAirport);
        sb.append(", scheduledDepartureTime=").append(scheduledDepartureTime);
        sb.append(", scheduledArrivalTime=").append(scheduledArrivalTime);
        sb.append(", actualDepartureTime=").append(actualDepartureTime);
        sb.append(", actualArrivalTime=").append(actualArrivalTime);
        sb.append(", route=").append(route);
        sb.append(", flightStatus=").append(flightStatus);
        sb.append(", delayReason=").append(delayReason);
        sb.append(", altitude=").append(altitude);
        sb.append(", speed=").append(speed);
        sb.append(", position=").append(position);
        sb.append(", createdAt=").append(createdAt);
        sb.append(", updatedAt=").append(updatedAt);
        sb.append(", remarks=").append(remarks);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}