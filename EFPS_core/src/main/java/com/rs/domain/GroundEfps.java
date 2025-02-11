package com.rs.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

/**
 * @TableName ground_efps
 */
@TableName(value = "ground_efps")
public class GroundEfps implements Serializable {
  /** */
  @TableId(type = IdType.AUTO)
  private Integer id;

  /** */
  private Integer status;

  /** */
  private Integer type;

  /** */
  private String a1;

  /** */
  private String b1;

  /** */
  private String c1;

  /** */
  private String d1;

  /** */
  private String e1;

  /** */
  private String fg1;

  /** */
  private String h1;

  /** */
  private String b2;

  /** */
  private String c2;

  /** */
  private String b4;

  /** */
  private String c3;

  /** */
  private String de31;

  private String de32;
  private String de33;
  private String de34;

  /** */
  private String c4;

  /** */
  private String e4;

  /** */
  private String m;

  /** */
  private String e;

  /** */
  private String a;

  /** */
  private String i;

  /** */
  private Date createtime;

  /** */
  private Date updatetime;

  @TableField(exist = false)
  private static final long serialVersionUID = 1L;

  /** */
  public Integer getId() {
    return id;
  }

  /** */
  public void setId(Integer id) {
    this.id = id;
  }

  /** */
  public Integer getStatus() {
    return status;
  }

  /** */
  public void setStatus(Integer status) {
    this.status = status;
  }

  /** */
  public Integer getType() {
    return type;
  }

  /** */
  public void setType(Integer type) {
    this.type = type;
  }

  /** */
  public String getA1() {
    return a1;
  }

  /** */
  public void setA1(String a1) {
    this.a1 = a1;
  }

  /** */
  public String getB1() {
    return b1;
  }

  /** */
  public void setB1(String b1) {
    this.b1 = b1;
  }

  /** */
  public String getC1() {
    return c1;
  }

  /** */
  public void setC1(String c1) {
    this.c1 = c1;
  }

  /** */
  public String getD1() {
    return d1;
  }

  /** */
  public void setD1(String d1) {
    this.d1 = d1;
  }

  /** */
  public String getE1() {
    return e1;
  }

  /** */
  public void setE1(String e1) {
    this.e1 = e1;
  }

  /** */
  public String getFg1() {
    return fg1;
  }

  /** */
  public void setFg1(String fg1) {
    this.fg1 = fg1;
  }

  /** */
  public String getH1() {
    return h1;
  }

  /** */
  public void setH1(String h1) {
    this.h1 = h1;
  }

  /** */
  public String getB2() {
    return b2;
  }

  /** */
  public void setB2(String b2) {
    this.b2 = b2;
  }

  /** */
  public String getC2() {
    return c2;
  }

  /** */
  public void setC2(String c2) {
    this.c2 = c2;
  }

  /** */
  public String getB4() {
    return b4;
  }

  /** */
  public void setB4(String b4) {
    this.b4 = b4;
  }

  /** */
  public String getC3() {
    return c3;
  }

  /** */
  public void setC3(String c3) {
    this.c3 = c3;
  }

  /** */
  public String getDe31() {
    return de31;
  }

  /** */
  public void setDe31(String de31) {
    this.de31 = de31;
  }
  /** */
  public String getDe32() {
    return de32;
  }

  /** */
  public void setDe32(String de32) {
    this.de32 = de32;
  }
  /** */
  public String getDe33() {
    return de33;
  }

  /** */
  public void setDe33(String de33) {
    this.de33 = de33;
  }
  /** */
  public String getDe34() {
    return de34;
  }

  /** */
  public void setDe34(String de34) {
    this.de34 = de34;
  }

  /** */
  public String getC4() {
    return c4;
  }

  /** */
  public void setC4(String c4) {
    this.c4 = c4;
  }

  /** */
  public String getE4() {
    return e4;
  }

  /** */
  public void setE4(String e4) {
    this.e4 = e4;
  }

  /** */
  public String getM() {
    return m;
  }

  /** */
  public void setM(String m) {
    this.m = m;
  }

  /** */
  public String getE() {
    return e;
  }

  /** */
  public void setE(String e) {
    this.e = e;
  }

  /** */
  public String getA() {
    return a;
  }

  /** */
  public void setA(String a) {
    this.a = a;
  }

  /** */
  public String getI() {
    return i;
  }

