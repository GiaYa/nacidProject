package com.example.nacidtest.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Data;
import org.springframework.stereotype.Component;

/**
 * 用户信息
 * @TableName nacid_user
 */
@TableName(value ="nacid_user")
@Data
@Component
public class NacidUser implements Serializable {
    /**
     * 
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 用户姓名
     */
    @TableField(value = "name")
    private String name;

    /**
     * 
     */
    @TableField(value = "age")
    private Integer age;

    /**
     * 
     */
    @TableField(value = "sex")
    private String sex;

    /**
     * 用户身份证号
     */
    @TableField(value = "ucid")
    private String ucid;

    /**
     * 用户联系电话
     */
    @TableField(value = "tel")
    private String tel;

    /**
     * 用户现住址
     */
    @TableField(value = "address")
    private String address;

    /**
     * 接种疫苗情况
     */
    @TableField(value = "isvaccination")
    private String isvaccination;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

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
        NacidUser other = (NacidUser) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getName() == null ? other.getName() == null : this.getName().equals(other.getName()))
            && (this.getAge() == null ? other.getAge() == null : this.getAge().equals(other.getAge()))
            && (this.getSex() == null ? other.getSex() == null : this.getSex().equals(other.getSex()))
            && (this.getUcid() == null ? other.getUcid() == null : this.getUcid().equals(other.getUcid()))
            && (this.getTel() == null ? other.getTel() == null : this.getTel().equals(other.getTel()))
            && (this.getAddress() == null ? other.getAddress() == null : this.getAddress().equals(other.getAddress()))
            && (this.getIsvaccination() == null ? other.getIsvaccination() == null : this.getIsvaccination().equals(other.getIsvaccination()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getName() == null) ? 0 : getName().hashCode());
        result = prime * result + ((getAge() == null) ? 0 : getAge().hashCode());
        result = prime * result + ((getSex() == null) ? 0 : getSex().hashCode());
        result = prime * result + ((getUcid() == null) ? 0 : getUcid().hashCode());
        result = prime * result + ((getTel() == null) ? 0 : getTel().hashCode());
        result = prime * result + ((getAddress() == null) ? 0 : getAddress().hashCode());
        result = prime * result + ((getIsvaccination() == null) ? 0 : getIsvaccination().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", age=").append(age);
        sb.append(", sex=").append(sex);
        sb.append(", ucid=").append(ucid);
        sb.append(", tel=").append(tel);
        sb.append(", address=").append(address);
        sb.append(", isvaccination=").append(isvaccination);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}