package com.rs.filter;

import com.alibaba.fastjson.JSON;
import com.rs.domain.vo.LoginUserDetail;
import com.rs.exception.pojo.BaseErrorInfoInterface;
import com.rs.exception.pojo.BizException;
import com.rs.exception.pojo.ExceptionEnum;
import com.rs.utils.JwtUtils;
import io.jsonwebtoken.Claims;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @FileName: JwtAuthonticationFilter
 * @Date: 2024/8/8:13:58
 * @Description:
 * @Author: RWG
 */
@Slf4j
@Component
public class JwtAuthenticationTokenFilter extends OncePerRequestFilter {

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        // 获取请求路径
        String uri = request.getRequestURI();

        // 如果是注册或登录请求，直接放行
        if (uri.equals("/reg") || uri.equals("/login")) {
            filterChain.doFilter(request, response);
            return;
        }

        // 获取 token
        String token = request.getHeader("Authorization");
        if (!StringUtils.hasText(token)) {
            throw new BizException("过滤器拦截到token为空");
        }

        LoginUserDetail loginUserDetail;
        try {
            // 解析 token
            Claims claims = JwtUtils.parseJwt(token);
            String loginUserString = claims.getSubject();
            loginUserDetail = JSON.parseObject(loginUserString,LoginUserDetail.class);
        } catch (Exception e) {
            throw new BizException("过滤器中token解析失败");
        }
        log.warn("该用户拥有权限"+loginUserDetail.getAuthorities());
        // 将验证完的用户信息放入 SecurityContextHolder
        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(loginUserDetail, null, loginUserDetail.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(authenticationToken);

        // 继续过滤链
        filterChain.doFilter(request, response);
    }
}
