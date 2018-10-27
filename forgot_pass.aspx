<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgot_pass.aspx.cs" Inherits="forgot_pass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>BVM Engineering College</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<link href="dir2/design/css/bootstrap-responsive.css" rel="stylesheet" />
	<link href="dir2/design/css/loginfor.css" rel="stylesheet" />
	<link href="dir2/design/color/default.css" rel="stylesheet" />
	<link rel="shortcut icon" href="dir2/design/img/favicon.ico" />

</head>
<body>
    <div class="navbar-wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<!-- Responsive navbar -->
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
				</a>
					<h1 class="brand"><a href="index.html">Placement Management</a></h1>
					<!-- navigation -->
					<nav class="pull-right nav-collapse collapse">
						<button id="btnlog" class="btn btn-light action-button" onclick="window.top.location = 'Login.aspx';">
                                    Login
                                </button>
					</nav>
				</div>
			</div>
		</div>
	</div>


            <section id="maincontent" class="inner">
		<div class="container">

                <section class="spacer green">
		<div class="container">
			<div class="row">
				<div class="span12 aligncenter flyUp">
					<h2 class="pagetitle"><strong>Forgot Password</strong></h2>
				</div>
			</div>
		</div>
	    </section>

    <div>
        
       <form method="post" runat="server">

           <div class="span12">
               <div class="span3"></div>
                <div class="span6">
               </div>
               <br />
               </div>

           <div class="span12">
               <div class="span3"></div>
                <div class="span6">Email ID<br /> <asp:TextBox ID="txtemail" runat="server" Height="40px" Width="400px" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="* Enter the name" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
               <br />
               </div>
           <div class="span12">
               <div class="span3"></div>
                <div class="span6">Select User<br />
                <asp:DropDownList ID="utype" Height="40px" Width="415px" runat="server" class="form-control">
                    <asp:ListItem Value="A">Admin</asp:ListItem>
                    <asp:ListItem Value="T">T.P.O.</asp:ListItem>
                    <asp:ListItem Value="C">TPO Co-ordinator</asp:ListItem>
                    <asp:ListItem Value="S">Student</asp:ListItem>
                    <asp:ListItem Value="CO">Company</asp:ListItem>
               </asp:DropDownList></div>
            </div>
          
           <div class="span12"></div>
           <div class="span12">
               <div class="span3"></div>
                <div class="span4"><center><asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn-danger" Height="50px" Width="200px" OnClick="Button1_Click" /></center>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
            </div>

                
                
                
                
                   
          </form>
    </div>
           
            </div>
                </section>
          


    <footer>
		<div class="container">
			<div class="row">
				<div class="span6 offset3">
					<ul class="social-networks">
						<li><a href="https://www.instagram.com/bvm_students/"><i class="icon-circled icon-bgdark icon-instagram icon-2x"></i></a></li>
						<li><a href="https://twitter.com/VishvakarmaBVM"><i class="icon-circled icon-bgdark icon-twitter icon-2x"></i></a></li>
						<li><a href=""><i class="icon-circled icon-bgdark icon-dribbble icon-2x"></i></a></li>
						<li><a href="#"><i class="icon-circled icon-bgdark icon-pinterest icon-2x"></i></a></li>
					</ul>
					<p class="copyright">
						
					</p>
				</div>
			</div>
		</div>
		<!-- ./container -->
	</footer>

</body>
</html>
