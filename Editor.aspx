<%@ Page Title="Editor" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Editor.aspx.cs" Inherits="Editor" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 style="text-align:center; margin-bottom:20px;font-style:oblique;font-weight:bold;margin-top:2.3%;color:blue;background-color:white;font-family:Lobster;"> Adaugati un articol </h1>
    <br />

    <aside style="float:left;margin-right:50px;">
    <p style="background-color:white;">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:TextBox ID="TextBox1" Rows="21" Columns="120" TextMode="MultiLine" runat="server" BorderStyle="Solid" BorderColor="#000099" BorderWidth="20px" BackColor="White"></asp:TextBox>

    <asp:HtmlEditorExtender ID="HtmlEditorExtender1" EnableSanitization="false" TargetControlID="TextBox1" runat="server"></asp:HtmlEditorExtender>
    <br />

     <div id="mesajDiv" style="visibility:hidden;" runat="server" />
        <strong id="mesaj" runat="server" style="margin-left:35%;font-size:200%;color:red;"/>  </strong>
     </div>

    </p>
    </aside>


    <div>

     <div class="form-group" style="text-align:center;">
      <label for="titlu" style="font-size:170%;color:blue;font-style:oblique;font-weight:bold;text-align:center;">Titlul Articolului: </label>
      <input type="text" class="form-control" id="titlu" runat="server" style="width:34%;color:blue;font-style:oblique;font-weight:bold;margin-left:33vw;" runat="server">
    </div>
    
    </br><br />

    <h3 style="text-align:center;font-style:oblique;color:blue;font-weight:bold;">
         Selectati o poza reprezentativa:
        <asp:FileUpload ID="FileUpload1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" />
    </h3>

    <br />
    <br />

    <h3 style="font-style:oblique;text-align:center;color:blue;margin-right:10%;font-weight:bold;">
        Alegeti o categorie: 
        <asp:DropDownList ID="DropDownList1" onclick="this.size=1;" onMouseOver="this.size=4;" onMouseOut="this.size=1;" style="position:absolute;" runat="server" >
            <asp:ListItem>Lifestyle</asp:ListItem>
            <asp:ListItem>Alimentatie</asp:ListItem>
            <asp:ListItem>Preventie</asp:ListItem>
            <asp:ListItem>Copilul tau</asp:ListItem>
            <asp:ListItem>Cardiologie</asp:ListItem>
            <asp:ListItem>Stomatologie</asp:ListItem> 
            <asp:ListItem>Psihologie</asp:ListItem>
            <asp:ListItem>Interventii</asp:ListItem>
            <asp:ListItem>Alergologie</asp:ListItem>
            <asp:ListItem>Tehnologie</asp:ListItem>
        </asp:DropDownList>
    </h3>
        

    <div class="container" style="text-align:center;margin-top:6.5%;margin-left:22%;">
         <div class="btn-group">
        <asp:Button ID="Button1" runat="server" Text="Adaugare Articol" OnClick="Button1_Click" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" />
         </div>
    </div>

    <div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="text-align:center;">
    <div class="modal-dialog">
        <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><asp:Label ID="lblModalTitle" runat="server" Text=""></asp:Label></h4>
                    </div>
                    <div class="modal-body" style="color:red;font-style:oblique;font-size:30px;">
                        <asp:Label ID="lblModalBody" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-info" data-dismiss="modal" aria-hidden="true">Inchidere</button>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </div>

  </div>
  <br />
    

</asp:Content>

