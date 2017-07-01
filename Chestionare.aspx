<%@ Page Title="Chestionare" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Chestionare.aspx.cs" Inherits="Chestionare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /> 
     
    <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.4vw;color:blue;"> Algoritmi medicali  </p>         
    <br /> 

    <div style="background-color:azure;">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Chestionar1_Click"> <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:1.8vw;"> 1. Indicele de sanatate al lui Grogono si Woodgate </p> </asp:LinkButton> 
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="Chestionar2_Click"> <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:1.8vw;"> 2. Indicele de calitate a vietii </p> </asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="Chestionar3_Click"> <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:1.8vw;"> 3. Indicele de activitate fizica al unei persoane (FIT Index of Kasari) </p> </asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="Chestionar4_Click"> <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:1.8vw;"> 4. Indicele lui Lee de prezicere a riscului de mortalitate al unei persoana inaintate ca varsta in urmatorii 4 ani </p> </asp:LinkButton>
    </div>

    <br /><br />

    <div class="jumbotron" style="margin-left:6vw;margin-right:6vw;" id="chestionar1" runat="server" visible="false">
         <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.1vw;color:blue;"> Indicele de sanatate al lui Grogono si Woodgate   </p>
         <br />

          <p style="font-style:oblique;margin-left:30vw;color:black;font-weight:bold;font-size:1.4vw;">
            Abilitatea de a munci:
            <asp:DropDownList ID="DropDownList1" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;" runat="server" >
                <asp:ListItem>Normala</asp:ListItem>
                <asp:ListItem>Redusa</asp:ListItem>
                <asp:ListItem>Inexistenta</asp:ListItem>
            </asp:DropDownList>
         </p>

         <p style="font-style:oblique;margin-left:30vw;color:black;font-weight:bold;font-size:1.4vw;">
            Recreere și hobby-uri:
            <asp:DropDownList ID="DropDownList2" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;" runat="server" >
                <asp:ListItem>Normale</asp:ListItem>
                <asp:ListItem>Reduse</asp:ListItem>
                <asp:ListItem>Inexistente</asp:ListItem>
            </asp:DropDownList>
         </p>

        <p style="font-style:oblique;margin-left:30vw;color:black;font-weight:bold;font-size:1.4vw;">
            Suferinta fizica:
            <asp:DropDownList ID="DropDownList3" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;" runat="server" >
                <asp:ListItem>Niciuna</asp:ListItem>
                <asp:ListItem>Medie</asp:ListItem>
                <asp:ListItem>Pronuntata</asp:ListItem>
            </asp:DropDownList>
         </p>

         <p style="font-style:oblique;margin-left:30vw;color:black;font-weight:bold;font-size:1.4vw;">
            Suferinta mentala:
            <asp:DropDownList ID="DropDownList4" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;" runat="server" >
                <asp:ListItem>Niciuna</asp:ListItem>
                <asp:ListItem>Medie</asp:ListItem>
                <asp:ListItem>Pronuntata</asp:ListItem>
            </asp:DropDownList>
         </p>

        <p style="font-style:oblique;margin-left:30vw;color:black;font-weight:bold;font-size:1.4vw;">
            Abilitatea de a comunica:
            <asp:DropDownList ID="DropDownList5" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;" runat="server" >
                <asp:ListItem>Normala</asp:ListItem>
                <asp:ListItem>Afectata</asp:ListItem>
                <asp:ListItem>Inexistenta</asp:ListItem>
            </asp:DropDownList>
         </p>

        <p style="font-style:oblique;margin-left:30vw;color:black;font-weight:bold;font-size:1.4vw;">
            Somn:
            <asp:DropDownList ID="DropDownList6" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;" runat="server" >
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem>Afectat</asp:ListItem>
                <asp:ListItem>Anomalie majora</asp:ListItem>
            </asp:DropDownList>
         </p>

         <p style="font-style:oblique;margin-left:30vw;color:black;font-weight:bold;font-size:1.4vw;">
            Dependinta de ceilalti:
            <asp:DropDownList ID="DropDownList7" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;" runat="server" >
                <asp:ListItem>Independent</asp:ListItem>
                <asp:ListItem>Am nevoie de putin ajutor</asp:ListItem>
                <asp:ListItem>Total dependent</asp:ListItem>
            </asp:DropDownList>
         </p>

        <p style="font-style:oblique;margin-left:30vw;color:black;font-weight:bold;font-size:1.4vw;">
            Hranirea:
            <asp:DropDownList ID="DropDownList8" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;" runat="server" >
                <asp:ListItem>Normala</asp:ListItem>
                <asp:ListItem>Afectata</asp:ListItem>
                <asp:ListItem>Anomalie majora</asp:ListItem>
            </asp:DropDownList>
         </p>

        <p style="font-style:oblique;margin-left:30vw;color:black;font-weight:bold;font-size:1.4vw;">
            Urinarea:
            <asp:DropDownList ID="DropDownList9" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;" runat="server" >
                <asp:ListItem>Normala</asp:ListItem>
                <asp:ListItem>Afectata</asp:ListItem>
                <asp:ListItem>Anomalie majora</asp:ListItem>
            </asp:DropDownList>
         </p>

         <p style="font-style:oblique;margin-left:30vw;color:black;font-weight:bold;font-size:1.4vw;">
            Defecarea:
            <asp:DropDownList ID="DropDownList10" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;" runat="server" >
                <asp:ListItem>Normala</asp:ListItem>
                <asp:ListItem>Afectata</asp:ListItem>
                <asp:ListItem>Anomalie majora</asp:ListItem>
            </asp:DropDownList>
         </p>

        <br />
         <asp:Button ID="Button1" style="margin-left:38vw;font-size:1.1vw;font-style:oblique;font-weight:bold;" runat="server" Text="Calculare" OnClick="Calcul1" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" />
        <br /><br /><br />

        <hr />
        <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.1vw;color:red;"> Informatii:  </p>     
        <br />

        <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:1.3vw;color:blue;">
            <div style="font-style:oblique;font-weight:bold;margin-left:10vw;margin-right:10vw;font-family:Lobster;font-size:1.3vw;color:blue;" id="document_tab" class="tab_content" style="overflow: auto; width: auto; padding: 18px 18px 0px; color: rgb(0, 0, 0); display: block;">
                <p> Grogono și Woodgate au dezvoltat un index simplu de sănătate pentru evaluarea stării de sănătate a unei persoane. Acest index poate fi folosit pentru a determina starea persoanei la o anumită dată și nevoia sa de tratament. De asemenea, persoana poate fi monitorizata în timp pentru a determina răspunsul acesteia la intervenții. Autorii fac parte din Royal Free Hospital din Londra și St. Louis si Spitalul Andrews din Essex, Regatul Unit.</p>
