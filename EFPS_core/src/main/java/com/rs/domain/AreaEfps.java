package com.rs.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @TableName area_efps
 */
@NoArgsConstructor
@TableName(value ="area_efps")
public class AreaEfps implements Serializable {
    /**
     * 
     */
    @TableId
    private Integer id;

    /**
     * 
     */
    private Integer status;

    /**
     * 
     */
    private Integer type;

    /**
     * 
     */
    private String a1;

    /**
     * 
     */
    private String b1;

    /**
     * 
     */
    private String c1;

    /**
     * 
     */
    private String d1;

    /**
     * 
     */
    private String e1;

    /**
     * 
     */
    private String fg1;

    /**
     * 
     */
    private String h1;

    /**
     * 
     */
    private String a2;

    /**
     * 
     */
    private String b2;

    /**
     * 
     */
    private String c2;

    /**
     * 
     */
    private String a31;

    /**
     * 
     */
    private String a32;

    /**
     * 
     */
    private String a33;

    /**
     * 
     */
    private String a34;

    /**
     * 
     */
    private String a35;

    /**
     * 
     */
    private String a36;

    /**
     * 
     */
    private String b31;

    /**
     * 
     */
    private String b32;

    /**
     * 
     */
    private String b33;

    /**
     * 
     */
    private String b34;

    /**
     * 
     */
    private String b35;

    /**
     * 
     */
    private String b36;

    /**
     * 
     */
    private String a4;

    /**
     * 
     */
    private String b4;

    /**
     * 
     */
    private String c4;

    /**
     * 
     */
    private String m;

    /**
     * 
     */
    private String e;

    /**
     * 
     */
    private String a;

    /**
     * 
     */
    private String i;

    /**
     * 
     */
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createtime;

