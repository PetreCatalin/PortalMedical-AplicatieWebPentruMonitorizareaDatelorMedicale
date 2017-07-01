<%@ Page Title="Inregistrare" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Inregistrare.aspx.cs" Inherits="Inregistrare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div class="form-horizontal col-md-12" style="margin-top:3%;">
  <div class="jumbotron" style="margin-top:50px;">
       <div id="inregistrare">
       <h2 style="font-style:oblique;">  Creati Un Cont Nou</h2>
             <br>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" UserNameLabelText="Utilizator" ConfirmPasswordLabelText="Confirmare Parola" PasswordLabelText="Parola" CreateUserButtonText="Inregistrare" Font-Size="Large" TextBoxStyle-CssClass="form-control" ConfirmPasswordCompareErrorMessage="Cele doua parole trebuie sa coincida" EmailRegularExpressionErrorMessage="Format invalid de e-mail" EmailRequiredErrorMessage="E-mail obligatoriu" EmailRegularExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?" ContinueButtonText="Continua catre site" DuplicateUserNameErrorMessage="Numele de utilizator este utilizat" InvalidPasswordErrorMessage="Lungimea minima a parolei este de {0} caractere" ContinueDestinationPageUrl="~/Default.aspx" StepStyle-CssClass="form-group" FinishDestinationPageUrl="~/Default.aspx" CompleteSuccessTextStyle-HorizontalAlign="Center" OnCreatedUser="CreateUserWizard1_CreatedUser" EmailLabelText="E-mail" CompleteSuccessTextStyle-CssClass="alert-success" CompleteSuccessText="Contul a fost creat cu succes!" ContinueButtonStyle-CssClass="alert-success" CreateUserButtonStyle-CssClass="center-block" DuplicateEmailErrorMessage="Adresa de E-mail este deja utilizata" ErrorMessageStyle-CssClass="alert-warning" Font-Bold="True" Font-Italic="True" Font-Strikeout="False" ErrorMessageStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HyperLinkStyle-HorizontalAlign="Center" InstructionTextStyle-HorizontalAlign="Center" LabelStyle-HorizontalAlign="Center" NavigationStyle-HorizontalAlign="Center" PasswordHintStyle-HorizontalAlign="Center" SideBarStyle-HorizontalAlign="Center" StepStyle-HorizontalAlign="Center" TitleTextStyle-HorizontalAlign="Center" ContinueButtonType="Link">
                
                <WizardSteps>
                                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" Title="">
                                </asp:CreateUserWizardStep>
              
                <asp:CompleteWizardStep runat="server">
                    <ContentTemplate>
                        <table style="font-size: 100%; font-weight: bold; font-style: italic; text-decoration: none;">
                            <tr>
                                <td align="center">&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" class="alert-success">Contul a fost creat cu succes!</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:LinkButton ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" CssClass="alert-link" ValidationGroup="CreateUserWizard1">Continua catre site</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                                </asp:CompleteWizardStep>
              
                 </WizardSteps>
   
        </asp:CreateUserWizard>
    </div>
   </div>
</div>

</asp:Content>