<br><p style="color:red;">
	Parametri:</p>
<p>
	(1) Abilitatea de a munci</p>
<p>
	(2) Recreere și hobby-uri</p>
<p>
	(3) Suferinta fizica</p>
<p>
	(4) Suferinta mentala</p>
<p>
	(5) Abilitatea de a comunica</p>
<p>
	(6) Somn</p>
<p>
	(7) Dependinta de ceilalti</p>
<p>
	(8) Hranirea</p>
<p>
	(9) Defecarea</p>
<p>
	(10) Urinarea </p>
<p>
	&nbsp;</p>
<table border="2px" cellpadding="0" cellspacing="0">
	<thead>
		<tr>
			<th scope="col" style="width: 240px;color:red;">
				<h3 style="text-align: left;">
					Parametru</h3>
			</th>
			<th scope="col" style="width: 240px;color:red;">
				<h3 style="text-align: left;">
					Verdict</h3>
			</th>
			<th scope="col" style="width: 96px;color:red;">
				<h3 align="center">
					Puncte</h3>
			</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td style="width: 240px;">
				<p>
					Abilitatea de a munci</p>
			</td>
			<td style="width: 240px;">
				<p>
					normala</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					redusa</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0.5</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					inexistenta</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					Recreere și hobby-uri</p>
			</td>
			<td style="width: 240px;">
				<p>
					normale</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					reduse</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0.5</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					inexistente</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
				    Suferinta fizica</p>
			</td>
			<td style="width: 240px;">
				<p>
					niciuna</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					medie</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0.5</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					pronuntata</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					Suferinta mentala</p>
			</td>
			<td style="width: 240px;">
				<p>
					niciuna</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					medie</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0.5</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					pronuntata</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
				    Abilitatea de a comunica</p>
			</td>
			<td style="width: 240px;">
				<p>
					normala</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					afectata</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0.5</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					inexistenta</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					Somn</p>
			</td>
			<td style="width: 240px;">
				<p>
					normal</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					afectat</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0.5</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					anomalie majora</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					Dependinta de ceilalti</p>
			</td>
			<td style="width: 240px;">
				<p>
					independent</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					am nevoie de putin ajutor</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0.5</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					total dependent</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					Hranirea</p>
			</td>
			<td style="width: 240px;">
				<p>
					normala</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					afectata</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0.5</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					anomalie majora</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					Urinarea si defecarea</p>
			</td>
			<td style="width: 240px;">
				<p>
					normala</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					afectata</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0.5</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					anomalie majora</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p style="color:red;">
	Precizari:</p>
