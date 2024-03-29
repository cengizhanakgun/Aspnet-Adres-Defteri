﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detay.aspx.cs" Inherits="AspNetAdresDefteri.Detay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


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
             <asp:Button ID="btnSave" runat="server"  Text="Kaydet" OnClick="btnSave_Click" />

         </td>
     </tr>


 </table>


        </div>
    </form>
</body>
</html>
