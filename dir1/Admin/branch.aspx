<%@ Page Title="" Language="C#" MasterPageFile="~/dir1/Admin/dashboard.master" AutoEventWireup="true" CodeFile="branch.aspx.cs" Inherits="dir1_Admin_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <form runat="server">
    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Branch</h1>
                </div>
            </div>
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Branch and Short form 
                 </div>
                <div class="panel-body">
                    <div class="row">

                        <div class="col-sm-12">
                            <div class="col-sm-2"></div>
                                <div class="col-sm-4"><label>Branch Name</label>
                                    <asp:TextBox ID="txtbname" class="form-control" runat="server"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtbname" runat="server" ErrorMessage="* Enter branch name"></asp:RequiredFieldValidator>

                                </div>
                               <div class="col-sm-4"> 
                                <label>Branch Short Name</label>
                                    <asp:TextBox ID="txtbsname" class="form-control" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtbsname" runat="server" ErrorMessage="* Enter branch short name"></asp:RequiredFieldValidator>

                               </div>    
                                 </div>

                         <div class="col-sm-12">
                            &nbsp;
                        </div>
                         <div class="col-sm-12">
                            &nbsp;
                        </div>                       
                           
                            <div class="col-sm-12">
                             <center><asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-info" OnClick="btnsubmit_Click" /></center>   
                            </div>
                         <div class="col-sm-12">
                             <center><asp:Label ID="Label1" runat="server" Text=""></asp:Label></center>   
                            </div>


                                                
                                </div>
                            </div>
                       </div>

              <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Branch and Short form 
                 </div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="br_id" DataSourceID="branch" CssClass="table table-striped" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="br_id" HeaderText="ID" SortExpression="br_id" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="br_name" HeaderText="Branch Name" SortExpression="br_name" />
                        <asp:BoundField DataField="br_sname" HeaderText="Branch Short Name" SortExpression="br_sname" />
                        <asp:CommandField CausesValidation="False" ShowEditButton="True" HeaderText="Update Data" />
                        <asp:CommandField HeaderText="Delete Data" ShowDeleteButton="True" ShowHeader="True" />
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
                <asp:SqlDataSource ID="branch" runat="server" ConnectionString="<%$ ConnectionStrings:placement_managementConnectionString %>" SelectCommand="SELECT * FROM [branch]" UpdateCommand="UPDATE branch SET br_name = @br_name, br_sname= @br_sname WHERE br_id = @br_id" DeleteCommand="DELETE branch WHERE br_id=@br_id"></asp:SqlDataSource>
                </div>
                  </div>
         </form>  
</asp:Content>