<p style="margin-left:18.0pt;">
	• Abilitatea de a munci: Scorul este acordat pe baza abilității de a face sarcinile asociate cu viața de zi cu zi. O persoană care lucrează redus sau nu lucrează la sfatul medicului ar trebui să aibă un scor de 0,5 sau 1, chiar dacă persoana consideră că ar putea face mai mult. Dacă o persoană poate să-și facă treaba obișnuită, chiar dacă e spitalizată, poate fi marcată ca 1. Dacă o persoană atinge vârsta de pensionare obligatorie, dar este în alt mod capabilă să lucreze, scorul este 1.</p>
<p style="margin-left:18.0pt;">
	• Abilitatea de a comunica: O singură barieră lingvistică nu ar trebui utilizată ca criteriu pentru un scor redus.</p>
<p style="margin-left:18.0pt;">
	• Hranirea: Un pacient la dieta poate avea un scor redus daca nu-i place dieta.</p>
<p style="margin-left:18.0pt;">
	• Schema de clasificare de 0, 0.5 sau 1 este simplă. Tabelul ar putea fi modificat pentru a oferi procentaje sau nivele mai funcționale.</p>
<p>
	&nbsp;</p>
<p style="color:red;">
	Scorul Indicelui de sanatate =</p>
<p>
	= SUMA(punctele din cei 10 parametri) </p>
<p>
	&nbsp;</p>
<p style="color:red;">
	Interpretare:</p>
<p style="margin-left:18.0pt;">
	• scor minim: 0</p>
<p style="margin-left:18.0pt;">
	• scor maxim: 10</p>
<p style="margin-left:18.0pt;">
	• Cu cât este mai mare scorul, cu atât funcționarea organismului este mai normală. Cu cât scorul este mai mic, cu atât este mai mare deprecierea și handicapul.</p>
<br>
       </div>
        </p>

</div>

    <div class="jumbotron" style="margin-left:6vw;margin-right:6vw;" id="chestionar2" runat="server" visible="false">
         <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.1vw;color:blue;"> Indicele de calitate a vietii  </p>
         <br />

          <p style="font-style:oblique;margin-left:25vw;color:black;font-weight:bold;font-size:1.4vw;">
            Ma simt plin de energie
            <asp:DropDownList ID="DropDownList11" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;width:10vw;" runat="server" >
                <asp:ListItem>Niciodata</asp:ListItem>
                <asp:ListItem>Foarte rar</asp:ListItem>
                <asp:ListItem>Rar</asp:ListItem>
                <asp:ListItem>Des</asp:ListItem>
                <asp:ListItem>Foarte des</asp:ListItem>
                <asp:ListItem>Mereu</asp:ListItem>
            </asp:DropDownList>
         </p>

         <p style="font-style:oblique;margin-left:25vw;color:black;font-weight:bold;font-size:1.4vw;">
            Ma simt obosit si epuizat
            <asp:DropDownList ID="DropDownList12" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;width:10vw;" runat="server" >
                <asp:ListItem>Niciodata</asp:ListItem>
                <asp:ListItem>Foarte rar</asp:ListItem>
                <asp:ListItem>Rar</asp:ListItem>
                <asp:ListItem>Des</asp:ListItem>
                <asp:ListItem>Foarte des</asp:ListItem>
                <asp:ListItem>Mereu</asp:ListItem>
            </asp:DropDownList>
         </p>

        <p style="font-style:oblique;margin-left:25vw;color:black;font-weight:bold;font-size:1.4vw;">
            Ma trezesc simtindu-ma odihnit si inviorat
            <asp:DropDownList ID="DropDownList13" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;width:10vw;" runat="server" >
                <asp:ListItem>Niciodata</asp:ListItem>
                <asp:ListItem>Foarte rar</asp:ListItem>
                <asp:ListItem>Rar</asp:ListItem>
                <asp:ListItem>Des</asp:ListItem>
                <asp:ListItem>Foarte des</asp:ListItem>
                <asp:ListItem>Mereu</asp:ListItem>
            </asp:DropDownList>
         </p>

        <p style="font-style:oblique;margin-left:25vw;color:black;font-weight:bold;font-size:1.4vw;">
            Oboseala interfereaza cu munca mea, familia sau viața socială
            <asp:DropDownList ID="DropDownList14" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;width:10vw;" runat="server" >
                <asp:ListItem>Niciodata</asp:ListItem>
                <asp:ListItem>Foarte rar</asp:ListItem>
                <asp:ListItem>Rar</asp:ListItem>
                <asp:ListItem>Des</asp:ListItem>
                <asp:ListItem>Foarte des</asp:ListItem>
                <asp:ListItem>Mereu</asp:ListItem>
            </asp:DropDownList>
         </p>
     
        <p style="font-style:oblique;margin-left:25vw;color:black;font-weight:bold;font-size:1.4vw;">
            Oboseala este unul dintre principalele simptome ce ma fac inactiv
            <asp:DropDownList ID="DropDownList15" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;width:10vw;" runat="server" >
                <asp:ListItem>Niciodata</asp:ListItem>
                <asp:ListItem>Foarte rar</asp:ListItem>
                <asp:ListItem>Rar</asp:ListItem>
                <asp:ListItem>Des</asp:ListItem>
                <asp:ListItem>Foarte des</asp:ListItem>
                <asp:ListItem>Mereu</asp:ListItem>
            </asp:DropDownList>
         </p>

        <br />
        <asp:Button ID="Button2" style="margin-left:38vw;font-size:1.1vw;font-style:oblique;font-weight:bold;" runat="server" Text="Calculare" OnClick="Calcul2" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" />
        <br /><br /><br />

        <hr />
        <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.1vw;color:red;"> Informatii:  </p>
        <br />

         <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:1.3vw;color:blue;">
        <div style="font-style:oblique;font-weight:bold;margin-left:10vw;margin-right:10vw;font-family:Lobster;font-size:1.3vw;color:blue;" id="document_tab" class="tab_content" style="overflow: auto; width: auto; padding: 18px 18px 0px; color: rgb(0, 0, 0); display: block;"><p>
	Indicele de calitate a vietii măsoară cât de multă afecteaza oboseala calitatea vieții pacientului, prin evaluarea a 5 caracteristici ale nivelului de energie al persoanei. Acest lucru poate fi folosit pentru a monitoriza nivelul de oboseală al unei persoane în timp și răspunsul acesteia la intervenții.</p>
