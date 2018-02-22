package com.cts.BNK.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.dao.GeneralDao;
import com.cts.BNK.dao.UpdateCustinfoDao;
import com.cts.BNK.model.BNKstatement;
import com.cts.BNK.model.CustomerLoginModel;
import com.cts.BNK.model.CustomerModel;
import com.cts.BNK.model.LoanModel;
import com.cts.BNK.model.Model;
import com.cts.BNK.model.Registration;
import com.cts.BNK.model.TransModel;
import com.cts.BNK.util.BankFactory;

/**
 * Servlet implementation class BaseController
 */
public class BaseController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		
		
		// Block for Registration
		if (session.getAttribute("Formname").equals("Registration")) {
			Registration reg = (Registration) session.getAttribute("customer");
			session.setAttribute("custfname", reg.getFname());
			session.setAttribute("custlname", reg.getLname());
			InterfaceBank ibank = BankFactory.getClass("REGISTRATION");
			try {
				String k = ibank.save(reg);
				session.setAttribute("customer_id", k);
				if (k != null) {
					response.sendRedirect("RegistrationSuccess.jsp");
				} else {
					response.sendRedirect("RegistrationError.jsp");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		
		//Block for LoanApply
		else if (session.getAttribute("Formname").equals("Loan")) {
			LoanModel reg = (LoanModel) session.getAttribute("customer_loan");
			InterfaceBank ibank = BankFactory.getClass("LoanModel");
			try {
				String k = ibank.save(reg);
				session.setAttribute("loan_id", k);
				if (k != null) {
					response.sendRedirect("LoanSuccess.jsp");
				} else {
					response.sendRedirect("LoanError.jsp");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		//Block For Registration Page redirect
		else if (session.getAttribute("Formname").equals("Registrationpage")) {
			response.sendRedirect("Registration.jsp");
		}
		
		
		
		//Block for Transaction page
		else if(session.getAttribute("Formname").equals("Transaction"))
		{
		TransModel mode=(TransModel)session.getAttribute("customer_trans");
		InterfaceBank ibank = BankFactory.getClass("Transaction");
		try {
			String k = ibank.save(mode);
			session.setAttribute("trans_id", k);
			GeneralDao dao=new GeneralDao();
			String username=(String)session.getAttribute("uname");
			String custbal=dao.getCustBalance(username);
			session.setAttribute("custbal", custbal);
			if (k != null) {
				
				response.sendRedirect("TransactionSuccess.jsp");
			} else {
				response.sendRedirect("TransactionError.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}	
		

		
		// Block for Customer Login
		else if (session.getAttribute("Formname").equals("Login")) {
			InterfaceBank impBank = BankFactory.getClass("CustomerLogin");
			String UserName = (String) session.getAttribute("id"), password = (String) session
					.getAttribute("pass");
			GeneralDao dao=new GeneralDao();
			String cus_id=dao.getCustomerId(UserName);
			String fname=dao.getFirstName(UserName);
			String lname=dao.getLastName(UserName);
			String custbal=dao.getCustBalance(UserName);
			String initbal=dao.getInitBalance(UserName);
			String accnum=dao.getAccNumber(UserName);
			session.setAttribute("uname", UserName);
			session.setAttribute("cus_id", cus_id); //Extract Customer Id
			session.setAttribute("fname", fname);   //Extract Customer First name
			session.setAttribute("lname", lname);	//Extract Customer Last name
			session.setAttribute("uname",UserName);	//Extract Customer UserName
			session.setAttribute("custbal",custbal);//Extract Customer Customer Balance
			session.setAttribute("initbal",initbal);//Extract Customer Initial Account balance
			session.setAttribute("accnum",accnum);	//Extract Customer Account Number
			CustomerLoginModel baseModel = new com.cts.BNK.model.CustomerLoginModel(
					UserName, password);
			if (impBank.login(baseModel) != null) {
				{

					if (baseModel.getStatus().equalsIgnoreCase("yes")) {
						session.setAttribute("formname", "");
						session.setAttribute("state", "customer");
						session.setAttribute("user", baseModel);
						response.sendRedirect("CustomerHomePage.jsp");
					} else if (baseModel.getStatus()
							.equalsIgnoreCase("pending")) {
						session.setAttribute("formname", "");
						session.setAttribute("state", "customerPending");
						response.sendRedirect("CustomerPending.jsp");
					} else {
						session.setAttribute("formname", "");
						session.setAttribute("state", "customerRejected");
						response.sendRedirect("CustomerDeleted.jsp");
					}
				}
			} else {
				session.setAttribute("msg", "Incorect Login ID/ password");
				response.sendRedirect("Login.jsp");
			}
		}

		
		
		
		// Block for Login Session Management
		else if (session.getAttribute("Formname").equals("LoginState")) {
			if (session.getAttribute("state") != null
					&& session.getAttribute("state").equals("customer")) {
				response.sendRedirect("CustomerHomePage.jsp");
			} else if (session.getAttribute("state") != null
					&& session.getAttribute("state").equals("customerPending")) {
				response.sendRedirect("CustomerPending.jsp");
			} else if (session.getAttribute("state") != null
					&& session.getAttribute("state").equals("customerRejected")) {
				response.sendRedirect("CustomerDeleted.jsp");
			} else if (((String) session.getAttribute("state")).equals("admin")) {
				response.sendRedirect("AdminPage.jsp");
			} else {
				session.setAttribute("Formname", "HomePage.jsp");

			}

		}

		
		
		
		// Block for Administrator Log in
		else if (session.getAttribute("Formname").equals("AdminLogin")) {
			InterfaceBank impBank = BankFactory.getClass("AdminLogin");
			String UserName = (String) session.getAttribute("id"), password = (String) session
					.getAttribute("pass");
			Model baseModel = new com.cts.BNK.model.AdminLoginModel(UserName,
					password);
			if (impBank.login(baseModel) != null) {
				session.setAttribute("formname", "");
				session.setAttribute("state", "admin");
				response.sendRedirect("AdminPage.jsp");
			} else {
				session.setAttribute("msg", "Incorect Login ID/ password");
				response.sendRedirect("AdminLogin.jsp");
			}
		}

		
		
		
		// Block for Admin New Customer Application
		else if (session.getAttribute("Formname").equals("NEW REGISTRATION")) {
			InterfaceBank ibank = BankFactory.getClass("Adminnewcustomer");
			try {
				List<Model> newcust = ibank.display(null);
				session.setAttribute("NewCustomerList", newcust);
				response.sendRedirect("NewCustomerRegistration.jsp");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		
		
		// Block for viewing the pending customer registration
		else if (session.getAttribute("Formname").equals("ViewRecord")) {
			InterfaceBank ibank = BankFactory.getClass("ViewNewCustomerRecord");
			try {
				Model model = new CustomerModel(
						(String) request.getParameter("cid"));
				Model list = ibank.displayrecords(model);
				Registration r = (Registration) list;
				System.out.println(r.getFname());
				session.setAttribute("c_id", request.getParameter("cid"));
				session.setAttribute("listobj", list);
				response.sendRedirect("ViewRecord.jsp");
			} catch (Exception e) {
			}
		}

		
		
		// Block for approving the customer registration
		else if (session.getAttribute("Formname").equals("ApproveNewCust")) {
			// System.out.println("ji");
			try {
				InterfaceBank interfaceBank = BankFactory
						.getClass("ApproveCustomer");
				Model model = new CustomerModel(
						(String) session.getAttribute("c_id"));
				interfaceBank.update(model);
				System.out.println("Updated");
				session.setAttribute("Formname", "NEW REGISTRATION");
				response.sendRedirect("BaseController");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		
		
		// Block for rejecting the customer registration
		else if (session.getAttribute("Formname").equals("RejectNewCust")) {
			try {
				InterfaceBank ibank = BankFactory.getClass("Reject Customer");
				Model model = new CustomerModel(
						(String) session.getAttribute("c_id"));
				ibank.update(model);
				System.out.println("Updated");
				session.setAttribute("Formname", "NEW REGISTRATION");
				response.sendRedirect("BaseController");

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		
		
		
		// Block for Rejected Customers Last Login
		else if (session.getAttribute("Formname").equals("RejectedCustomer")) {
			try {
				InterfaceBank interfaceBank = BankFactory
						.getClass("Reject Customer");
				CustomerModel customerModel = new CustomerModel(
						(String) session.getAttribute("id"));
				interfaceBank.delete(customerModel);
				response.sendRedirect("LogOutServlet");
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("Error in Rejecting" + e.getMessage());
			}

		}
		
		
		
		
		// Block for logging out
		else if (session.getAttribute("Formname").equals("Logout")) {
			response.sendRedirect("LogOutServlet");
		} else if (session.getAttribute("Formname").equals("BankStatement")) {

			response.sendRedirect("BankStatement.jsp");

		} 
		
		
		
		
		//Block for Bank Statement
		else if (session.getAttribute("Formname").equals(
				"BankStatementmodule")) {
			// System.out.println("Hello");
			BNKstatement obj = (BNKstatement) session
					.getAttribute("stateobject");
			// System.out.println((String) obj.getNumber());
			InterfaceBank ibank = BankFactory.getClass("Bank Statement");
			try {
				List<Model> bankstatementlist = ibank.display(obj);
				// for (Model e : bankstatementlist) {
				// BankStatementGenerationModel k =
				// (BankStatementGenerationModel) e;
				// System.out.println(k.getTransactionId());
				// }
				session.setAttribute("Liststate", bankstatementlist);
				response.sendRedirect("BankStatementView.jsp");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Registration ob=new Registration();
		String cust_id=(String)session.getAttribute("cus_id");
		
		//Block for Update Details
		if(session.getAttribute("Formname1").equals("Updateinfo"))
		{
			ob.setIdtype(request.getParameter("idtype"));
			ob.setIdno(request.getParameter("idno"));
			ob.setRefname(request.getParameter("refname"));
			ob.setRefaccno(request.getParameter("refaccno"));
			ob.setRefacadd(request.getParameter("refacadd"));
			ob.setContactno(request.getParameter("contactno"));
			ob.setEmail(request.getParameter("email"));
			ob.setMarital(request.getParameter("marital"));
			ob.setGuardiantype(request.getParameter("guardiantype"));
			ob.setGuardianname(request.getParameter("guardianname"));
			ob.setAltaddress(request.getParameter("altaddress"));
			ob.setAltcontactno(request.getParameter("altcontactno"));
			UpdateCustinfoDao up=new UpdateCustinfoDao();
			String s=up.update(ob,cust_id);
			if(s!=null)
			{
				session.setAttribute("updateresult", "success");
				response.sendRedirect("UpdateDetailResult.jsp");
			}
			else
			{
				session.setAttribute("updateresult", "error");
				response.sendRedirect("UpdateDetailResult.jsp");
			}
			}
	}
	
	
}