    /**
     * 
     */
    private Date updatetime;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    public AreaEfps(String a1) {
        this.a1 = a1;
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
    public Integer getStatus() {
        return status;
    }

    /**
     * 
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * 
     */
    public Integer getType() {
        return type;
    }

    /**
     * 
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * 
     */
    public String getA1() {
        return a1;
    }

    /**
     * 
     */
    public void setA1(String a1) {
        this.a1 = a1;
    }

    /**
     * 
     */
    public String getB1() {
        return b1;
    }

    /**
     * 
     */
    public void setB1(String b1) {
        this.b1 = b1;
    }

    /**
     * 
     */
    public String getC1() {
        return c1;
    }

    /**
     * 
     */
    public void setC1(String c1) {
        this.c1 = c1;
    }

    /**
     * 
     */
    public String getD1() {
        return d1;
    }

    /**
     * 
     */
    public void setD1(String d1) {
        this.d1 = d1;
    }

    /**
     * 
     */
    public String getE1() {
        return e1;
    }

    /**
     * 
     */
    public void setE1(String e1) {
        this.e1 = e1;
    }

    /**
     * 
     */
    public String getFg1() {
        return fg1;
    }

    /**
     * 
     */
    public void setFg1(String fg1) {
        this.fg1 = fg1;
    }

    /**
     * 
     */
    public String getH1() {
        return h1;
    }

    /**
     * 
     */
    public void setH1(String h1) {
        this.h1 = h1;
    }

    /**
     * 
     */
    public String getA2() {
        return a2;
    }

    /**
     * 
     */
    public void setA2(String a2) {
        this.a2 = a2;
    }

    /**
     * 
     */
    public String getB2() {
        return b2;
    }

    /**
     * 
     */
    public void setB2(String b2) {
        this.b2 = b2;
    }

    /**
     * 
     */
    public String getC2() {
        return c2;
    }

    /**
     * 
     */
    public void setC2(String c2) {
        this.c2 = c2;
    }

    /**
     * 
     */
    public String getA31() {
        return a31;
    }

    /**
     * 
     */
    public void setA31(String a31) {
        this.a31 = a31;
    }

    /**
     * 
     */
    public String getA32() {
        return a32;
    }

    /**
     * 
     */
    public void setA32(String a32) {
        this.a32 = a32;
    }

    /**
     * 
     */
    public String getA33() {
        return a33;
    }

    /**
     * 
     */
    public void setA33(String a33) {
        this.a33 = a33;
    }

    /**
     * 
     */
    public String getA34() {
        return a34;
    }

    /**
     * 
     */
    public void setA34(String a34) {
        this.a34 = a34;
    }

    /**
     * 
     */
    public String getA35() {
        return a35;
    }

    /**
     * 
     */
    public void setA35(String a35) {
        this.a35 = a35;
    }

    /**
     * 
     */
    public String getA36() {
        return a36;
    }

    /**
     * 
     */
    public void setA36(String a36) {
        this.a36 = a36;
    }

    /**
     * 
     */
    public String getB31() {
        return b31;
    }

    /**
     * 
     */
    public void setB31(String b31) {
        this.b31 = b31;
    }

    /**
     * 
     */
    public String getB32() {
        return b32;
    }

    /**
     * 
     */
    public void setB32(String b32) {
        this.b32 = b32;
    }

    /**
     * 
     */
    public String getB33() {
        return b33;
    }

    /**
     * 
     */
    public void setB33(String b33) {
        this.b33 = b33;
    }

    /**
     * 
     */
    public String getB34() {
        return b34;
    }

    /**
     * 
     */
    public void setB34(String b34) {
        this.b34 = b34;
    }

    /**
     * 
     */
    public String getB35() {
        return b35;
    }

    /**
     * 
     */
    public void setB35(String b35) {
        this.b35 = b35;
    }

    /**
     * 
     */
    public String getB36() {
        return b36;
    }

    /**
     * 
     */
    public void setB36(String b36) {
        this.b36 = b36;
    }

    /**
     * 
     */
    public String getA4() {
        return a4;
    }

    /**
     * 
     */
    public void setA4(String a4) {
        this.a4 = a4;
    }

    /**
     * 
     */
    public String getB4() {
        return b4;
    }

    /**
     * 
     */
    public void setB4(String b4) {
        this.b4 = b4;
    }

    /**
     * 
     */
    public String getC4() {
        return c4;
    }

    /**
     * 
     */
    public void setC4(String c4) {
        this.c4 = c4;
    }

    /**
     * 
     */
    public String getM() {
        return m;
    }

    /**
     * 
     */
    public void setM(String m) {
        this.m = m;
    }

    /**
     * 
     */
    public String getE() {
        return e;
    }

    /**
     * 
     */
    public void setE(String e) {
        this.e = e;
    }

    /**
     * 
     */
    public String getA() {
        return a;
    }

    /**
     * 
     */
    public void setA(String a) {
        this.a = a;
    }

    /**
     * 
     */
    public String getI() {
        return i;
    }

    /**
     * 
     */
    public void setI(String i) {
        this.i = i;
    }

    /**
     * 
     */
    public Date getCreatetime() {
        return createtime;
    }

    /**
     * 
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * 
     */
    public Date getUpdatetime() {
        return updatetime;
    }

    /**
     * 
     */
    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
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
        AreaEfps other = (AreaEfps) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getStatus() == null ? other.getStatus() == null : this.getStatus().equals(other.getStatus()))
            && (this.getType() == null ? other.getType() == null : this.getType().equals(other.getType()))
            && (this.getA1() == null ? other.getA1() == null : this.getA1().equals(other.getA1()))
            && (this.getB1() == null ? other.getB1() == null : this.getB1().equals(other.getB1()))
            && (this.getC1() == null ? other.getC1() == null : this.getC1().equals(other.getC1()))
            && (this.getD1() == null ? other.getD1() == null : this.getD1().equals(other.getD1()))
            && (this.getE1() == null ? other.getE1() == null : this.getE1().equals(other.getE1()))
            && (this.getFg1() == null ? other.getFg1() == null : this.getFg1().equals(other.getFg1()))
            && (this.getH1() == null ? other.getH1() == null : this.getH1().equals(other.getH1()))
            && (this.getA2() == null ? other.getA2() == null : this.getA2().equals(other.getA2()))
            && (this.getB2() == null ? other.getB2() == null : this.getB2().equals(other.getB2()))
            && (this.getC2() == null ? other.getC2() == null : this.getC2().equals(other.getC2()))
            && (this.getA31() == null ? other.getA31() == null : this.getA31().equals(other.getA31()))
            && (this.getA32() == null ? other.getA32() == null : this.getA32().equals(other.getA32()))
            && (this.getA33() == null ? other.getA33() == null : this.getA33().equals(other.getA33()))
            && (this.getA34() == null ? other.getA34() == null : this.getA34().equals(other.getA34()))
            && (this.getA35() == null ? other.getA35() == null : this.getA35().equals(other.getA35()))
            && (this.getA36() == null ? other.getA36() == null : this.getA36().equals(other.getA36()))
            && (this.getB31() == null ? other.getB31() == null : this.getB31().equals(other.getB31()))
            && (this.getB32() == null ? other.getB32() == null : this.getB32().equals(other.getB32()))
            && (this.getB33() == null ? other.getB33() == null : this.getB33().equals(other.getB33()))
            && (this.getB34() == null ? other.getB34() == null : this.getB34().equals(other.getB34()))
            && (this.getB35() == null ? other.getB35() == null : this.getB35().equals(other.getB35()))
            && (this.getB36() == null ? other.getB36() == null : this.getB36().equals(other.getB36()))
            && (this.getA4() == null ? other.getA4() == null : this.getA4().equals(other.getA4()))
            && (this.getB4() == null ? other.getB4() == null : this.getB4().equals(other.getB4()))
            && (this.getC4() == null ? other.getC4() == null : this.getC4().equals(other.getC4()))
            && (this.getM() == null ? other.getM() == null : this.getM().equals(other.getM()))
            && (this.getE() == null ? other.getE() == null : this.getE().equals(other.getE()))
            && (this.getA() == null ? other.getA() == null : this.getA().equals(other.getA()))
            && (this.getI() == null ? other.getI() == null : this.getI().equals(other.getI()))
            && (this.getCreatetime() == null ? other.getCreatetime() == null : this.getCreatetime().equals(other.getCreatetime()))
            && (this.getUpdatetime() == null ? other.getUpdatetime() == null : this.getUpdatetime().equals(other.getUpdatetime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getStatus() == null) ? 0 : getStatus().hashCode());
        result = prime * result + ((getType() == null) ? 0 : getType().hashCode());
        result = prime * result + ((getA1() == null) ? 0 : getA1().hashCode());
        result = prime * result + ((getB1() == null) ? 0 : getB1().hashCode());
        result = prime * result + ((getC1() == null) ? 0 : getC1().hashCode());
        result = prime * result + ((getD1() == null) ? 0 : getD1().hashCode());
        result = prime * result + ((getE1() == null) ? 0 : getE1().hashCode());
        result = prime * result + ((getFg1() == null) ? 0 : getFg1().hashCode());
        result = prime * result + ((getH1() == null) ? 0 : getH1().hashCode());
        result = prime * result + ((getA2() == null) ? 0 : getA2().hashCode());
        result = prime * result + ((getB2() == null) ? 0 : getB2().hashCode());
        result = prime * result + ((getC2() == null) ? 0 : getC2().hashCode());
        result = prime * result + ((getA31() == null) ? 0 : getA31().hashCode());
        result = prime * result + ((getA32() == null) ? 0 : getA32().hashCode());
        result = prime * result + ((getA33() == null) ? 0 : getA33().hashCode());
        result = prime * result + ((getA34() == null) ? 0 : getA34().hashCode());
        result = prime * result + ((getA35() == null) ? 0 : getA35().hashCode());
        result = prime * result + ((getA36() == null) ? 0 : getA36().hashCode());
        result = prime * result + ((getB31() == null) ? 0 : getB31().hashCode());
        result = prime * result + ((getB32() == null) ? 0 : getB32().hashCode());
        result = prime * result + ((getB33() == null) ? 0 : getB33().hashCode());
        result = prime * result + ((getB34() == null) ? 0 : getB34().hashCode());
        result = prime * result + ((getB35() == null) ? 0 : getB35().hashCode());
        result = prime * result + ((getB36() == null) ? 0 : getB36().hashCode());
        result = prime * result + ((getA4() == null) ? 0 : getA4().hashCode());
        result = prime * result + ((getB4() == null) ? 0 : getB4().hashCode());
        result = prime * result + ((getC4() == null) ? 0 : getC4().hashCode());
        result = prime * result + ((getM() == null) ? 0 : getM().hashCode());
        result = prime * result + ((getE() == null) ? 0 : getE().hashCode());
        result = prime * result + ((getA() == null) ? 0 : getA().hashCode());
        result = prime * result + ((getI() == null) ? 0 : getI().hashCode());
        result = prime * result + ((getCreatetime() == null) ? 0 : getCreatetime().hashCode());
        result = prime * result + ((getUpdatetime() == null) ? 0 : getUpdatetime().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", status=").append(status);
        sb.append(", type=").append(type);
        sb.append(", a1=").append(a1);
        sb.append(", b1=").append(b1);
        sb.append(", c1=").append(c1);
        sb.append(", d1=").append(d1);
        sb.append(", e1=").append(e1);
        sb.append(", fg1=").append(fg1);
        sb.append(", h1=").append(h1);
        sb.append(", a2=").append(a2);
        sb.append(", b2=").append(b2);
        sb.append(", c2=").append(c2);
        sb.append(", a31=").append(a31);
        sb.append(", a32=").append(a32);
        sb.append(", a33=").append(a33);
        sb.append(", a34=").append(a34);
        sb.append(", a35=").append(a35);
        sb.append(", a36=").append(a36);
        sb.append(", b31=").append(b31);
        sb.append(", b32=").append(b32);
        sb.append(", b33=").append(b33);
        sb.append(", b34=").append(b34);
        sb.append(", b35=").append(b35);
        sb.append(", b36=").append(b36);
        sb.append(", a4=").append(a4);
        sb.append(", b4=").append(b4);
        sb.append(", c4=").append(c4);
        sb.append(", m=").append(m);
        sb.append(", e=").append(e);
        sb.append(", a=").append(a);
        sb.append(", i=").append(i);
        sb.append(", createtime=").append(createtime);
        sb.append(", updatetime=").append(updatetime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}