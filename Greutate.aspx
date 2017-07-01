<%@ Page Title="Greutate" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Greutate.aspx.cs" Inherits="Greutate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <h1 style="color:blue;font-style:oblique;background-color:white;font-weight:bold;text-align:center;font-family:Lobster;"> Monitorizare Greutate </h1>
    <br /> <br />

    <div style="margin-right:30%;margin-left:30%;color:blue;font-style:oblique;font-weight:bold;text-align:center;">
    <div class="form-group">
      <label for="greutate" style="font-size:200%;"> Greutare (in kilograme) </label>
      <input type="number" step="0.1" class="form-control" id="greutate" placeholder="Exemplu: 78,6" runat="server" />
    </div>
    <br />

        <div style="font-style:oblique;text-align:center;">
                    <div class="btn-group">
                    <asp:Button ID="Button2" runat="server" Text="Adaugare" OnClick="Button1_Click" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" />
                    </div>
        </div>

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
     <br /><br />

     <div style="background-color:white;opacity:0.8;">
         <h1 style="font-style:oblique;color:blue;text-align:center;background-color:white;font-family:Lobster;"> <b> Afisare valori dintr-o anumita perioada </b> </h1>
         <br />

         <div style="font-style:oblique;color:blue;margin-left:44.5vw;font-weight:bold;display:inline-block;"> 
         <h3> <b> Data Inceput: </b> </h3>
         <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
         </div>

         <br />
         <div style="font-style:oblique;color:blue;margin-left:44.5vw;font-weight:bold;display:inline-block;"> 
         <h3> <b> Data Sfarsit: </b> </h3>
         <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
         </div>
         <br />
         <br />

           <div style="font-style:oblique;text-align:center;">
                    <div class="btn-group">
                    <asp:Button ID="Button1" runat="server" Text="Afisare" OnClick="Button2_Click" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1" />
                    </div>
           </div>

     <br />
     </div>

    <br /><br />
    <div style="margin-left:9%;">
        <asp:Chart ID="Chart1" runat="server" Palette="BrightPastel" Width="1250px" Height="500px" Visible="false"> 
            <Titles>
                <asp:Title Font="Times New Roman,30pt,style=Bold,Italic" Name="Title1" 
                    Text="Evolutia Greutatii">
                </asp:Title>
            </Titles>
            <Series> 
                <asp:Series Name="Series1" Font="Times New Roman,20pt,style=Bold,Italic"
                    XValueMember="Data" YValueMembers="Valoare" ChartType="Line"> 
                </asp:Series> 
            </Series> 
            <ChartAreas> 
                <asp:ChartArea Name="ChartArea1" IsSameFontSizeForAllAxes="true"> 
                </asp:ChartArea> 
            </ChartAreas> 
        </asp:Chart> 
    </div>

    <br /><br />
    
    <div style="margin-left:20%;margin-right:20%;">
    <div class="container" visible="false" id="tabelGreutate" runat="server" style="text-align:center;width:100%;background-color:#acf!important;color:blue;opacity:0.90;font-style:oblique;font-weight:bold;">
                  <h2 style="color:red;font-size:1.7vw;"><b> Valori inregistrate </b></h2>   
                  <table class="table table-hover table-bordered" style="border:4px white solid;">
                    <thead style="font-size:135%;">
                      <tr class="separating_line">
                        <th style="text-align:center;color:red;font-size:1.2vw;">Valoare</th>
                        <th style="text-align:center;color:red;font-size:1.2vw;">Data</th>
                        <th style="text-align:center;color:red;font-size:1.2vw;">Eliminare</th>
                      </tr>
                    </thead>
                    <tbody>
                       <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td style="font-size:1vw;"> <%# Eval("Valoare") %></td>
                                    <td style="font-size:1vw;"> <%# Eval("Data") %></td>
                                    <td> <asp:Button ID="Button2" style="width:9vw;font-size:1vw;" class="btn btn-danger" runat="server" Text="Eliminare"  BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" CommandArgument='<%#Eval("Id") %>'  OnClick="Button3_Click"  OnClientClick="javascript:return confirm('Sunteti sigur ca doriti sa eliminati valoarea?');" /> </td>
                                </tr>
                             </ItemTemplate>                    
                        </asp:Repeater>
                    </tbody>
                  </table>
                 <h2 style="color:green;font-size:240%;" id="total" runat="server">   </h2>        
     </div>
     </div>

    <br /><br />

</asp:Content>

