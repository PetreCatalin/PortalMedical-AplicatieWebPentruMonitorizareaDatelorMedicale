<%@ Page Title="Articole" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container" style="margin-left:1%;">
      <div class="row">
       <div class="col-2">

    <aside style="float:left;background-color:whitesmoke;height:96vh;width:20%;opacity:0.7;margin-top:-1.6%;" class="col-md-3" runat="server">
        <a href="#" runat="server" onserverclick="Lifestyle_Click"><h1 style="font-style:oblique;text-align:center;font-family:Lobster;font-size:2.2vw;margin-top:25%;"> Lifestyle </h1></a>
        <a href="#" runat="server" onserverclick="Alimentatie_Click"><h1 style="font-style:oblique;text-align:center;margin-top:12%;font-family:Lobster;font-size:2.2vw;"> Alimentatie </h1></a>
        <a href="#" runat="server" onserverclick="Preventie_Click"><h1 style="font-style:oblique;text-align:center;margin-top:12%;font-family:Lobster;font-size:2.2vw;"> Preventie </h1></a>
        <a href="#" runat="server" onserverclick="Copilul_Click"><h1 style="font-style:oblique;text-align:center;margin-top:12%;font-family:Lobster;font-size:2.2vw;"> Copilul tau </h1></a>
        <a href="#" runat="server" onserverclick="Cardiologie_Click"><h1 style="font-style:oblique;text-align:center;margin-top:12%;font-family:Lobster;font-size:2.2vw;"> Cardiologie </h1></a>
        <a href="#" runat="server" onserverclick="Stomatologie_Click"><h1 style="font-style:oblique;text-align:center;margin-top:12%;font-family:Lobster;font-size:2.2vw;"> Stomatologie </h1></a>
        <a href="#" runat="server" onserverclick="Psihologie_Click"><h1 style="font-style:oblique;text-align:center;margin-top:12%;font-family:Lobster;font-size:2.2vw;"> Psihologie </h1></a>
        <a href="#" runat="server" onserverclick="Interventii_Click"><h1 style="font-style:oblique;text-align:center;margin-top:12%;font-family:Lobster;font-size:2.2vw;"> Interventii </h1></a>
        <a href="#" runat="server" onserverclick="Alergologie_Click"><h1 style="font-style:oblique;text-align:center;margin-top:12%;font-family:Lobster;font-size:2.2vw;"> Alergologie </h1></a>
        <a href="#" runat="server" onserverclick="Tehnologie_Click"><h1 style="font-style:oblique;text-align:center;margin-top:12%;font-family:Lobster;margin-bottom:10%;font-size:2.2vw;"> Tehnologie </h1></a>
    </aside>
        </div>
     
     <div class="col-10">
    <h1 id="categorie" runat="server" style="font-style:oblique;color:blue;margin-left:60%;font-weight:bold;margin-top:2%;font-family:Lobster;font-size:3.4vw;">Lifestyle</h1> 

    <h3 style="margin-left:23vw;color:blue;font-weight:bold;font-family:Lobster;font-size:2vw;margin-top:-5vw;"> Sortare: </h3>
    <p style="margin-left:23vw;">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" style="font-size:1.2vw;" OnSelectedIndexChanged="schimb_sortare">
            <asp:ListItem Selected="True" Value="Cronologica">Cronologica</asp:ListItem>
            <asp:ListItem Value="Alfabetica">Alfabetica</asp:ListItem>
        </asp:DropDownList>
    </p>

    <div style="margin-left:20%;">
    <asp:Repeater ID="Repeater1" runat="server" >
        <ItemTemplate>
            <div style="width:70vw;height:20%;margin-top:2%;border:solid 2px;margin-left:10%;background-color:whitesmoke;border-radius:55px;" class="col-md-9">
                <img src= <%# Eval("Poza") %> style="height:8vw;float:left;margin-left:7%;margin-top:0.5%;" />
                
                <h3 style="font-style:oblique;color:deepskyblue;text-align:center;font-weight:bold;font-family:Lobster;font-size:1.5vw;"> <%# Eval("Titlu") %>  </h3>
                   
                <p style="text-align:center;font-size:1vw;">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="True" OnClick="LinkButton1_Click"  CommandArgument='<%#Eval("Id") %>' >Citeste articolul</asp:LinkButton>
                </p>

                <h5 style="text-align:center;font-style:oblique;color:black;font-weight:bold;font-family:Lobster;font-size:1.1vw;margin-left:15vw;"/> Articol adaugat la data de <%# Eval("DataAdaugare") %> </h5>
        
               <asp:LoginView ID="LoginView2" runat="server" >
                      <RoleGroups>
                          <asp:RoleGroup Roles="Editor">
                              <ContentTemplate>
                                  <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="Button2_Click"   OnClientClick="return confirm('Sunteti sigur ca doriti sa stergeti articolul?');" >  <span  class="glyphicon glyphicon-remove" style="color:red;font-size:2.5vw;margin-left:27vw;" ></span></asp:LinkButton>
                              </ContentTemplate>
                          </asp:RoleGroup>
                      </RoleGroups>
               </asp:LoginView> 

            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>
    </div>
    </div>
    </div>

    <br />

</asp:Content>

