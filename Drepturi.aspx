<%@ Page Title="Utilizatori" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Drepturi.aspx.cs" Inherits="Drepturi" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        table{
            table-layout: fixed;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <br /> <br />
    <div style="margin-left:10%;margin-right:10%;">

              <div class="container" style="text-align:center;width:100%;background-color:#acf!important;color:blue;opacity:0.90;font-style:oblique;font-weight:bold;">
                  <h2 style="color:red;"><b>Utilizatori si Editori </b></h2>   
                  <table class="table table-hover table-bordered" style="border:4px white solid;">
                    <thead style="font-size:135%;">
                      <tr class="separating_line">
                        <th style="text-align:center;color:red;">Utilizator</th>
                        <th style="text-align:center;color:red;">Rol</th>
                        <th style="text-align:center;color:red;">Ultima activitate</th>
                        <th style="text-align:center;color:red;">Actualizare rol</th>
                        <th style="text-align:center;color:red;">Stergere</th>
                      </tr>
                    </thead>
                    <tbody>
                       <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td> <%# Eval("UserName") %></td>
                                    <td> <%# Eval("RoleName") %></td>
                                    <td> <%# Eval("LastActivityDate") %></td>
                                    <td> <asp:Button style="width:9vw;font-size:1vw;" ID="Button1" class="btn btn-success" runat="server" Text="Actualizare" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" CommandArgument='<%#Eval("UserId") %>'  OnClick="Button1_Click" /> </td>
                                    <td> <asp:Button style="width:9vw;font-size:1vw;" ID="Button2" class="btn btn-danger" runat="server" Text="Stergere"  BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" CommandArgument='<%#Eval("UserId") %>' OnClick="Button2_Click" OnClientClick="javascript:return confirm('Sunteti sigur ca doriti sa stergeti utilizatorul?');" /> </td>
                                </tr>
                             </ItemTemplate>                    
                        </asp:Repeater>
                    </tbody>
                  </table>        
                </div>

             <br />
             <div id="actualizare" visible="false" runat="server" style="background-color:white;text-align:center;opacity:0.9;font-style:oblique;font-weight:bold;color:blue;">
                 <h3 id="nouRol" style="margin-top:2%;font-weight:bold;" runat="server"> </h3>
                 <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="RoleName" DataValueField="RoleId"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [RoleId], [RoleName] FROM [Roles] Order by RoleName ASC"></asp:SqlDataSource>
                 <br /> <br />
                 <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Salvare" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" OnClick="Button3_Click"  style="margin-bottom:2%;" data-toggle="modal" data-target="#myModal" />
             </div>

    </div>

     <div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="text-align:center;">
            <div class="modal-dialog">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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

</asp:Content>

