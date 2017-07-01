<%@ Page Title="Articole" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h1 style="color:blue;font-style:oblique;margin-top:3%;text-align:center;background-color:white;font-weight:bold;font-size:2.4vw;font-family:Lobster;" id="notfound" runat="server"/>  </h1>
    <br />

    <div id="sortare" runat="server" visible="false">
    <h3 style="margin-left:47vw;color:blue;font-weight:bold;font-family:Lobster;font-size:2vw;margin-top:-1vw;"> Sortare: </h3>
    <p style="margin-left:47vw;">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" style="font-size:1.2vw;" OnSelectedIndexChanged="schimb_sortare">
            <asp:ListItem Selected="True" Value="Cronologica">Cronologica</asp:ListItem>
            <asp:ListItem Value="Alfabetica">Alfabetica</asp:ListItem>
        </asp:DropDownList>
    </p>
    </div>

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div style="width:85vw;height:20%;margin-top:2%;border:solid 2px;margin-left:8%;background-color:whitesmoke;border-radius:55px;">
                <img src= <%# Eval("Poza") %> style="height:6.5vw;float:left;margin-left:10%;margin-top:0.5%;" />
                
                <h3 style="font-style:oblique;color:deepskyblue;text-align:center;font-weight:bold;font-size:1.5vw;font-family:Lobster;"> <%# Eval("Titlu") %>  </h3>
                   
                <p style="text-align:center;font-size:1vw;">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="True" OnClick="LinkButton1_Click" CommandArgument='<%#Eval("Id") %>' >Citeste articolul</asp:LinkButton>
                </p>

                <h5 style="text-align:center;font-style:oblique;color:black;font-weight:bold;font-size:1.1vw;font-family:Lobster;margin-left:15vw;"/> Articol adaugat la data de <%# Eval("DataAdaugare") %> </h5>

                <asp:LoginView ID="LoginView2" runat="server">
                      <RoleGroups>
                          <asp:RoleGroup Roles="Editor">
                              <ContentTemplate>
                                  <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="Button2_Click"   OnClientClick="return confirm('Sunteti sigur ca doriti sa stergeti articolul?');" >  <span  class="glyphicon glyphicon-remove" style="color:red;font-size:2.5vw;margin-left:48.5vw;" ></span></asp:LinkButton>
                              </ContentTemplate>
                          </asp:RoleGroup>
                      </RoleGroups>
               </asp:LoginView>

            </div>
        </ItemTemplate>
    </asp:Repeater>

    <br />

</asp:Content>

