<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="VehicleProject.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
            text-decoration: underline;
        }
    </style>
        <table class="auto-style2">
            <tr>
                <td class="auto-style1">
    <asp:Label ID="homelab" runat="server" CSSclass="btn" Text="Home" Font-Underline="False" Font-Size="Medium" Font-Italic="True" Font-Bold="False" Width="100%"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>REGISTERED VEHICLES ON THIS ACCOUNT</strong></td>
            </tr>
        </table>
    <br />

        <div class="auto-style1">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="Chassis_Num" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" BorderColor="Black" BorderWidth="5px" CellPadding="10" CellSpacing="10" GridLines="Both" Width="888px">
        <ItemTemplate>
            <div class="auto-style1">
                <asp:Image ID="Image1" runat="server" Height="123px" ImageUrl='<%# Eval("Photo") %>' Width="185px" />
                <br />
                <br />
                Chassis_Num:
                <asp:Label ID="Chassis_NumLabel" runat="server" Text='<%# Eval("Chassis_Num") %>' />
                <br />
                Insurance_Date:
                <asp:Label ID="Insurance_DateLabel" runat="server" Text='<%# Eval("Insurance_Date") %>' />
                <br />
                Fitness_Num:
                <asp:Label ID="Fitness_NumLabel" runat="server" Text='<%# Eval("Fitness_Num") %>' />
                <br />
                Make:
                <asp:Label ID="MakeLabel" runat="server" Text='<%# Eval("Make") %>' />
                <br />
                Model:
                <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                <br />
                Owner:
                <asp:Label ID="OwnerLabel" runat="server" Text='<%# Eval("Owner") %>' />
                <br />
                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Chassis_Num") %>' CommandName='<%# Eval("License_reg") %>' Text='Update Motor Vehicle Registration' OnCommand="Button1_Command" />
                <br />
                <br />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>


        </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EC1_ID_GRPConnectionString %>" SelectCommand="SELECT * FROM [VIEW_ALL_Vehicles] WHERE ([Owner] = @Owner)">
        <SelectParameters>
            <asp:SessionParameter Name="Owner" SessionField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

