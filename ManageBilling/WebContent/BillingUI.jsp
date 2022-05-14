<%@ page import="com.Billing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing</title>
<link rel="stylesheet" href="Views/bootstrap.min.css"> 
<script src="Components/jquery-3.4.1.min.js"></script> 
<script src="Components/billing.js"></script> 
</head>
<body>
<div class="container"> 
	<div class="row">  
		<div class="col-6"> 
			<h1>Billing Manage</h1>
				<form id="formBilling" name="formBilling" method="post" action="BillingUI.jsp">  
					Account No:  
 	 				<input id="bill_acc_no" name="bill_acc_no" type="text"  class="form-control form-control-sm">
					<br>Date:   
  					<input id="bill_date" name="bill_date" type="date" class="form-control form-control-sm">   
  					<br>Email:   
  					<input id="bill_email" name="bill_email" type="text"  class="form-control form-control-sm">
  					<br>Units Total:   
  					<input id="bill_units" name="bill_units" type="text"  class="form-control form-control-sm">
  					<br>Total Amount:   
  					<input id="bill_amount" name="bill_amount" type="text"  class="form-control form-control-sm">
					<br>  
					<input id="btnSave" name="btnSave" type="button" value="SAVE" class="btn btn-primary">  
					<input type="hidden" id="hidBillingIDSave" name="hidBillingIDSave" value=""> 
				</form>
				
				<div id="alertSuccess" class="alert alert-success"> </div>
				
			   <div id="alertError" class="alert alert-danger"></div>
				
			   <br>
				<div id="divBillingGrid">
					<%
					    Billing billingObj = new Billing();
						out.print(billingObj.readBilling());
					%>
				</div>
				
				 
			</div>
		</div>
</div>
 
</body>
</html>