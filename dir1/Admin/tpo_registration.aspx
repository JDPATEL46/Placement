<%@ Page Title="" Language="C#" MasterPageFile="~/dir1/Admin/dashboard.master" AutoEventWireup="true" CodeFile="tpo_registration.aspx.cs" Inherits="dir1_Admin_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form runat="server">

    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">&nbsp; Registration</h1>
                </div>
            </div>
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Traning & Placement Officer Registration</div>
                <div class="panel-body">
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
                            <div class="col-sm-4"><label>Qualification</label>
                                    <asp:TextBox ID="txtqul" class="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtqul" runat="server" ErrorMessage="* Enter qulification"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-sm-4">
                                 <label>Contact</label>
                                    <asp:TextBox ID="txtmob" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtmob" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmob" ErrorMessage="validate only 10 digit" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

                            </div>
                            <div class="col-sm-4"><label>Email ID</label>
                                    <asp:TextBox ID="txtemail" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="txtemail" runat="server" ErrorMessage="* Enter mail"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        </div>

                         <div class="col-sm-12">
                            &nbsp;
                        </div>
                         <div class="col-sm-12">
                            &nbsp;
                        </div>                       
                           
                            <div class="col-sm-12">
                             <center><asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-info" OnClick="btnsubmit_Click1" /></center>   
                            </div>


                        </div>
                    <div class="col-sm-12">

                    </div>
                                                  
                                </div>
                            </div>
                       </div>


            
              <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Update or Delete Traning Placement Officer Data
                 </div>
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="tpo_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="tpo_name" HeaderText="Name" SortExpression="tpo_name" />
                        <asp:BoundField DataField="tpo_email" HeaderText="Email ID" SortExpression="tpo_email" />
                        <asp:BoundField DataField="tpo_cno" HeaderText="Contact No." SortExpression="tpo_cno" />
                        <asp:BoundField DataField="tpo_profile" HeaderText="Designation" SortExpression="tpo_profile" />
                        <asp:BoundField DataField="tpo_quali" HeaderText="Qualification" SortExpression="tpo_quali" />
                        <asp:CommandField CausesValidation="False" HeaderText="Update Data" ShowEditButton="True" />
                        <asp:CommandField HeaderText="Delete Data" ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placement_managementConnectionString %>" SelectCommand="SELECT * FROM [tpo]"></asp:SqlDataSource>
                </div>
                  </div>
           </form>
  
</asp:Content>

