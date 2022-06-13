package com.example.nacidtest.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.List;

import lombok.Data;

/**
 * 福建健康码
 * @TableName nacid_code
 */
@TableName(value ="nacid_code")
@Data
public class NacidCode implements Serializable {
    /**
     * 
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 用户身份证号
     */
    @TableField(value = "ucid")
    private String ucid;

    /**
     * 1表示健康码红色 2表示健康码黄色 3表示健康码绿色
     */
    @TableField(value = "codestyle")
    private String codestyle;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    private List<NacidUser> userlist;

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
        NacidCode other = (NacidCode) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getUcid() == null ? other.getUcid() == null : this.getUcid().equals(other.getUcid()))
            && (this.getCodestyle() == null ? other.getCodestyle() == null : this.getCodestyle().equals(other.getCodestyle()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getUcid() == null) ? 0 : getUcid().hashCode());
        result = prime * result + ((getCodestyle() == null) ? 0 : getCodestyle().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", ucid=").append(ucid);
        sb.append(", codestyle=").append(codestyle);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}