<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Id is :  <%=Session["Id"] %> -->

    <br /><br />
    <h1 id="titlu" style="color:blue;text-align:center;font-size:300%;font-style:oblique;font-weight:bold;background-color:white;font-family:Lobster;" runat="server" /> </h1>
    <img id="imagine"  class="img-thumbnail" runat="server" style="width:20%;height:15%;margin-left:40%;display:inline-block;" />


    <br /> <br />
    <div class="container">
      <div class="jumbotron" id="continut" runat="server" />       
      </div>
    </div>

    <div id="comentarii"  runat="server" />
        <h1 style="text-align:center;font-style:oblique;color:blue;background-color:white;font-family:Lobster;"> <b> Comentarii </b> </h1>
    </div>
    <br />

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div style="margin-left:13%;margin-top:1%;border: 2px solid deepskyblue;  border-radius: 25px; background-color:white;margin-right:13%;">
                <p style="margin-left:5%;color:darkblue;margin-top:0.5%;font-size:150%;font-style:oblique;font-weight:bold;font-family:Lobster;"> <%# Eval("Comentariu") %> </p>
                <p style="margin-left:5%;font-style:oblique;font-weight:bold;"> Comentariu adaugat de <%# Eval("Utilizator") %> la data de <%# Eval("Data") %> </p>
                 <asp:LinkButton ID="LinkButton1" runat="server" Visible="false"  CommandArgument='<%#Eval("Id") %>' > </asp:LinkButton>

                <asp:LoginView ID="LoginView2" runat="server" >
                      <RoleGroups>
                          <asp:RoleGroup Roles="Administrator">
                              <ContentTemplate>
                                  <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("Id") %>' OnClick="Button2_Click"   OnClientClick="return confirm('Sunteti sigur ca doriti sa stergeti comentariul?');" >  <span  class="glyphicon glyphicon-remove" style="color:red;font-size:2.5vw;margin-left:35vw;margin-top:-10vw;" ></span></asp:LinkButton>
                              </ContentTemplate>
                          </asp:RoleGroup>
                      </RoleGroups>
               </asp:LoginView> 

               <asp:LinkButton ID="LinkButton3" runat="server" Visible="false" CommandArgument='<%#Eval("Id") %>' CommandName='<%#Eval("Utilizator") %>' OnClick="Button3_Click"   OnClientClick="return confirm('Sunteti sigur ca doriti sa stergeti comentariul?');" >  <span  class="glyphicon glyphicon-remove" style="color:red;font-size:2.5vw;margin-left:35vw;margin-top:-10vw;" ></span></asp:LinkButton>
            
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <br /> 
    <asp:LoginView ID = "loginView1" runat="server" >
        <LoggedInTemplate>
            <div id="adaugaComentarii">
                <p style="margin-left:13%;">
                    <asp:TextBox ID="comentariuNou" style="font-style:oblique;color:blue;font-weight:bold;" runat="server" BorderColor="#000099" BorderStyle="Solid" BorderWidth="2px" Columns="100" Rows="5" TextMode="MultiLine"></asp:TextBox>
                </p>

                <div class="container" style="margin-left:12%;font-style:oblique;">
                    <div class="btn-group">
                    <asp:Button ID="Button2" runat="server" Text="Adauga Comentariu" OnClick="Button1_Click" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" />
                    </div>
                </div>
                <br /> <br />

                <div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="text-align:center;">
                    <div class="modal-dialog">
                        <asp:ScriptManager runat="server"></asp:ScriptManager>
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
        </LoggedInTemplate>
        <AnonymousTemplate>
            <div style="font-style:oblique;color:blue;font-weight:bold;text-align:center;background-color:white;opacity:0.9;font-family:Lobster;font-size:150%;">
            <h3> Doriti sa adaugati un comentariu?</h3>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Inregistrati-va</asp:LinkButton>
            </div>
            <br />
        </AnonymousTemplate>
    </asp:LoginView>     

</asp:Content>

