<%@ Page Title="" Language="C#" MasterPageFile="~/dir1/TPO/dashboard.master" AutoEventWireup="true" CodeFile="profile_pic.aspx.cs" Inherits="dir1_TPO_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


   <script type="text/css">
        .img-circle {
             border-radius: 50%;
            }
    </script>
<script>
  var loadFile = function(event) {
    var reader = new FileReader();
    reader.onload = function(){
      var output = document.getElementById('imgview');
      output.src = reader.result;
    };
    reader.readAsDataURL(event.target.files[0]);
  };
</script>

    <form runat="server">
         <div class="row">
              <div class="col-lg-12">
                    <h1 class="page-header">&nbsp;Profile Picture</h1>
                </div>
                        <div class="col-sm-12">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4"><center>
                                <label>Select Profile Picture</label><br /><br />
                                    <img class="img-circle" id="imgview" height="300" width="300"/></center>
                            </div>
                        </div>
                         <div class="col-sm-12"><br /><br /></div>

                        <div class="col-sm-12">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4"><center>
                                        <asp:FileUpload ID="FileUpload1" runat="server"  onchange="loadFile(event)" />

                            </div>
                        </div>
                       <div class="col-sm-12"><br /><br /></div>
                        <div class="col-sm-12">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4"><center>
                                <center><asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-info btn-round" OnClick="btnsubmit_Click"/><br />

                            </div>
                        </div>
        </form>
</asp:Content>

