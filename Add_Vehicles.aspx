<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Add_Vehicles.aspx.cs" Inherits="VehicleProject.Add_Vehicles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <style type="text/css">
        .auto-style1 {
            width: 336px;
            height: 44px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 336px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
    <h2 class="text-center">Please Enter the Vehicle Information<br />
    <table class="w-100">
            <tr>
                <td style="width: 336px">License Reg: </td>
                <td class="text-left">
                    <asp:TextBox ID="TextBox1" runat="server" Width="251px" ValidationGroup="RV"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" ValidationGroup="RV"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 336px">Model</td>
                <td class="text-left">
                    <asp:TextBox ID="name" runat="server" Width="254px" ValidationGroup="RV"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="name" ErrorMessage="Field Required" ValidationGroup="RV"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 336px">Make</td>
                <td class="text-left">
                    <asp:TextBox ID="town" runat="server" Width="251px" ValidationGroup="RV"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="town" ErrorMessage="Field Required" ValidationGroup="RV"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style1">Address</td>
                <td class="auto-style2">
                    <asp:TextBox ID="street" runat="server" Width="254px" TextMode="MultiLine" ValidationGroup="RV"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="street" ErrorMessage="Field Required" ValidationGroup="RV"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 336px">Chassis Number</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="253px" ValidationGroup="RV"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ValidationGroup="RV"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 336px">Photo File</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td style="width: 336px">&nbsp;</td>
                <td class="text-left">
                    <asp:Button ID="Button1" runat="server" CssClass="btn-success" Height="32px" OnClick="Button1_Click" Text="Add Health Center" />
                </td>
            </tr>
            <tr>
                <td style="width: 336px">&nbsp;</td>
                <td>
                    <asp:Label ID="result" runat="server"></asp:Label>
                </td>
            </tr>
    </table>
    </h2>

    <br />
    <br />
</asp:Content>