<br><p style="color:red;">
	Afirmatii:</p>
<p>
	(1) Ma simt plin de energie</p>
<p>
	(2) Ma simt obosit si epuizat</p>
<p>
	(3) Ma trezesc simtindu-ma odihnit si inviorat</p>
<p>
	(4) Oboseala interfereaza cu munca mea, familia sau viața socială</p>
<p>
	(5) Oboseala este unul dintre principalele simptome ce ma fac inactiv</p>
<p>
	&nbsp;</p>
<table border="2" cellpadding="0" cellspacing="0">
	<thead>
		<tr>
			<th scope="col" style="width: 192px;color:red;">
				<h3 style="text-align: left;">
					Raspunsuri</h3>
			</th>
			<th scope="col" style="width: 192px;color:red;">
				<h3 align="center">
					Afirmatiile 2, 4 si 5</h3>
			</th>
			<th scope="col" style="width: 192px;color:red;">
				<h3 align="center">
					Afirmatiile 1 si 3</h3>
			</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td style="width: 192px;">
				<p>
					niciodata</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					1</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					6</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p>
					foarte rar</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					2</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					5</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p>
					rar</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					3</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					4</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p>
					des</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					4</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					3</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p>
					foarte des</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					5</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					2</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p>
					mereu</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					6</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					1</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p style="color:red;">
	Indicele de calitate a vietii =</p>
<p>
	= SUMA(punctele de la cele 5 afirmatii)</p>
<p>
	&nbsp;</p>
<p style="color:red;">
	Interpretare:</p>
<p>
	• scor minim: 5</p>
<p>
	• scor maxim: 30</p>
<p>
	• Un scor &gt;= 17.5 (in medie 3.5 pentru fiecare afirmatie) este considerat a fi nivelul critic pentru identificarea pacienților cu oboseală.</p>
<p>
	• O reducere a punctajului de 6 sau mai multe puncte este considerată o îmbunătățire substanțială. </p>
<br></div>

    </p>
