<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup2.aspx.cs" Inherits="signup2" %>

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
    <script type="text/javascript">
        function PreviewImage() {
            var oFReader = new FileReader();
            oFReader.readAsDataURL(document.getElementById("FileUpload1").files[0]);

            oFReader.onload = function (oFREvent) {
                document.getElementById("Image1").src = oFREvent.target.result;
            };
        };
    </script>
    <script type="text/css">
        .img-circle {
             border-radius: 50%;
            }
    </script>

</head>
<body>
    <div class="navbar-wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<!-- Responsive navbar -->
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
				</a>
					<h1 class="brand"><a href="dir2/home.aspx">Placement Management</a></h1>
					<!-- navigation -->
					<nav class="pull-right nav-collapse collapse">
						<ul id="menu-main" class="nav">
							<li><a title="team" href="index.html#about">About</a></li>
							<li><a title="services" href="index.html#services">Services</a></li>
							<li><a title="works" href="index.html#works">Works</a></li>
							<li><a title="blog" href="index.html#blog">Blog</a></li>
							<li><a title="contact" href="index.html#contact">Contact</a></li>
							<li><a href="page.html">Page</a></li>
						</ul>
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
					<h2 class="pagetitle"><strong>Signup</strong></h2>
				</div>
			</div>
		</div>
	    </section>

    <div>
        
       <form method="post" runat="server">

           <div class="span12">
               <div class="span3"></div>
                <div class="span4"><center>Select Your Profile Picture <br />
                        <asp:Image ID="Image1" runat="server" style="width: 200px; height: 200px;" class="img-circle"></asp:Image>
                        <asp:FileUpload ID="FileUpload1" runat="server" onchange="PreviewImage();"></asp:FileUpload>
                                   </center>
                    
               </div>
               </div>

           <div class="span12">
               <div class="span3"></div>
                <div class="span6">Name<br /> <asp:TextBox ID="txtname" runat="server" Height="40px" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="* Enter the name" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
               <br />
               </div>
           <div class="span12">
               <div class="span3"></div>
                <div class="span6">ID no<br /><asp:TextBox ID="txtid" runat="server" Height="40px" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtid" ErrorMessage="* Enter the id no" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
            </div>
           <div class="span12">
               <div class="span3"></div>
                <div class="span6">Email<br /><asp:TextBox ID="txtemail" runat="server" Height="40px" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="* Enter the email id" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtemail" runat="server" ForeColor="Red" ErrorMessage="* Enter Valid Email ID" ValidationExpression="^[a-z0-9](\.?[a-z0-9]){5,}@g(oogle)?mail\.com$"></asp:RegularExpressionValidator>
               </div>
               </div>
           <div class="span12">
               <div class="span3"></div>
                <div class="span6">Mobile<br /><asp:TextBox ID="txtmob" runat="server" Height="40px" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtmob" ErrorMessage="*Enter the mobile no" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmob" ValidationExpression="[0-9]{10}" ErrorMessage="*Enter valid 10-digit number" ForeColor="Red"></asp:RegularExpressionValidator>
                    <br/>
                    <br />
               </div>
            </div>
           <div class="span12">
               <div class="span3"></div>
                <div class="span6">Branch<br /><asp:DropDownList ID="ddlbranch" Height="40px" Width="400px" runat="server" DataSourceID="SqlDataSource1" DataTextField="br_name" DataValueField="br_id">
                                            </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placement_managementConnectionString %>" SelectCommand="SELECT * FROM [branch]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlbranch" ErrorMessage="*Select branch" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
               </div>
           <div class="span12">
               <div class="span3"></div>
                <div class="span6">Semester<br /><asp:DropDownList ID="ddlsem" runat="server" Height="40px" Width="400px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                     </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlsem" ErrorMessage="*Select semester" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
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
