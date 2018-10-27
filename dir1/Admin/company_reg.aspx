<%@ Page Title="" Language="C#" MasterPageFile="~/dir1/Admin/dashboard.master" AutoEventWireup="true" CodeFile="company_reg.aspx.cs" Inherits="dir1_TPO_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">   
         <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Registration</h1>
                </div>
            </div>
        <div class="col-lg-12" style="left: -12px; top: 2px">
            <div class="panel panel-default">
                <div class="panel-heading">
                   Comapany Registration
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
                             <center><asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-info btn-round" OnClick="btnsubmit_Click" /><br />    
                             </center>   
                            </div>
                         <div class="col-sm-12">
                            &nbsp;
                        </div>  
                        
                                
                                </div>
                            </div>
                       </div>




            <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                   Update Company's Data
                </div>

                <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" DataKeyNames="com_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="com_name" HeaderText="Company Name" SortExpression="com_name" />
                        <asp:BoundField DataField="com_email" HeaderText="Email ID" SortExpression="com_email" />
                        <asp:BoundField DataField="com_cno" HeaderText="Contact No." SortExpression="com_cno" />
                        <asp:BoundField DataField="c_id" HeaderText="City" SortExpression="c_id" />
                        <asp:BoundField DataField="st_id" HeaderText="State" SortExpression="st_id" />
                        <asp:BoundField DataField="com_pwd" HeaderText="Password" SortExpression="com_pwd" />
                        <asp:BoundField DataField="com_info" HeaderText="Information" SortExpression="com_info" />
                        <asp:BoundField DataField="com_add" HeaderText="Address" SortExpression="com_add" />
                        <asp:TemplateField>
                            <ItemTemplate>
                             <asp:LinkButton ID="btnsubmit" runat="server" Text="Update" class="btn btn-info btn-round" CausesValidation="false" PostBackUrl='<%# "~/dir1/admin/company_update.aspx?com_id="+ Eval("com_id") %>'/ OnClick="btnsubmit_Click2">
                            </ItemTemplate>
                        </asp:TemplateField>
                        
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placement_managementConnectionString %>" SelectCommand="SELECT * FROM [company]"
                    UpdateCommand="UPDATE company SET com_name = @com_name, com_email = @com_email, com_cno = @com_cno, c_id = @c_id, st_id = @st_id, com_pwd = @com_pwd, com_info = @com_info, com_add=@com_add WHERE com_id = @com_id"
                    DeleteCommand="DELETE company WHERE com_id=@com_id"></asp:SqlDataSource>
                </div>
                </div>
            </form>

          <!-- <asp:HyperLinkField  DataNavigateUrlFields="com_id" DataNavigateUrlFormatString="company_reg.aspx?com_id={0}" HeaderText="UPDATE" Text="&lt;img src='../../assets/img/edit.png' height=25 alt='UPDATE' /&gt;" />
                        <asp:HyperLinkField  DataNavigateUrlFields="com_id" DataNavigateUrlFormatString="company_reg.aspx?dflag=1&com_id={0}" HeaderText="Delete" Text="&lt;img src='../../assets/img/delete.png' height=25 alt='DELETE' /&gt;" />-->

  
</asp:Content>