</div>

    <div class="jumbotron" style="margin-left:6vw;margin-right:6vw;" id="chestionar3" runat="server" visible="false">
         <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.1vw;color:blue;"> Indicele de activitate fizica a unei persoane (FIT Index of Kasari)   </p>
          <br />

          <p style="font-style:oblique;margin-left:26vw;color:black;font-weight:bold;font-size:1.4vw;">
              Numarul mediu de minute de activitate zilnica:
              <input id="minuteActivitate" type="number" style="width:5vw;" runat="server" />
          </p>     

          <p style="font-style:oblique;margin-left:26vw;color:black;font-weight:bold;font-size:1.4vw;">
            Frecventa activitatii fizice:
            <asp:DropDownList ID="DropDownList16" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;" runat="server" >
                <asp:ListItem>Peste 6 ori/saptamana</asp:ListItem>
                <asp:ListItem>3-5 ori/saptamana</asp:ListItem>
                <asp:ListItem>1-2 ori/saptamana</asp:ListItem>
                <asp:ListItem>De cateva ori pe luna</asp:ListItem>
                <asp:ListItem>De cateva ori pe an</asp:ListItem>
            </asp:DropDownList>
         </p>

         <p style="font-style:oblique;margin-left:26vw;color:black;font-weight:bold;font-size:1.4vw;">
            Intensitatea activitatii fizice:
            <asp:DropDownList ID="DropDownList17" onclick="this.size=1;" onMouseOut="this.size=1;" style="position:absolute;margin-left:1vw;" runat="server" >
                <asp:ListItem>Ridicata</asp:ListItem>
                <asp:ListItem>Moderata spre ridicata</asp:ListItem>
                <asp:ListItem>Moderata</asp:ListItem>
                <asp:ListItem>Scazuta spre moderata</asp:ListItem>
                <asp:ListItem>Scazuta</asp:ListItem>
            </asp:DropDownList>
         </p>

        <br />
        <asp:Button ID="Button3" style="margin-left:38vw;font-size:1.1vw;font-style:oblique;font-weight:bold;" runat="server" Text="Calculare" OnClick="Calcul3" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" />
        <br /><br /><br />

        <hr />
        <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.1vw;color:red;"> Informatii:  </p>
        <br />

        <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:1.3vw;color:blue;">
        <div id="document_tab"  style="font-style:oblique;font-weight:bold;margin-left:10vw;margin-right:10vw;font-family:Lobster;font-size:1.3vw;color:blue;" class="tab_content" style="overflow: auto; width: auto; padding: 18px 18px 0px; color: rgb(0, 0, 0); display: block;"><p>
	Indicele FIT (Frecvență, Intensitate, Timp) al lui Kasari poate fi folosit pentru a evalua nivelul de activitate fizică al unei persoane.</p>
<br><p style="color:red;">
	Parameteri:</p>
<p>
	(1) frecventa exercitiilor</p>
<p>
	(2) intensitatea exercitiilor</p>
<p>
	(3) timpul petrecut pentru antrenament</p>
<p>
	&nbsp;</p>
<table border="2" cellpadding="0" cellspacing="0">
	<thead>
		<tr>
			<th scope="col" style="width: 144px;">
				<h3 style="text-align: left;color:red;">
					Parametru</h3>
			</th>
			<th scope="col" style="width: 336px;">
				<h3 style="text-align: left;color:red;">
					Verdict</h3>
			</th>
			<th scope="col" style="width: 96px;color:red;">
				<h3 align="center">
					Puncte</h3>
			</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td style="width: 144px;">
				<p>
					Frecventa</p>
			</td>
			<td style="width: 336px;">
				<p>
					&gt;= 6 ori pe saptamana</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					5</p>
			</td>
		</tr>
		<tr>
			<td style="width: 144px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 336px;">
				<p>
					3 – 5 ori pe saptamana</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					4</p>
			</td>
		</tr>
		<tr>
			<td style="width: 144px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 336px;">
				<p>
					1 – 2 ori pe saptamana</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					3</p>
			</td>
		</tr>
		<tr>
			<td style="width: 144px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 336px;">
				<p>
					de cateva ori pe luna</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					2</p>
			</td>
		</tr>
		<tr>
			<td style="width: 144px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 336px;">
				<p>
					de cateva ori pe an</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 144px;">
				<p>
					Intensitate</p>
			</td>
			<td style="width: 336px;">
				<p>
					activități de intensitate ridicată care duc la respirație și perspirație durabile (aerobic cu impact sporit, alergare, înot viteză, ciclism la distanță, etc.)</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					5</p>
			</td>
		</tr>
		<tr>
			<td style="width: 144px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 336px;">
				<p>
					activități aerobice moderat de mari și activități sportive intermitente care duc la respirația și transpirația greoaie susținută (urcatul scarilor, mers rapid, tenis, badminton, squash)</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					4</p>
			</td>
		</tr>
		<tr>
			<td style="width: 144px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 336px;">
				<p>
					activități moderate de aerobic (ciclism normal, jogging, aerobic cu impact redus)</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					3</p>
			</td>
		</tr>
		<tr>
			<td style="width: 144px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 336px;">
				<p>
					activități aerobice și sportive joase până la moderate (volei de agrement, mers pe jos cu viteză moderată)</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					2</p>
			</td>
		</tr>
		<tr>
			<td style="width: 144px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 336px;">
				<p>
					exercitii aerobice usoare (mers normal, golf)</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 144px;">
				<p>
					timp</p>
			</td>
			<td style="width: 336px;">
				<p>
					&gt; 30 minute</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					4</p>
			</td>
		</tr>
		<tr>
			<td style="width: 144px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 336px;">
				<p>
					20 – 30 minute</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					3</p>
			</td>
		</tr>
		<tr>
			<td style="width: 144px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 336px;">
				<p>
					10 – 20 minute</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					2</p>
			</td>
		</tr>
		<tr>
			<td style="width: 144px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 336px;">
				<p>
					&lt; 10 minute</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p style="color:red;">
	FIT index =</p>
