<%@ Page Title="" Language="C#" MasterPageFile="~/dir1/Admin/dashboard.master" AutoEventWireup="true" CodeFile="find_student.aspx.cs" Inherits="dir1_Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form runat="server">

    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">&nbsp; Student Detail</h1>
                </div>
            </div>
        <div class="col-lg-12">
              

                    <div class="row">
                     <div class="col-sm-12"><center><asp:TextBox ID="txtid" class="form-control" runat="server"></asp:TextBox></center></div>
                                             <div class="col-sm-12"><br /></div>
                         <div class="col-sm-12"><center><center><asp:Button ID="btnshow" runat="server" Text="Show" class="btn btn-info btn-round"/></center></div>
                                             <div class="col-sm-12"><br /></div>

                        <div class="col-sm-12">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-6"><center>
                     <asp:Image ID="Image1" runat="server" class="img-circle" height="200" width="200" /></center>
                            </div>
                            </div>

                     <div class="col-sm-12"><br /></div>
                        <div class="col-sm-12">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-2"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                            <div class="col-sm-4"><asp:Label ID="lblname" runat="server" Text=""></asp:Label></div>
                           
                            </div>
                                             <div class="col-sm-12"><br /></div>


                        <div class="col-sm-12">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-2"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div>
                            <div class="col-sm-4"><asp:Label ID="lblid" runat="server" Text=""></asp:Label></div>
                            
                            </div>
                                             <div class="col-sm-12"><br /></div>


                        <div class="col-sm-12">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-2"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></div>
                            <div class="col-sm-4"><asp:Label ID="lblenrol" runat="server" Text=""></asp:Label></div>
                            
                            </div>
                                             <div class="col-sm-12"><br /></div>


                        <div class="col-sm-12">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-2"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></div>
                            <div class="col-sm-4"><asp:Label ID="lblemail" runat="server" Text=""></asp:Label></div>
                            </div>

                                             <div class="col-sm-12"><br /></div>

                            

                        <div class="col-sm-12">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-2"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></div>
                            <div class="col-sm-4"><asp:Label ID="lblmob" runat="server" Text=""></asp:Label></div>
                            </div>

                                             <div class="col-sm-12"><br /></div>

                            

                        <div class="col-sm-12">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-2"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></div>
                            <div class="col-sm-4"><asp:Label ID="lblbr" runat="server" Text=""></asp:Label></div>
                            </div>

                                             <div class="col-sm-12"><br /></div>

                            

                        <div class="col-sm-12">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-2"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></div>
                            <div class="col-sm-4"><asp:Label ID="lblsem" runat="server" Text=""></asp:Label></div>
                            </div>

                                             <div class="col-sm-12"><br /></div>

                            

                        <div class="col-sm-12">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-2"<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></div>
                            <div class="col-sm-4"><asp:Label ID="lbladd" runat="server" Text=""></asp:Label></div>
                            </div>

                                             <div class="col-sm-12"><br /></div>

                            

                        <div class="col-sm-12">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-2"><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></div>
                            <div class="col-sm-4"><asp:Label ID="lblct" runat="server" Text=""></asp:Label></div>
                            </div>
                            
                                             <div class="col-sm-12"><br /></div>


                        <div class="col-sm-12">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-2"><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></div>
                            <div class="col-sm-4"><asp:Label ID="lblst" runat="server" Text=""></asp:Label></div>
                            </div>
                            
                                             <div class="col-sm-12"><br /></div>


                        <div class="col-sm-12">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-2"><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></div>
                            <div class="col-sm-4"><asp:Label ID="lbldob" runat="server" Text=""></asp:Label></div>
                            </div>
                            


                    </div>
                    </div>
                </div>
            </div>
         </form>

</asp:Content>

