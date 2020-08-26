<%@ Page Title="" Language="C#" MasterPageFile="~/Modules/Administration/Administration.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Covid19PatientsTracing.Modules.Administration.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


	<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />

    <link href="../../Content/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css" rel="stylesheet" />
    <link href="../../Content/css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper" >
		<div class="inner" >
          
			<form action="">
				<h3>Registration Form</h3>
				<div class="alert alert-danger" runat="server" id="infor">
  <strong>Error!</strong><asp:Label ID="Label2" runat="server" Text=""></asp:Label>
</div>
				<div class="form-group">
					<div class="form-wrapper">
						<label for="">Full Names:</label>
                        <asp:TextBox ID="TextBox1" placeholder="Enter full names" runat="server" class="form-control"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required"
                                        ForeColor="Red" ValidationGroup="nl"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ErrorMessage="Invalid characters" runat="server"
                                        ValidationGroup="nl" Visible="true" ControlToValidate="TextBox1" ValidationExpression="^[A-Za-z]{1,50}$" SetFocusOnError="true" CssClass="validator" ForeColor="Red"> </asp:RegularExpressionValidator>
					</div>
					<div class="form-wrapper">
						<label for="">Phone number:</label>
                        <asp:TextBox ID="TextBox2" placeholder="Enter phone number" runat="server" class="form-control"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field is required"
                                        ForeColor="Red" ValidationGroup="nl"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" ErrorMessage="Invalid characters" runat="server"
                                        ValidationGroup="nl" Visible="true" ControlToValidate="TextBox2" ValidationExpression="^[0-9]{1,15}$" SetFocusOnError="true" CssClass="validator" ForeColor="Red"> </asp:RegularExpressionValidator>
					
					</div>
				</div>
				<div class="form-wrapper">
					<label for="">Email:</label>
                    <asp:TextBox ID="TextBox3" Placeholder="Enter email " runat="server" class="form-control"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="This field is required"
                                        ForeColor="Red" ValidationGroup="nl"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" ErrorMessage="Invalid characters" runat="server"
                                        ValidationGroup="nl" Visible="true" ControlToValidate="TextBox3" ValidationExpression="^[a-z@]{1,50}$" SetFocusOnError="true" CssClass="validator" ForeColor="Red"> </asp:RegularExpressionValidator>
					
					
					
					
				</div>
				<div class="form-wrapper">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:COVID19ConnectionString %>" SelectCommand="SELECT * FROM [Administrators]"></asp:SqlDataSource>
					<label for="">Username:</label>
				 <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter username" class="form-control"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="This field is required"
                                        ForeColor="Red" ValidationGroup="nl"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" ErrorMessage="Invalid characters" runat="server"
                                        ValidationGroup="nl" Visible="true" ControlToValidate="TextBox4" ValidationExpression="^[a-zA-Z]{1,20}$" SetFocusOnError="true" CssClass="validator" ForeColor="Red"> </asp:RegularExpressionValidator>
					
					
				</div>
				<div class="form-wrapper">
					<label for="">Password:</label>
				 <asp:TextBox ID="TextBox5" runat="server"  placeholder="Enter password" class="form-control"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="This field is required"
                                        ForeColor="Red" ValidationGroup="nl"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" ErrorMessage="Invalid characters" runat="server"
                                        ValidationGroup="nl" Visible="true" ControlToValidate="TextBox5" ValidationExpression="^[a-zA-Z0-9]{1,20}$" SetFocusOnError="true" CssClass="validator" ForeColor="Red"> </asp:RegularExpressionValidator>
					
				</div>
				<div class="form-wrapper">
					<label for="">Department:</label>
				<asp:DropDownList runat="server" id="DropDownList1" CssClass="form-control">
                   

                  <asp:ListItem>Nurse</asp:ListItem>
                  
                  <asp:ListItem >Radiology</asp:ListItem>
                  <asp:ListItem >Labaratory</asp:ListItem>
                 

               </asp:DropDownList>

				</div>
				<div class="form-wrapper">
					<label for="">Staff number:</label>
				 <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter staff number" class="form-control"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="This field is required"
                                        ForeColor="Red" ValidationGroup="nl"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" Display="Dynamic" ErrorMessage="Invalid characters" runat="server"
                                        ValidationGroup="nl" Visible="true" ControlToValidate="TextBox7" ValidationExpression="^[0-9]{1,20}$" SetFocusOnError="true" CssClass="validator" ForeColor="Red"> </asp:RegularExpressionValidator>
					
				</div>
				<div class="form-wrapper">
					<label for="">Role:</label>
				 <asp:DropDownList id="role" runat="server"  CssClass="form-control">
                   

                  <asp:ListItem>Admin</asp:ListItem>
                  <asp:ListItem>SuperAdmin</asp:ListItem>
                 

               </asp:DropDownList>

				</div>
				
                <asp:Button ID="Button1" runat="server" CssClass="button" ValidationGroup="nl" Text="Submit" OnClick="Button1_Click" />	
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
			</form>
		</div>
	</div>

</asp:Content>