<p>
	= (puncte pentru frecventa) * (puncte pentru intensitate) * (puncte pentru timp)</p>
<p>
	&nbsp;</p>
<p style="color:red;">
	Interpretare:</p>
<p style="margin-left:.25in;">
	• scor minim: 1 </p>
<p style="margin-left:.25in;">
	• scor maxim: 100</p>
<p style="margin-left:.25in;">
	• Cu cat scorul este mai mare, cu atat persoana este mai activa.</p>
<p>
	&nbsp;</p>
<p style="color:red;">
	Limitari:</p>
<p style="margin-left:.25in;">
	• Atletii ar maximiza scorul cu usurinta. Scorul pare cel mai util pentru o persoană cu nivel scazut sau moderat de activitate.</p>
<br>  
        </div>
    </p>
</div>

    <div class="jumbotron" style="margin-left:6vw;margin-right:6vw;" id="chestionar4" runat="server" visible="false">
         <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.1vw;color:blue;"> Indicele lui Lee de prezicere a riscului de mortalitate al unei persoane inaintate ca varsta in urmatorii 4 ani   </p>
          <br />

         <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.7vw;color:blue;">
             Date generale:
         </p>
          <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.4vw;">
              Varsta(ani>=50): 
              <input id="varsta" type="number" style="width:18.3vw;" runat="server" placeholder="Exemplu: 64" />
          </p> 
         <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.4vw;">
              Greutatea(kg):
              <input id="greutate" type="number" step="0.1" runat="server" placeholder="Exemplu: 78,5" />
          </p> 
         <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.4vw;">
              Inaltimea(cm):
              <input id="inaltime" type="number" runat="server" placeholder="Exemplu: 180" />
          </p> 
          <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.4vw;">
              Sex:
              <asp:radiobuttonlist ID="rb1" runat="server" style="margin-left:42vw;margin-top:-3.5vw;font-size:1.1vw;">
                   <asp:ListItem value="Masculin" Selected ="True">Masculin</asp:ListItem>
                   <asp:ListItem value="Feminin">Feminin</asp:ListItem>
              </asp:radiobuttonlist>
          </p>
        <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.4vw;">
              Consum tigari:
              <asp:radiobuttonlist ID="rb2" runat="server" style="margin-left:42vw;margin-top:-3.5vw;font-size:1.1vw;">
                   <asp:ListItem value="Da">Da</asp:ListItem>
                   <asp:ListItem value="Nu" Selected ="True">Nu</asp:ListItem>
              </asp:radiobuttonlist>
          </p>
         <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.7vw;color:blue;">
             Boli de care suferiti:
         </p>
         <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.4vw;">
              Diabet zaharat:
              <asp:radiobuttonlist ID="rb3" runat="server" style="margin-left:42vw;margin-top:-3.5vw;font-size:1.1vw;">
                   <asp:ListItem value="Da">Da</asp:ListItem>
                   <asp:ListItem value="Nu" Selected ="True">Nu</asp:ListItem>
              </asp:radiobuttonlist>
          </p>
          <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.4vw;">
              Cancer:
              <asp:radiobuttonlist ID="rb4" runat="server" style="margin-left:42vw;margin-top:-3.5vw;font-size:1.1vw;">
                   <asp:ListItem value="Da">Da</asp:ListItem>
                   <asp:ListItem value="Nu" Selected ="True">Nu</asp:ListItem>
              </asp:radiobuttonlist>
          </p>
          <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.4vw;">
              Boli pulmonare:
              <asp:radiobuttonlist ID="rb5" runat="server" style="margin-left:42vw;margin-top:-3.5vw;font-size:1.1vw;">
                   <asp:ListItem value="Da">Da</asp:ListItem>
                   <asp:ListItem value="Nu" Selected ="True">Nu</asp:ListItem>
              </asp:radiobuttonlist>
          </p>
        <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.4vw;">
              Insuficienta cardiaca:
              <asp:radiobuttonlist ID="rb6" runat="server" style="margin-left:46vw;margin-top:-3.5vw;font-size:1.1vw;">
                   <asp:ListItem value="Da">Da</asp:ListItem>
                   <asp:ListItem value="Nu" Selected ="True">Nu</asp:ListItem>
              </asp:radiobuttonlist>
          </p>
         <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.7vw;color:blue;">
             Sunteti afectat in capacitatea de a:
         </p>
        <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.4vw;">
              Va spala individual:
              <asp:radiobuttonlist ID="rb7" runat="server" style="margin-left:46vw;margin-top:-3.5vw;font-size:1.1vw;">
                   <asp:ListItem value="Da">Da</asp:ListItem>
                   <asp:ListItem value="Nu" Selected ="True">Nu</asp:ListItem>
              </asp:radiobuttonlist>
          </p>
         <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.4vw;">
              Va gestiona propriile finante:
              <asp:radiobuttonlist ID="rb8" runat="server" style="margin-left:54vw;margin-top:-3.5vw;font-size:1.1vw;">
                   <asp:ListItem value="Da">Da</asp:ListItem>
                   <asp:ListItem value="Nu" Selected ="True">Nu</asp:ListItem>
              </asp:radiobuttonlist>
          </p>
          <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.4vw;">
              Merge pe jos fara ajutor:
              <asp:radiobuttonlist ID="rb9" runat="server" style="margin-left:50vw;margin-top:-3.5vw;font-size:1.1vw;">
                   <asp:ListItem value="Da">Da</asp:ListItem>
                   <asp:ListItem value="Nu" Selected ="True">Nu</asp:ListItem>
              </asp:radiobuttonlist>
          </p>
         <p style="font-style:oblique;margin-left:31vw;color:black;font-weight:bold;font-size:1.4vw;">
              Impinge sau ridica obiecte grele:
              <asp:radiobuttonlist ID="rb10" runat="server" style="margin-left:54vw;margin-top:-3.5vw;font-size:1.1vw;">
                   <asp:ListItem value="Da">Da</asp:ListItem>
                   <asp:ListItem value="Nu" Selected ="True">Nu</asp:ListItem>
              </asp:radiobuttonlist>
          </p>

         <br />
        <asp:Button ID="Button4" style="margin-left:38vw;font-size:1.1vw;font-style:oblique;font-weight:bold;" runat="server" Text="Calculare" OnClick="Calcul4" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" />
        <br /><br /><br />

        <hr />
        <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.1vw;color:red;"> Informatii:  </p>
        <br />

        <p style="font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:1.3vw;color:blue;">
        <div id="document_tab" style="font-style:oblique;font-weight:bold;margin-left:10vw;margin-right:10vw;font-family:Lobster;font-size:1.3vw;color:blue;" class="tab_content" style="overflow: auto; width: auto; padding: 18px 18px 0px; color: rgb(0, 0, 0); display: block;"><p>
	Lee a dezvoltat un indice de prezicere a riscului de mortalitate al unei persoane intaintate in varsta in urmatorii 4 ani. Acest lucru poate ajuta la identificarea pacienților care pot beneficia de o monitorizare mai atentă și de un management mai agresiv.</p>
