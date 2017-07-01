<%@ Page Title="Autentificare" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Conectare.aspx.cs" Inherits="Conectare"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div class="form-horizontal col-md-12" style="margin-top:3%;">
        <div class="jumbotron" style="margin-top:50px;">
            <div id="conectare">
                <h2 style="font-style:oblique;">  Conectare </h2>
                <br>
                <asp:Login ID="Login1" runat="server" PasswordLabelText="Parola" LoginButtonText="Conectare" UserNameLabelText="Utilizator" TextBoxStyle-CssClass="form-control" TitleText="" DestinationPageUrl="~/Default.aspx"  Font-Size="Large" FailureText="Conectare esuata. Va rugam incercati din nou." FailureTextStyle-CssClass="alert-danger" Font-Bold="True" Font-Italic="True" RememberMeText="Memorare parola" RememberMeSet="False" CheckBoxStyle-HorizontalAlign="Center" FailureTextStyle-HorizontalAlign="Center" FailureTextStyle-VerticalAlign="NotSet" HyperLinkStyle-HorizontalAlign="Center" InstructionTextStyle-HorizontalAlign="Center" LabelStyle-HorizontalAlign="Center" Orientation="Vertical" TextLayout="TextOnLeft" TitleTextStyle-HorizontalAlign="Center" PasswordRequiredErrorMessage="Camp obligatoriu" UserNameRequiredErrorMessage="Camp obligatoriu" LoginButtonStyle-CssClass="center-block" ></asp:Login>
            </div>
        </div>
    </div>

</asp:Content>

