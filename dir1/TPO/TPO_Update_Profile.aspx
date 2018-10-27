<%@ Page Title="" Language="C#" MasterPageFile="~/dir1/TPO/dashboard.master" AutoEventWireup="true" CodeFile="TPO_Update_Profile.aspx.cs" Inherits="dir1_TPO_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">&nbsp; Traning & Placement Co-Ordinator : Update Profile</h1>
                </div>
            </div>
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                   Update Profile</div>
                <div class="panel-body">
                 <form runat="server">             

                    <div class="row">
                            <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>Name</label>
                                    <asp:TextBox ID="txtname" class="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtname" runat="server" ErrorMessage="* Enter name"></asp:RequiredFieldValidator>

                            </div>
                            <div class="col-sm-6">
                                  <label>Designation</label>
                                    <asp:TextBox ID="txtprofile" class="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtprofile" runat="server" ErrorMessage="* Enter profile"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="col-sm-12">
                            &nbsp;
                        </div>

                        <div class="col-sm-12">
                            <div class="col-sm-6"><label>Qualification</label>
                                    <asp:TextBox ID="txtqul" class="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtqul" runat="server" ErrorMessage="* Enter qulification"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-sm-6">
                                 <label>Contact</label>
                                    <asp:TextBox ID="txtmob" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtmob" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmob" ErrorMessage="validate only 10 digit" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

                            </div>
                        </div>

                         <div class="col-sm-12">
                            &nbsp;
                        </div>

                  
                        <div class="col-sm-12">
                             <div class="col-sm-4"><label>Email ID</label>
                                    <asp:TextBox ID="txtemail" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="txtemail" runat="server" ErrorMessage="* Enter mail"></asp:RequiredFieldValidator>
                              </div>
                        </div>

                         <div class="col-sm-12">
                            &nbsp;
                        </div>


                        <div class="col-sm-12">
                           

                            </div>
                        </div>

                            <div class="col-sm-12">
                             <center><asp:Button ID="btnupdate" runat="server" Text="Update" class="btn btn-info" OnClick="btnupdate_Click" /></center>   
                            </div>

                             <div class="col-sm-12">
                             <center><asp:Label ID="Label1" runat="server" Text=""></asp:Label></center>   
                            </div>
                     </form>
                        </div>
                      
                                                            
                                </div>
                            </div>
 
                       </div>

</asp:Content>