<br><p style="color:red;">
	Selectarea pacientilor: adulti cu varsta &gt;= 50 ani</p>
<p>
	&nbsp;</p>
<p style="color:red;">
	Parametri:</p>
<p>
	(1) varsta</p>
<p>
	(2) sex</p>
<p>
	(3) diabet zaharat</p>
<p>
	(4) cancer</p>
<p>
	(5) boli pulmonare</p>
<p>
	(6) insuficienta cardiaca</p>
<p>
	(7) indincele de masa corporala (greutate+inaltime) </p>
<p>
	(8) consumul de tigari</p>
<p>
	(9) abilitatea de a se spala individual</p>
<p>
	(10) abilitatea de a gestiona propriile finante</p>
<p>
	(11) abilitate de a merge pe jos fara ajutor</p>
<p>
	(12) abilitatea de a impinge sau ridica obiecte grele</p>
<p>
	&nbsp;</p>
<table border="2" cellpadding="0" cellspacing="0">
	<thead>
		<tr>
			<th scope="col" style="width: 240px;color:red;">
				<h3>
					Parametru</h3>
			</th>
			<th scope="col" style="width: 240px;color:red;">
				<h3>
					Verdict</h3>
			</th>
			<th scope="col" style="width: 96px;color:red;">
				<h3 align="center">
					Puncte</h3>
			</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td style="width: 240px;">
				<p>
					varsta pacientului</p>
			</td>
			<td style="width: 240px;">
				<p>
					50 - 59 ani</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					60 - 64 ani</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					65 - 69 ani</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					2</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					70 - 74 ani</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					3</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					75 - 79 ani</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					4</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					80 - 84 ani</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					5</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					&gt;= 85 ani</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					7</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					sex</p>
			</td>
			<td style="width: 240px;">
				<p>
					feminin</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					masculin</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					2</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					diabet zaharat</p>
			</td>
			<td style="width: 240px;">
				<p>
					absent</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					prezent</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					cancer</p>
			</td>
			<td style="width: 240px;">
				<p>
					absent</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					prezent</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					2</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					boli pulmonare</p>
			</td>
			<td style="width: 240px;">
				<p>
					absente</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					prezente</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					2</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					insuficienta cardiaca</p>
			</td>
			<td style="width: 240px;">
				<p>
					absenta</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					prezenta</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					2</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					indicele de masa corporala</p>
			</td>
			<td style="width: 240px;">
				<p>
					&gt;= 25 </p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					&lt; 25 </p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					cosumul de tigari</p>
			</td>
			<td style="width: 240px;">
				<p>
					absent</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					prezent</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					2</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					abilitatea de a se spala singur</p>
			</td>
			<td style="width: 240px;">
				<p>
					neafectat</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					afectat</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					2</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					abilitatea de a va gestiona propriile finante</p>
			</td>
			<td style="width: 240px;">
				<p>
					neafectat</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					afectat</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					2</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					abilitatea de a merge pe jos fara ajutor</p>
			</td>
			<td style="width: 240px;">
				<p>
					neafectat</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					afectat</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					2</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					abilitatea de a impinge sau ridica obiecte grele</p>
			</td>
			<td style="width: 240px;">
				<p>
					neafectat</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					0</p>
			</td>
		</tr>
		<tr>
			<td style="width: 240px;">
				<p>
					&nbsp;</p>
			</td>
			<td style="width: 240px;">
				<p>
					afectat</p>
			</td>
			<td style="width: 96px;">
				<p align="center">
					1</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p style="color:red;">
	Scor total =</p>
