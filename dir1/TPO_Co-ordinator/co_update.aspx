<%@ Page Title="" Language="C#" MasterPageFile="~/dir1/TPO_Co-ordinator/dashboard.master" AutoEventWireup="true" CodeFile="co_update.aspx.cs" Inherits="dir1_TPO_Co_ordinator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Registration</h1>
                </div>
            </div>
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                   TPO CO-Ordinator Registration
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>Name</label>
                                    <asp:TextBox ID="txtname" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtname" runat="server" ErrorMessage="* Enter name"></asp:RequiredFieldValidator>

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
                            <div class="col-sm-6"><label>Email ID</label>
                                    <asp:TextBox ID="txtmail" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtmail" runat="server" ErrorMessage="* Enter email id"></asp:RequiredFieldValidator>

                            </div>
                            <div class="col-sm-6">
                                 <label>Branch</label>
                                     <asp:DropDownList ID="ddlbname" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="br_sname" DataValueField="br_sname"></asp:DropDownList> 
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placement_managementConnectionString %>" SelectCommand="SELECT [br_sname] FROM [branch]"></asp:SqlDataSource>
                          
                            </div>
                        </div>
            

                         <div class="col-sm-12">
                            &nbsp;
                        </div>
                         <div class="col-sm-12">
                            &nbsp;
                        </div>                       
                           
                            <div class="col-sm-12">
                             <center><asp:Button ID="btnupdate" runat="server" Text="Submit" class="btn btn-info" OnClick="btnupdate_Click" /></center>   
                            </div>
                          <div class="col-sm-12">
                             <center><asp:Label ID="Label1" runat="server" Text=""></asp:Label></center>   
                            </div>
                                                  
                                </div>
                            </div>
                       </div>
            
            </form>
</asp:Content>

