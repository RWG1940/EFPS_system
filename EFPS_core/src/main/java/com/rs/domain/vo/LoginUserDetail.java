package com.rs.domain.vo;

import com.rs.domain.Emp;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;

/**
 * @FileName: LoginUserDetail
 * @Date: 2024/8/7:22:03
 * @Description:
 * @Author: RWG
 */
@Data
@NoArgsConstructor
public class LoginUserDetail implements UserDetails {
    private Emp emp;
    public LoginUserDetail(Emp emp){
        this.emp = emp;
    }
    // 权限
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }
    // 密码
    @Override
    public String getPassword() {
        return emp.getePassword();
    }
    // 用户名
    @Override
    public String getUsername() {
        return emp.geteUsername();
    }
    // 账号是否过期
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }
    // 账号是否锁定
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }
    // 密码是否过期
    @Override
    public boolean isCredentialsNonExpired() {
        return false;
    }
    // 账号是否可用
    @Override
    public boolean isEnabled() {
        return false;
    }
}
