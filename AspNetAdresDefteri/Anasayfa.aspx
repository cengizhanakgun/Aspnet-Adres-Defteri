<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="AspNetAdresDefteri.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adres Defteri</title>
    <link href="Content/Style/main.css" rel="stylesheet" />
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
    <script src="Content/Script/main.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="pageContainer">
            <div class="header">Adres Defteri</div>
            <div id="mainContent">
                <%--  Burada ana içerik yer alacak. --%>
                <div id="operations">
                    <ul>
                        <li>
                            <a id="btnNewAdress" href="javascript:";>Yeni Adres</a>
                        </li>
                        <li>
                            <a id="btnAdresses" href="javascript:;">Adreslerim</a>
                        </li>
                    </ul>
                </div>
                <div id="operationContainer">
                    <div id="newAdress">
                        <table>
                            <tr>
                                <td>Ad</td>
                                <td>
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Ad boş geçilemez"></asp:RequiredFieldValidator>

                                </td>
                            </tr>

                             <tr>
                            <td>Soyad</td>
                             <td>
                                 <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox>

                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastname" ErrorMessage="Soyad boş geçilemez"></asp:RequiredFieldValidator>

                             </td>
                         </tr>

                                <tr>
                               <td>Takma Ad</td>
                                <td>
                                    <asp:TextBox ID="txtNickname" runat="server"></asp:TextBox>

                                </td>
                            </tr>


                                <tr>
                               <td>Doğum Tarihi</td>
                                <td>
                                    <asp:Calendar ID="calBirth" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                        <NextPrevStyle VerticalAlign="Bottom" />
                                        <OtherMonthDayStyle ForeColor="#808080" />
                                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                        <SelectorStyle BackColor="#CCCCCC" />
                                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <WeekendDayStyle BackColor="#FFFFCC" />
                                    </asp:Calendar>

                                </td>
                            </tr>


                                <tr>
                               <td>Cinsiyet</td>
                                <td>
                                    <asp:DropDownList ID="ddGender" runat="server">
                                        <asp:ListItem>Seçiniz</asp:ListItem>
                                        <asp:ListItem>Bayan</asp:ListItem>
                                        <asp:ListItem>Bay</asp:ListItem>
                                    </asp:DropDownList>

                                </td>
                            </tr>


                                <tr>
                               <td>Cep Telefonu</td>
                                <td>
                                    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMobile" ErrorMessage="Cep telefonu boş geçilemez"></asp:RequiredFieldValidator>

                                </td>
                            </tr>


                                <tr>
                               <td>Sabit Telefon</td>
                                <td>
                                    <asp:TextBox ID="txtHome" runat="server"></asp:TextBox>

                                </td>
                            </tr>


                                <tr>
                               <td>E-Posta</td>
                                <td>
                                    <asp:TextBox ID="txtEMail" runat="server"></asp:TextBox>

                                </td>
                            </tr>


                                <tr>
                               <td>Faks</td>
                                <td>
                                    <asp:TextBox ID="txtFaks" runat="server"></asp:TextBox>

                                </td>
                            </tr>


                                <tr>
                               <td>Adres</td>
                                <td>
                                    <asp:TextBox ID="txtAdress" runat="server"></asp:TextBox>

                                </td>
                            </tr>


                                <tr>
                               <td>Not</td>
                                <td>
                                    <asp:TextBox ID="txtNot" runat="server"></asp:TextBox>

                                </td>
                            </tr>


                                <tr>
                               <td class="auto-style1"></td>
                                <td class="auto-style1">
                                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Kaydet" />

                                </td>
                            </tr>


                        </table>

                    </div>
                        <div id="myAdresses">Adreslerim Tab'ı
                           <div class ="container">
                                <asp:GridView ID="gvAdresses" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="gvAdresses_SelectedIndexChanged" Width="100%">
     <AlternatingRowStyle BackColor="#CCCCCC" />
     <Columns>
         <asp:BoundField DataField="Name" HeaderText="Ad" />
         <asp:BoundField DataField="SurName" HeaderText="Soyad" />
         <asp:BoundField DataField="NickName" HeaderText="Takmaad" />
         <asp:BoundField DataField="MobilePhoneNumber" HeaderText="Telefon Numarası" />
         <asp:BoundField DataField="Email" HeaderText="E-Posta" />
         <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="Detay.aspx?ID={0}" Text="Detay" />
     </Columns>
     <FooterStyle BackColor="#CCCCCC" />
     <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
     <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
     <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
     <SortedAscendingCellStyle BackColor="#F1F1F1" />
     <SortedAscendingHeaderStyle BackColor="Gray" />
     <SortedDescendingCellStyle BackColor="#CAC9C9" />
     <SortedDescendingHeaderStyle BackColor="#383838" />
 </asp:GridView>
                           </div>
                           
                            

                        </div>


                </div>
                <div class="cls"></div>
            </div>
           
        </div>
    </form>
</body>
</html>
