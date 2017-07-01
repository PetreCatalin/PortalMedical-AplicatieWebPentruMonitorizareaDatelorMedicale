<%@ Page Title="Aplicatii" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DateMedicale.aspx.cs" Inherits="DateMedicale"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="width:30%;margin-left:13.5%;height:30%;background-color:white;opacity:0.9;border:2px solid blue;display:inline-block;margin-top:0.7%;">
        <h2 style="color:blue;font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.3vw;"> Monitorizare Glicemie </h2>
        <img src="Imagini/Glicemie.jpg" style="margin-left:20%;width:60%;" />
        <p style="color:blue;font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:1.1vw;"> Tineti evidenta valorilor glicemiei dumneavoastra,comparand valorile optinute pe orice perioada de timp. </p>
        <asp:LinkButton ID="LinkButton1" style="margin-left:40%;font-size:1.1vw;" runat="server" OnClick="LinkButton1_Click">Accesati aplicatia</asp:LinkButton>
    </div>

    <div style="width:30%;margin-left:13%;height:30%;background-color:white;opacity:0.9;border:2px solid blue;display:inline-block;">
        <h2 style="color:blue;font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.3vw;"> Monitorizare Greutate </h2>
        <img src="Imagini/Greutate.jpg" style="margin-left:26%;width:48%;" />
        <p style="color:blue;font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:1.1vw;"> Tineti evidenta greutatii dupa fiecare cantarire,verificand progresul optinut pe orice perioada de timp. </p>
        <asp:LinkButton ID="LinkButton2" style="margin-left:40%;font-size:1.1vw;" runat="server" OnClick="LinkButton2_Click">Accesati aplicatia</asp:LinkButton>
    </div>

    <br /><br />
    
    <div style="width:30%;margin-left:13.5%;height:30%;background-color:white;opacity:0.9;border:2px solid blue;display:inline-block;">
        <h2 style="color:blue;font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.3vw;"> Monitorizare Tensiune </h2>
        <img src="Imagini/Tensiune.jpg" style="margin-left:30%;width:40%;" />
        <p style="color:blue;font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:1.1vw;"> Tineti evidenta valorilor tensiunii dumneavoastra,comparand valorile optinute pe orice perioada de timp. </p>
        <asp:LinkButton ID="LinkButton3" style="margin-left:40%;font-size:1.1vw;" runat="server" OnClick="LinkButton3_Click">Accesati aplicatia</asp:LinkButton>
    </div>

    <div style="width:30%;margin-left:13%;height:30%;background-color:white;opacity:0.9;border:2px solid blue;display:inline-block;">
        <h2 style="color:blue;font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.3vw;"> Calculator Caloric </h2>
        <img src="Imagini/CalculatorCaloric.jpg" style="margin-left:27.5%;width:45%;" />
        <p style="color:blue;font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:1.1vw;"> Tineti evidenta caloriilor dupa fiecare masa,vizualizati numarul de calorii consumate zilnic si istoricul alimentelor. </p>
        <asp:LinkButton ID="LinkButton4" style="margin-left:40%;font-size:1.1vw;" runat="server" OnClick="LinkButton4_Click">Accesati aplicatia</asp:LinkButton>
    </div>

    <br /><br /><br />
     <div style="width:73%;margin-left:13.5%;height:30%;background-color:white;opacity:0.9;border:2px solid blue;display:inline-block;">
        <h2 style="color:blue;font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:2.3vw;"> Algoritmi Medicali </h2>
        <img src="Imagini/logoMedAlg.png" style="margin-left:34%;width:30%;" />
        <p style="color:blue;font-style:oblique;font-weight:bold;text-align:center;font-family:Lobster;font-size:1.1vw;"> Aflati diverse informatii despre starea dumneavoastra de sanatate pe baza unor chestionare. </p>
        <asp:LinkButton ID="LinkButton5" style="margin-left:47%;font-size:1.1vw;" runat="server" OnClick="LinkButton5_Click">Accesare </asp:LinkButton>
    </div>

    <br /><br /><br />

</asp:Content>

