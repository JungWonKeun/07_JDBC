package edu.kh.jdbc.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import edu.kh.jdbc.model.dao.UserDao;
import edu.kh.jdbc.model.dto.User;
import edu.kh.jdbc.service.UserService;
import edu.kh.jdbc.service.UserServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/selectAll")
public class UserListServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl(); // UserService 사용

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // 모든 사용자 정보를 조회
            List<User> users = userService.getAllUsers(); // UserService를 통해 조회
            
            // 조회된 정보를 request scope에 저장
            req.setAttribute("users", users);
            
            // selectAll.jsp 페이지로 포워딩
            req.getRequestDispatcher("/WEB-INF/views/selectAll.jsp").forward(req, resp);
        } catch (SQLException e) {
            throw new ServletException("사용자 정보를 조회하는 중 오류 발생", e);
        }
    }
}
