     <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>


<!DOCTYPE HTML>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>BVM Engineering College</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link href="dir2/design/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="dir2/design/css/loginfor.css" rel="stylesheet">
	<link href="dir2/design/color/default.css" rel="stylesheet">
	<link rel="shortcut icon" href="dir2/design/img/favicon.ico">
</head>

<body>
	<!-- navbar -->
	<div class="navbar-wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<h1 class="brand"><a href="index.html">Placement Management</a></h1>
					<!-- navigation -->
					<nav class="pull-right nav-collapse collapse">
						<button id="btnlog" class="btn btn-light action-button" onclick="window.top.location = 'dir2/home.aspx';">
                                    Home
                                </button>
                            </li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- Header area -->
	<div id="header-wrapper" class="header-slider">
		<header class="clearfix">
			<div class="logo">
				<img src="dir2/design/img/bvm.png" height="200" width="200" alt="" />
			</div>
			<div class="container">
				<div class="row">
					<div class="span12">
						<div id="main-flexslider" class="flexslider">
							<ul class="slides">
								<li>
									<p class="home-slide-content">
										<strong>Birla Vishwakarma</strong> Mahavidyalaya
									</p>
								</li>
								<li>
									<p class="home-slide-content">
										<strong>An Autonomous Institution</strong> 
									</p>
								</li>
								<li>
									<p class="home-slide-content">
										<strong>Placement</strong> Management
									</p>
								</li>
							</ul>
						</div>
						<!-- end slider -->

                        <br /><br />
       <form method="post" runat="server"> 

                     <div class="span12">
           <center>
           <asp:Label ID="Label1" runat="server" Font-Size="35" Text="Login" Font-Bold="true" ForeColor="White"></asp:Label></center>
                         </div>
           <div class="span12"><br /></div>
           <div class="span3"></div>
           <div class="span6">
                <asp:TextBox ID="txtuname" Height="40px" Width="500px" placeholder="Username" runat="server"></asp:TextBox>
           </div>
           <div class="span12"><br /></div>
           <div class="span3"></div>
           <div class="span6">
                <asp:TextBox ID="txtpass" Height="40px" Width="500px" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
           </div>
           <div class="span12"><br /></div>

          <div class="span3"></div>
           <div class="span6">
          <asp:Label ID="Label2" runat="server" Font-Size="15" Text="select user" Font-Bold="true" ForeColor="White"></asp:Label></center>

                <asp:DropDownList ID="utype" Height="50px" Width="515px" runat="server" class="form-control">
                    <asp:ListItem Value="A">Admin</asp:ListItem>
                    <asp:ListItem Value="T" Selected="True">T.P.O.</asp:ListItem>
                    <asp:ListItem Value="C">TPO Co-ordinator</asp:ListItem>
                    <asp:ListItem Value="S">Student</asp:ListItem>
                    <asp:ListItem Value="CO">Company</asp:ListItem>
               </asp:DropDownList>
            </div>

            <div class="span12"><br /></div>
            <div class="span3"></div>
            <div class="span6">
                <center>
                <asp:Button ID="txtbtn" class="btn btn-primary btn-block" runat="server" Text="Login" OnClick="txtbtn_Click" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="white" ControlToValidate="txtuname" runat="server" ErrorMessage="* Enter Username"></asp:RequiredFieldValidator><br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="white" ControlToValidate="txtpass" runat="server" ErrorMessage="* Enter Password"></asp:RequiredFieldValidator>
              </center>
           </div>
           <div class="span12"><br /></div>
           <div class="span3"></div>
           <div class="span6">
               <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
           </div>

           <div class="span12"><br /></div>
           <div class="span3"></div>
           <div class="span6">
               <asp:LinkButton ID="LinkButton1" runat="server" href="forgot_pass.aspx" ForeColor="White"><b>Forgot Password ?</b></asp:LinkButton>
           </div>
           </form>
           </div>


				</div>
			</div>
		</header>
	</div>
	
    
    	
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
	<a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bgdark icon-2x"></i></a>
	<script src="dir2/design/js/jquery.js"></script>
	<script src="dir2/design/js/jquery.scrollTo.js"></script>
	<script src="dir2/design/js/jquery.nav.js"></script>
	<script src="dir2/design/js/jquery.localScroll.js"></script>
	<script src="dir2/design/js/bootstrap.js"></script>
	<script src="dir2/design/js/jquery.prettyPhoto.js"></script>
	<script src="dir2/design/js/isotope.js"></script>
	<script src="dir2/design/js/jquery.flexslider.js"></script>
	<script src="dir2/design/js/inview.js"></script>
	<script src="dir2/design/js/animate.js"></script>
	<script src="dir2/design/js/custom.js"></script>
	<script src="dir2/design/contactform/contactform.js"></script>

</body>

</html>