  /** */
  public void setI(String i) {
    this.i = i;
  }

  /** */
  public Date getCreatetime() {
    return createtime;
  }

  /** */
  public void setCreatetime(Date createtime) {
    this.createtime = createtime;
  }

  /** */
  public Date getUpdatetime() {
    return updatetime;
  }

  /** */
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
    GroundEfps other = (GroundEfps) that;
    return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
        && (this.getStatus() == null
            ? other.getStatus() == null
            : this.getStatus().equals(other.getStatus()))
        && (this.getType() == null
            ? other.getType() == null
            : this.getType().equals(other.getType()))
        && (this.getA1() == null ? other.getA1() == null : this.getA1().equals(other.getA1()))
        && (this.getB1() == null ? other.getB1() == null : this.getB1().equals(other.getB1()))
        && (this.getC1() == null ? other.getC1() == null : this.getC1().equals(other.getC1()))
        && (this.getD1() == null ? other.getD1() == null : this.getD1().equals(other.getD1()))
        && (this.getE1() == null ? other.getE1() == null : this.getE1().equals(other.getE1()))
        && (this.getFg1() == null ? other.getFg1() == null : this.getFg1().equals(other.getFg1()))
        && (this.getH1() == null ? other.getH1() == null : this.getH1().equals(other.getH1()))
        && (this.getB2() == null ? other.getB2() == null : this.getB2().equals(other.getB2()))
        && (this.getC2() == null ? other.getC2() == null : this.getC2().equals(other.getC2()))
        && (this.getB4() == null ? other.getB4() == null : this.getB4().equals(other.getB4()))
        && (this.getC3() == null ? other.getC3() == null : this.getC3().equals(other.getC3()))
        && (this.getDe31() == null
            ? other.getDe31() == null
            : this.getDe31().equals(other.getDe31()))
        && (this.getDe32() == null
            ? other.getDe32() == null
            : this.getDe32().equals(other.getDe32()))
        && (this.getDe33() == null
            ? other.getDe33() == null
            : this.getDe33().equals(other.getDe33()))
        && (this.getDe34() == null
            ? other.getDe34() == null
            : this.getDe34().equals(other.getDe34()))
        && (this.getC4() == null ? other.getC4() == null : this.getC4().equals(other.getC4()))
        && (this.getE4() == null ? other.getE4() == null : this.getE4().equals(other.getE4()))
        && (this.getM() == null ? other.getM() == null : this.getM().equals(other.getM()))
        && (this.getE() == null ? other.getE() == null : this.getE().equals(other.getE()))
        && (this.getA() == null ? other.getA() == null : this.getA().equals(other.getA()))
        && (this.getI() == null ? other.getI() == null : this.getI().equals(other.getI()))
        && (this.getCreatetime() == null
            ? other.getCreatetime() == null
            : this.getCreatetime().equals(other.getCreatetime()))
        && (this.getUpdatetime() == null
            ? other.getUpdatetime() == null
            : this.getUpdatetime().equals(other.getUpdatetime()));
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
    result = prime * result + ((getB2() == null) ? 0 : getB2().hashCode());
    result = prime * result + ((getC2() == null) ? 0 : getC2().hashCode());
    result = prime * result + ((getB4() == null) ? 0 : getB4().hashCode());
    result = prime * result + ((getC3() == null) ? 0 : getC3().hashCode());
    result = prime * result + ((getDe31() == null) ? 0 : getDe31().hashCode());
    result = prime * result + ((getDe32() == null) ? 0 : getDe32().hashCode());
    result = prime * result + ((getDe33() == null) ? 0 : getDe33().hashCode());
    result = prime * result + ((getDe34() == null) ? 0 : getDe34().hashCode());
    result = prime * result + ((getC4() == null) ? 0 : getC4().hashCode());
    result = prime * result + ((getE4() == null) ? 0 : getE4().hashCode());
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
    sb.append(", b2=").append(b2);
    sb.append(", c2=").append(c2);
    sb.append(", b4=").append(b4);
    sb.append(", c3=").append(c3);
    sb.append(", de3=").append(de31);
    sb.append(", de32=").append(de32);
    sb.append(", de33=").append(de33);
    sb.append(", de34=").append(de34);
    sb.append(", c4=").append(c4);
    sb.append(", e4=").append(e4);
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
