<%@ Page Title="Calculator IMC" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Calculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        td,tr,th {
            border:3px white solid;
        }
        td{
            font-size:1vw;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <h1 style="color:blue;font-style:oblique;background-color:white;font-weight:bold;text-align:center;font-family:Lobster;"> Calculator - Indice Masa Corporala </h1>
    <br /> <br />

    <div style="margin-right:30%;margin-left:30%;color:blue;font-style:oblique;font-weight:bold;text-align:center;">
    <div class="form-group">
      <label for="greutate" style="font-size:200%;">Greutate (in kilograme) </label>
      <input type="number" step="0.1" class="form-control" id="greutate" placeholder="Exemplu: 78,5" runat="server">
    </div>
    <div class="form-group">
      <label for="inaltime" style="font-size:200%;">Inaltime (in centimetri) </label>
      <input type="number" class="form-control" id="inaltime"  placeholder="Exemplu: 180" runat="server">
    </div>
    <br />

        <div style="font-style:oblique;text-align:center;">
                    <div class="btn-group">
                    <asp:Button ID="Button2" runat="server" Text="Calculeaza" OnClick="Button1_Click" BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Italic="True" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" />
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

    <br /> <br />
    <div class="container">
      <div class="jumbotron" style="color:blue;font-style:oblique;font-weight:bold;">   
            <h2 style="text-align:center;"> Descriere generala </h2>
            <h3>
                Indicele de masă corporală – IMC – este un indicator oficial de calculare a greutății corporale ideale,
                pentru o înăltime dată. Ajută la stabilirea grupei de greutate în care se încadrează o persoană – gradul de obezitate.
             </h3>
            <h3>De asemenea, indicele de masă corporală poate fi folosit pentru calcularea numărului de kilograme pe care o persoană
                trebuie să le piardă sau să le câștige, pentru a ajunge la greutatea ideală, pentru înălțimea sa.
            </h3> 
          <h3>
              Indicele de masă corporală este o metodă care poate fi folosită atât de bărbați cât și de femei, cu vârsta cuprinsă între 18 și 65 ani.
              Indicele de masă corporală nu este o metodă de calcul a greutății potrivită pentru copii, femei însărcinate, persoane cu masa musculară mare
              (sportivi) și vârstnici și nu este menită stabilirii procentului de grăsime corporală, a masei musculare sau osoase.
          </h3>
    
      <img id="imagine1" src="Imagini/calculatorIMC1.jpg"  class="img-thumbnail" runat="server" style="width:30vw;margin-left:1vw;" />
      <img id="imagine2" src="Imagini/calculatorIMC2.jpg"  class="img-thumbnail" runat="server" style="width:33vw;margin-left:1vw;" />
    </div>
    </div>

    <br />

        <div class="container" style="text-align:center;width:35vw;background-color:#acf!important;color:red;opacity:0.90;font-style:oblique;font-weight:bold;float:left;margin-left:14vw;">
          <h2 style="font-size:1.7vw;">Tabel IMC</h2>        
          <table class="table table-hover table-bordered" style="border:4px white solid;">
            <thead style="font-size:1.3vw;">
              <tr class="separating_line">
                <th style="text-align:center;">Tipul Greutatii</th>
                <th style="text-align:center;">IMC Masculin</th>
                <th style="text-align:center;">IMC Feminin</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Subponderal</td>
                <td>Mai jos de 20</td>
                <td>Mai jos de 19</td>
              </tr>
              <tr>
                <td>Masa normala</td>
                <td>20-25</td>
                <td>19-24</td>
              </tr>
              <tr>
                <td>Supraponderal</td>
                <td>26-30</td>
                <td>25-30</td>
              </tr>
              <tr>
                <td>Obezitate</td>
                <td>31-40</td>
                <td>31-40</td>
              </tr>
              <tr>
                <td>Obezitate Severa</td>
                <td>Mai sus de 40</td>
                <td>Mai sus de 40</td>
              </tr>
            </tbody>
          </table>
        </div>

        <div class="container" style="text-align:center;width:30vw;background-color:#acf!important;color:red;opacity:0.90;font-style:oblique;font-weight:bold;float:left;margin-left:6vw;margin-top:-1.2%;">
          <h2 style="font-size:1.7vw;">IMC optim in functie de varsta</h2>        
          <table class="table table-hover table-bordered" style="border:4px solid white;">
            <thead style="font-size:1.3vw;">
              <tr>
                <th style="text-align:center;">Varsta</th>
                <th style="text-align:center;">IMC Optim</th>
              </tr>
            </thead>
            <tbody>
              <div class="row">
                <td>19-24</td>
                <td>19-24</td>        
              </tr>
              <tr>
                <td>25-34</td>
                <td>20-25</td>                
              </tr>
              <tr>
                <td>35-44</td>
                <td>21-26</td>  
              </tr>
              <tr>
                <td>45-54</td>
                <td>22-27</td>
              </tr>
              <tr>
                <td>55-64</td>
                <td>23-28</td>
              </tr>
              <tr>
                <td>Mai sus de 65</td>
                <td>24-29</td>
              </tr>
            </tbody>
          </table>
        </div>

        <br />

      <div class="container" id="reprezinta" style="margin-top:40vw;">
      <div class="jumbotron" style="color:blue;font-style:oblique;font-weight:bold;">   
            <h2 style="text-align:center;"> Ce reprezinta fiecare interval?</h2>
            <h3>
            Atenție! Aceste cifre au caracter orientativ.
            Pentru a pune diagnosticul de obezitate, sunt necesare alte măsurători de stabilire a grăsimii corporale,
            căci excesul de măsă grasă este un factor de risc. Unele persoane cu IMC crescut au de fapt o structură osoasă puternică,
            deci nu trebuie să slăbească.
            </h3>
          <ul>
          <li><h3>
               Un IMC mai mic de 20 poate indica probleme grave de sănătate la unele pesoane, în special dacă este rezultatul unei slăbiri extreme într-un interval scurt de timp. Orice modificare evidentă a greutății trebuie să fie considerată drept un semnal de alarmă ce nu poate fi neglijat. În schimb, o greutate stabilă care nu înregistrează variații considerabile pe parcursul mai multor ani, nu este un motiv de îngrijorare.
          </h3></li>
          <li><h3>
               Intervalul 20 – 25 este asociat cu riscuri reduse de boli la majoritatea persoanelor. Dacă IMC-ul tău este în acest interval, cel mai bine este să-ți menții greutatea. Pentru a rămâne în formă, încearcă să rămâi în acest interval, evitând pe cât posibil să te situiezi în una din cele două extreme.
          </h3></li>
          <li><h3>
               Un IMC situat între 26 și 30 trebuie considerat drept un avertisment. Totuși, unele persoane pot să obțină un indice mai mare de 25 fără a fi expuse cu adevărat unui risc de boli. Acesta este cazul sportivilor, a căror masă musculară este mai grea decât masa adipoasă.
          </h3></li>
          <li><h3>
               Un IMC mai mare de 27 este asociat cu riscuri crescute de probleme de sănătate, ca diabetul, hipertensiunea și bolile de inimă. Pentru a ajunge la greutatea optimă, se recomandă consultarea unui medic nutriționist care poate oferi un regim personalizat de slăbire și sfaturi de modificare a obiceiurilor alimentare. Un program de activitate fizică poate mări șansele de reușită.
          </h3></li>
            </ul>
    </div>
    </div>


</asp:Content>