package com.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Account;

/**
 * Servlet implementation class BankServlet1
 */
public class BankServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ArrayList<Account> accounts=new ArrayList<Account>();
		
		Account ac1=new Account();
		ac1.setAccno(111);
		ac1.setName("Raj");
		ac1.setBalance(90000);
		
		Account ac2=new Account();
		ac2.setAccno(222);
		ac2.setName("aaa");
		ac2.setBalance(89000);
		
		Account ac3=new Account();
		ac3.setAccno(333);
		ac3.setName("Kirshna");
		ac3.setBalance(70000);
		
		accounts.add(ac1);
		accounts.add(ac2);
		accounts.add(ac3);
		
		request.setAttribute("accounts", accounts);
		RequestDispatcher rd=request.getRequestDispatcher("bank.jsp");
		rd.forward(request, response);
	}

}
