<%@ Page Title="" Language="C#" MasterPageFile="~/dir1/Admin/dashboard.master" AutoEventWireup="true" CodeFile="admin_change_pass.aspx.cs" Inherits="dir1_Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form runat="server">
    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Admin Password</h1>
                </div>
            </div>
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Change Password
                 </div>
                <div class="panel-body">
                    <div class="row">

                          <div class="col-sm-12">
                            <div class="col-sm-2"></div>
                                <div class="col-sm-4"><label>Email ID</label>
                                    <asp:TextBox ID="txtemail" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtemail" runat="server" ErrorMessage="* Enter Email ID"></asp:RequiredFieldValidator>

                                </div>
                              <div class="col-sm-4"><label>Your Current Password</label>
                                    <asp:TextBox ID="txtcupass" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtcupass" runat="server" ErrorMessage="* Enter your current password"></asp:RequiredFieldValidator>

                                </div>

                      
                        <div class="col-sm-12">
                            <div class="col-sm-2"></div>
                                <div class="col-sm-4"><label>New Password</label>
                                    <asp:TextBox ID="txtpass" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtpass" runat="server" ErrorMessage="* Enter Password"></asp:RequiredFieldValidator>

                                </div>
                               <div class="col-sm-4"> 
                                <label>Confirm New Password</label>
                                    <asp:TextBox ID="txtcpass" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtcpass" runat="server" ErrorMessage="* Enter Confirm Password"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" ForeColor="Red" ControlToCompare="txtpass" ControlToValidate="txtcpass" runat="server" ErrorMessage="Password dosen't match"></asp:CompareValidator>
                               </div>    
                                 </div>               
                           
                            <div class="col-sm-12">
                             <center><asp:Button ID="btnsubmit" runat="server" Text="Change Password" class="btn btn-info" OnClick="btnsubmit_Click" /></center>   
                            </div>
                        


                                                
                                </div>
                            </div>
                       </div>
     </form>
</asp:Content>

