<%@ Page Title="" Language="C#" MasterPageFile="~/dir1/Admin/dashboard.master" AutoEventWireup="true" CodeFile="subjects.aspx.cs" Inherits="dir1_Admin_Default" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form runat="server">

    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Subject</h1>
                </div>
            </div>
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Add Subject Name & Code
                 </div>
                <div class="panel-body">
                    <div class="row">




                        <div class="col-sm-12">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-4"><label>Branch Name</label>
                                <asp:DropDownList ID="ddlbname" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="br_sname" DataValueField="br_sname"></asp:DropDownList> 
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placement_managementConnectionString %>" SelectCommand="SELECT [br_sname] FROM [branch]"></asp:SqlDataSource>
                            </div>
                            <div class="col-sm-4"><label>Semester</label>
                                 <asp:DropDownList ID="ddlsem" class="form-control" runat="server">
                                     <asp:ListItem>1</asp:ListItem>
                                     <asp:ListItem>2</asp:ListItem>
                                     <asp:ListItem>3</asp:ListItem>
                                     <asp:ListItem>4</asp:ListItem>
                                     <asp:ListItem>5</asp:ListItem>
                                     <asp:ListItem>6</asp:ListItem>
                                     <asp:ListItem>7</asp:ListItem>
                                     <asp:ListItem>8</asp:ListItem>
                                </asp:DropDownList> </div>    
                            
                         <div class="col-sm-12">
                            &nbsp;
                        </div>


                            <div class="col-sm-12">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-2"> <label>Subject Code</label>
                                    <asp:TextBox ID="txtcode" class="form-control" runat="server"></asp:TextBox>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtcode" runat="server" ErrorMessage="* Enter subject code"></asp:RequiredFieldValidator>

                            </div>
                            <div class="col-sm-6"><label>Subject Name</label>
                                    <asp:TextBox ID="txtsubject" class="form-control" runat="server"></asp:TextBox>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtsubject" runat="server" ErrorMessage="* Enter subject name"></asp:RequiredFieldValidator>

                            </div></div>



                         <div class="col-sm-12">
                            &nbsp;
                        </div>  
                             <div class="col-sm-12">
                            &nbsp;
                        </div>                     
                           
                            <div class="col-sm-12">
                             <center><asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-info" OnClick="btnsubmit_Click"  /></center>   
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
                    Update Subjects 
                 </div>
                <center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" CellPadding="4" DataKeyNames="sub_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="sub_id" HeaderText="Subject ID" InsertVisible="False" ReadOnly="True" SortExpression="sub_id" />
                        <asp:BoundField DataField="sem" HeaderText="Semester" SortExpression="sem" />
                        <asp:BoundField DataField="br_id" HeaderText="Branch" SortExpression="br_id" />
                        <asp:BoundField DataField="sub_code" HeaderText="Subject Code" SortExpression="sub_code" />
                        <asp:BoundField DataField="sub_name" HeaderText="Subject Name" SortExpression="sub_name" />
                        <asp:CommandField CausesValidation="False" HeaderText="Update Data" ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:placement_managementConnectionString %>" SelectCommand="SELECT * FROM [subject]" UpdateCommand="UPDATE subject SET  sem= @sem, br_id=@br_id, sub_code = @sub_code, sub_name=@sub_name WHERE sub_id = @sub_id" DeleteCommand="DELETE subject WHERE sub_id=@sub_id"></asp:SqlDataSource>
                </div>
                            </center>
                  </div>
                       
                      
           
  </form>
    </asp:Content>


