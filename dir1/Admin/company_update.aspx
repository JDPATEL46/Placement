<%@ Page Title="" Language="C#" MasterPageFile="~/dir1/Admin/dashboard.master" AutoEventWireup="true" CodeFile="company_update.aspx.cs" Inherits="dir1_Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <form runat="server">
     <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Update</h1>
                </div>
            </div>
        <div class="col-lg-12" style="left: -12px; top: 2px">
            <div class="panel panel-default">
                <div class="panel-heading">
                   Update Company
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>Company Name</label>
                                    <asp:TextBox ID="txtname" class="form-control" runat="server"></asp:TextBox>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtname" runat="server" ErrorMessage="* Enter comapny name"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-sm-6">
                                  <label>Contact</label>
                                    <asp:TextBox ID="txtcont" class="form-control" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtcont" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcont" ErrorMessage="validate only 10 digit" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                            
                            </div>
                        </div>

                        <div class="col-sm-12">
                            &nbsp;
                        </div>

                        <div class="col-sm-12">
                            <div class="col-sm-12">
                                <label>Address</label>
                                <asp:TextBox ID="txtadd" class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtadd" runat="server" ErrorMessage="* Enter address"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                         <div class="col-sm-12">
                            &nbsp;
                        </div>

                       
                        <div class="col-sm-12">
                            <div class="col-sm-6"><label>State</label>
                              <asp:DropDownList ID="ddlstate" runat="server" class="form-control" DataTextField="st_name" DataValueField="st_name" AutoPostBack="True"></asp:DropDownList>
                            </div>
                            <div class="col-sm-6"><label>City</label>
                                    <asp:DropDownList ID="ddlcity" runat="server" class="form-control" DataTextField="ct_name" DataValueField="ct_name"></asp:DropDownList>

                                
                            </div>
                            
                        </div>


                         <div class="col-sm-12">
                            &nbsp;
                        </div>

                        <div class="col-sm-12">
                            <div class="col-sm-12">
                                <label>Company Detail</label>
                                <asp:TextBox ID="txtdetail" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ForeColor="Red" ControlToValidate="txtdetail" runat="server" ErrorMessage="* Enter company detail"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                         <div class="col-sm-12">
                            <div class="col-sm-4"><label>Email ID</label>
                                    <asp:TextBox ID="txtemail" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="txtemail" runat="server" ErrorMessage="* Enter email id"></asp:RequiredFieldValidator>

                            </div> 
                        </div>


                        <div class="col-sm-12">
                            &nbsp;
                        </div>               

                        

                        
                       
                         <div class="col-sm-12">
                            &nbsp;
                        </div>                       
                            <div class="col-sm-12">
                             <center><asp:Button ID="btnsubmit" runat="server" Text="Update" class="btn btn-danger btn-round" OnClick="btnsubmit_Click" /><br />    
                             </center>   
                            </div>
                         <div class="col-sm-12">
                            &nbsp;
                        </div>  
                        
                                
                                </div>
                            </div>
                       </div>

    </form>
</asp:Content>

