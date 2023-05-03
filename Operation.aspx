<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Operation.aspx.cs" Inherits="VehicleProject.Operation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style type="text/css">
        .auto-style1 {
            width: 917px;
            height: 184px;
        }
        .auto-style2 {
            width: 189px;
        }
        .auto-style3 {
            width: 189px;
            text-align: center;
            height: 51px;
        }
        .auto-style4 {
            text-align: center;
            width: 443px;
            height: 51px;
        }
        .auto-style5 {
            width: 443px;
        }
        .auto-style6 {
            height: 51px;
        }
        .auto-style7 {
            width: 443px;
            text-align: center;
        }
    </style>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" Height="44px" TextMode="Date" Width="417px"></asp:TextBox>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" Height="36px" Text="Button" Width="165px" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>




</asp:Content>
