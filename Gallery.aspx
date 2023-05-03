<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="VehicleProject.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br/>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 71px;
        }
        .auto-style3 {
            width: 772px;
        }
        .auto-style4 {
            margin-left: 73px;
        }
    </style>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="
                "></asp:Label></td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:DataList ID="DataList1" runat="server" BorderColor="Lime" BorderWidth="3px" CellPadding="10" CellSpacing="10" DataKeyField="Chassis_Num" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal" Width="1084px" CssClass="auto-style4" OnItemCommand="Button1_Command" >
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="101px" ImageUrl='<%# Eval("Photo") %>' Width="132px" />
                        <br />
                        Model:
                        <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                        <br />
                        Make:
                        <asp:Label ID="MakeLabel" runat="server" Text='<%# Eval("Make") %>' />
                        <br />
                        Chassis_Num:
                        <asp:Label ID="Chassis_NumLabel" runat="server" Text='<%# Eval("Chassis_Num") %>' />
                        <br />
                        License_reg:
                        <asp:Label ID="License_regLabel" runat="server" Text='<%# Eval("License_reg") %>' />
                        <br />
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Chassis_Num") %>' CommandName='<%# Eval("License_reg") %>' Text='Click Here' OnCommand="Button1_Command" />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EC1_ID_GRPConnectionString %>" SelectCommand="SELECT [Photo], [License_reg], [Chassis_Num], [Make], [Model] FROM [Vehicle_Info] WHERE ([Owner] = @Owner)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="Owner" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


