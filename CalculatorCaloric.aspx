<%@ Page Title="Calculator Caloric" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CalculatorCaloric.aspx.cs" Inherits="CalculatorCaloric"  %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        table{
            table-layout: fixed;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />

    <asp:LinkButton ID="LinkButton1"  style="color:red;font-style:oblique;font-weight:bold;text-align:center;font-size:350%;margin-left:44vw;font-family:Lobster;" runat="server" OnClick="LinkButton1_Click">Alimente</asp:LinkButton>
    <br />
    <asp:LinkButton ID="LinkButton2"  style="color:red;font-style:oblique;font-weight:bold;text-align:center;font-size:350%;margin-left:44vw;font-family:Lobster;" runat="server" OnClick="LinkButton2_Click">Istoric</asp:LinkButton>

    <br />
    <br />

    <div id="calculatorcal" runat="server">
    <div class="input-group" style="width:24%;margin-left:35%;text-align:center;">
                        <input style="margin-left:1vw;margin-top:1%;height:2.6vw;color:blue;font-style:oblique;font-weight:bold;font-size:1.3vw;" type="text" class="form-control" placeholder="Cautati un aliment" name="srch-term" id="search" runat="server" />
                       <p style="margin-left:100%;height:2.2vw;">
                               <asp:Button ID="Button2" style="height:2.9vw;font-size:1vw;" runat="server" Text="Cautare" OnClick="Button2_Click" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" />
                       </p>                 
    </div>

    <div id="categorii" style="color:blue;font-style:oblique;font-weight:bold;text-align:center;">
    <h2 style="font-size:2vw;" ><b> Alegeti categoria: </b> </h2>
    <asp:DropDownList ID="DropDownList1"  onclick="this.size=1;" onMouseOver="this.size=5;" onMouseOut="this.size=1;" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Legume</asp:ListItem> 
            <asp:ListItem>Ciuperci</asp:ListItem>
            <asp:ListItem>Boboase</asp:ListItem>
            <asp:ListItem>Fructe</asp:ListItem>
            <asp:ListItem>Fructe uscate</asp:ListItem>
            <asp:ListItem>Seminte si fructe oleaginoase</asp:ListItem> 
            <asp:ListItem>Oua</asp:ListItem>
            <asp:ListItem>Lapte si derivate</asp:ListItem>
            <asp:ListItem>Branzeturi</asp:ListItem>
            <asp:ListItem>Peste si derivate</asp:ListItem>
            <asp:ListItem>Carne si derivate</asp:ListItem>
            <asp:ListItem>Mezeluri</asp:ListItem>
            <asp:ListItem>Paine si preparate din faina</asp:ListItem>
            <asp:ListItem>Cereale</asp:ListItem>
            <asp:ListItem>Dulciuri si produse de patiserie</asp:ListItem>
            <asp:ListItem>Grasimi</asp:ListItem>
            <asp:ListItem>Bauturi</asp:ListItem>
    </asp:DropDownList>
    <br />
    </div>

    <br />

    <div class="container" id="alimente" style="text-align:center;background-color:#acf!important;color:blue;opacity:0.90;font-style:oblique;font-weight:bold;" runat="server">
        <br />
        <table class="table table-hover table-bordered" style="border:4px white solid;">
         <thead style="font-size:135%;">
             <tr class="separating_line">
                        <th style="text-align:center;color:red;">Denumire</th>
                        <th style="text-align:center;color:red;">Calorii/100gr</th>
                        <th style="text-align:center;color:red;">Cantitate consumata</th>
                        <th style="text-align:center;color:red;">Adaugare</th>
             </tr>
        </thead>
        <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                 <tr>
                   <td> <%# Eval("Denumire") %></td>
                   <td> <%# Eval("Calorii") %></td>
                   <td style="font-size:1vw;width:1vw;"> <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" EnableViewState="true" ></asp:TextBox> gr 
                       <div class="alert alert-danger alert-dismissable fade in" Visible="false" id="alertmes"  runat="server" style="align-content:center;width:100%;">
                               <a href="#" class="close" data-dismiss="alert" aria-label="close"  runat="server">&times;</a>
                              <strong style="font-style:oblique;" id="mesajCompletNeg" runat="server">   Va rugam sa completati cantitatea consumata!  </strong>
                        </div> 
                   </td> 
                   <td> <asp:Button ID="Button1" style="width:9vw;font-size:1vw;" class="btn btn-success" runat="server" Text="Adaugare" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" CommandArgument='<%#Eval("Id") %>' OnClick="Button1_Click" /> 
                   <div class="alert alert-success alert-dismissable" Visible="false" id="succesmes" runat="server" style="align-content:center;width:100%;">
                     <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                     <strong> Alimentul a fost adaugat cu succes! </strong>
                   </div>
                   </td>
                 </tr>
            </ItemTemplate>
        </asp:Repeater>
        </tbody>
        </table>
    </div>
    </div>

    <div id="istoric" visible="false" runat="server">

        <div style="margin-left:20%;margin-right:20%;">

         <div style="font-style:oblique;color:blue;font-weight:bold;text-align:center;"> 
         <h1 style="font-family:Lobster;"> <b> Alimente consumate la o anumita data: </b> </h1>
         <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
         </div>
         <br />

         <div style="font-style:oblique;text-align:center;">
                    <div class="btn-group">
                    <asp:Button ID="Button1" runat="server" Text="Afisare Alimente" OnClick="Button3_Click" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1" />
                    </div>
         </div>
            
     <br />

              <div class="container" visible="false" id="alimConsum" runat="server" style="text-align:center;width:100%;background-color:#acf!important;color:blue;opacity:0.90;font-style:oblique;font-weight:bold;">
                  <h2 style="color:red;font-size:1.7vw;"><b>Alimente Consumate </b></h2>   
                  <table class="table table-hover table-bordered" style="border:4px white solid;">
                    <thead style="font-size:135%;">
                      <tr class="separating_line">
                        <th style="text-align:center;color:red;font-size:1.2vw;">Denumire</th>
                        <th style="text-align:center;color:red;font-size:1.2vw;">Cantitate</th>
                        <th style="text-align:center;color:red;font-size:1.2vw;">Calorii</th>
                        <th style="text-align:center;color:red;font-size:1.2vw;">Eliminare</th>
                      </tr>
                    </thead>
                    <tbody>
                       <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td style="font-size:1vw;"> <%# Eval("Denumire") %></td>
                                    <td style="font-size:1vw;"> <%# Eval("Gramaj") %></td>
                                    <td style="font-size:1vw;"> <%# Eval("Calorii") %></td>
                                    <td style="font-size:1vw;"> <asp:Button ID="Button2" style="width:9vw;font-size:1vw;" class="btn btn-danger" runat="server" Text="Eliminare"  BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" CommandArgument='<%#Eval("Id") %>'  OnClick="Button4_Click"  OnClientClick="javascript:return confirm('Sunteti sigur ca doriti sa eliminati alimentul?');" /> </td>
                                </tr>
                             </ItemTemplate>                    
                        </asp:Repeater>
                    </tbody>
                  </table>
                 <h2 style="color:green;font-size:2vw;" id="total" runat="server">   </h2>        
                </div>



         </div>

    <div style="background-color:white;opacity:0.8;">
         <h1 style="font-style:oblique;color:blue;text-align:center;background-color:white;font-family:Lobster;"> <b> Numar de calorii consumate intr-o anumita perioada </b> </h1>
         <br />

         <div style="font-style:oblique;color:blue;margin-left:44.5vw;font-weight:bold;display:inline-block;"> 
         <h3> <b> Data Inceput: </b> </h3>
         <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
         </div>
         <br />

         <div style="font-style:oblique;color:blue;margin-left:44.5vw;font-weight:bold;display:inline-block;"> 
         <h3> <b> Data Sfarsit: </b> </h3>
         <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
         </div>
         <br />
         <br />

           <div style="font-style:oblique;text-align:center;">
                    <div class="btn-group">
                    <asp:Button ID="Button3" runat="server" Text="Afisare" OnClick="Button5_Click" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1" />
                    </div>
           </div>
     <br />
    </div>

       <br />
       <div style="margin-left:9%;">
        <asp:Chart ID="Chart1" runat="server" Palette="BrightPastel" Width="1250px" Height="500px" Visible="false"> 
            <Titles>
                <asp:Title Font="Times New Roman,30pt,style=Bold,Italic" Name="Title1" 
                    Text="Evolutia Numarului de Calorii Consumate">
                </asp:Title>
            </Titles>
            <Series> 
                <asp:Series Name="Series1" Font="Times New Roman,20pt,style=Bold,Italic"
                    XValueMember="Data" YValueMembers="Valoare" ChartType="Column"> 
                </asp:Series> 
            </Series> 
            <ChartAreas> 
                <asp:ChartArea Name="ChartArea1" IsSameFontSizeForAllAxes="true"> 
                </asp:ChartArea> 
            </ChartAreas> 
        </asp:Chart> 
       </div>

        <br />
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

    <br />

</asp:Content>