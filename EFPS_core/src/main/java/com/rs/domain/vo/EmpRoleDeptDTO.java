package com.rs.domain.vo;

import com.rs.domain.Dept;
import com.rs.domain.Emp;
import com.rs.domain.Role;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @FileName: EmpRoleDTO
 * @Date: 2024/8/12:19:29
 * @Description: 用户信息和角色信息组合实体
 * @Author: RWG
 */
@Data
@NoArgsConstructor
public class EmpRoleDeptDTO {
    private Emp emp;
    private Role role;
    private Dept dept;
    public EmpRoleDeptDTO(Emp emp, Role role,Dept dept) {
        this.emp = emp;
        this.role = role;
        this.dept = dept;
    }
}