<p>
	= SUMA(punctele din cei 12 parametri)</p>
<p>
	&nbsp;</p>
<p style="color:red;">
	Interpretare:</p>
<p>
	• scor minim: 0</p>
<p>
	• scor maxim: 26</p>
<p>
	• Cu cat scorul este mai mare,cu atat sansa de mortalitate este mai mare in urmatorii 4 ani.</p>
<p>
	&nbsp;</p>
<table border="2" cellpadding="0" cellspacing="0">
	<thead>
		<tr>
			<th scope="col" style="width: 192px;color:red;">
				<h3 align="center">
					Scor total </h3>
			</th>
			<th scope="col" style="width: 192px;color:red;">
				<h3 align="center">
					Risc de mortalitate</h3>
			</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					0</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					0 - 1%</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					1 or 2</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					1 - 2%</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					3</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					3 - 4%</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					4</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					4 - 6%</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					5</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					5 - 8%</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					6</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					9%</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					7</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					12 - 15%</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					8</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					19 - 20%</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					9</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					20 - 24%</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					10</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					27 - 28%</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					11</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					43 - 45%</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					12</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					44 - 48%</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					13</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					54 - 59%</p>
			</td>
		</tr>
		<tr>
			<td style="width: 192px;">
				<p align="center">
					&gt;= 14</p>
			</td>
			<td style="width: 192px;">
				<p align="center">
					64 - 67%</p>
			</td>
		</tr>
	</tbody>
</table>
	&nbsp;</p>
</div>
    </p>
    </div>

    <div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="text-align:center;">
    <div class="modal-dialog">
        <asp:scriptmanager runat="server"></asp:scriptmanager>
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

