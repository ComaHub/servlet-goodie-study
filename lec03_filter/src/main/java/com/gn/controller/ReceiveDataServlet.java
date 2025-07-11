package com.gn.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "receiveDataServlet", urlPatterns = "/receive/*") // 별칭으로 필터 세팅하기 위해 name에 설정
public class ReceiveDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  public ReceiveDataServlet() {
    super();
  }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("데이터: " + request.getParameter("test_data"));
	}

}
