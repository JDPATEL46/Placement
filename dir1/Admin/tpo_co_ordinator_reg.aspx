<%@ Page Title="" Language="C#" MasterPageFile="~/dir1/Admin/dashboard.master" AutoEventWireup="true" CodeFile="tpo_co_ordinator_reg.aspx.cs" Inherits="dir1_Admin_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                            &nbsp;
                        </div>                       
                           
                            <div class="col-sm-12">
                             <center><asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-info btn-round" OnClick="btnsubmit_Click" /><br />

                             </center>   
                            </div>
                                  
                                </div>
                            </div>
                       </div>


             <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Update or Delete Traning Placement Cell Co-ordinator Data
                 </div>
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="co_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="co_name" HeaderText="Name" SortExpression="co_name" />
                        <asp:BoundField DataField="co_email" HeaderText="Email ID" SortExpression="co_email" />
                        <asp:BoundField DataField="co_cno" HeaderText="Contact No." SortExpression="co_cno" />
                        <asp:BoundField DataField="co_pwd" HeaderText="Password" SortExpression="co_pwd" />
                        <asp:BoundField DataField="br_id" HeaderText="Branch" SortExpression="br_id" />
                       
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:placement_managementConnectionString %>" SelectCommand="SELECT * FROM [coordinator]"
                     UpdateCommand="UPDATE coordinator SET co_name = @co_name, co_email=@co_email, co_cno=@co_cno, co_pwd=@co_pwd, br_id=@br_id WHERE co_id = @co_id"
                     DeleteCommand="DELETE coordinator WHERE co_id=@co_id"></asp:SqlDataSource>
                </div>
             </div>
            </form>
    <!--<asp:HyperLinkField  DataNavigateUrlFields="co_id" DataNavigateUrlFormatString="tpo_co_ordinator_reg.aspx?co_id={0}"   HeaderText="UPDATE" Text="&lt;img src='../../assets/img/edit.png' height=25 alt='UPDATE' /&gt;" />
                        <asp:HyperLinkField  DataNavigateUrlFields="co_id" DataNavigateUrlFormatString="tpo_co_ordinator_reg.aspx?dflag=1&co_id={0}" HeaderText="Delete" Text="&lt;img src='../../assets/img/delete.png' height=25 alt='DELETE' /&gt;" />-->

           
  
</asp:Content>
 

