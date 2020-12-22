package kr.co.Dr_Link.mvc.filter;
 
import java.io.IOException;
 
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
 
public class AdminLoginCheckFilter implements Filter {
 
    public void init(FilterConfig arg0) throws ServletException {
    }
 
    public void doFilter(ServletRequest request, ServletResponse response, 
            FilterChain chain)
    throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest)request;
        HttpSession session = httpRequest.getSession(false);
        
        // 로그인했는지 확인
        boolean login = false;
        if (session != null) { 
            if (session.getAttribute("id") != null 
                    && session.getAttribute("grade").equals("a")) {
                login = true;  
            }
        }
        
        if (login) {
            chain.doFilter(request, response); // 로그인 했으면 그대로 요청 수행
        } else {
            RequestDispatcher dispatcher = 
                request.getRequestDispatcher("/login"); // 로그인 상태가 아니면 로그인 페이지로 이동
            dispatcher.forward(request, response);
        }
    }
 
    public void destroy() {
    }
}