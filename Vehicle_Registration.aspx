<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Vehicle_Registration.aspx.cs" Inherits="VehicleProject.Vehicle_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: 500px">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            width: 338px;
        }
        .auto-style2 {
            margin-right: 0px;
            margin-left: 0px;
        }
    </style>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Chassis_Num" DataSourceID="SqlDataSource1" BorderColor="Gray" BorderWidth="10px" CellPadding="10" CellSpacing="10" GridLines="Both" RepeatColumns="1" RepeatDirection="Horizontal" OnItemDataBound="DataList1_ItemDataBound" CssClass="auto-style2">
        <ItemTemplate>
            <div class="auto-style1">
                <br />
                <asp:Image ID="Image1" runat="server" Height="178px" ImageUrl='<%# Eval("Photo") %>' Width="225px" />
                <br />
                <br />
                License_reg:
                <asp:Label ID="License_regLabel" runat="server" Text='<%# Eval("License_reg") %>' />
                <br />
                Chassis_Num:
                <asp:Label ID="Chassis_NumLabel" runat="server" Text='<%# Eval("Chassis_Num") %>' />
                <br />
                Make:
                <asp:Label ID="MakeLabel" runat="server" Text='<%# Eval("Make") %>' />
                <br />
                Model:
                <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Insurance Status"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Fitness Status"></asp:Label>
                &nbsp;<br /> <asp:Label ID="Insurstatus" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Fitstatus" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="ibtn" runat="server" Height="25px" Text="Update Insurance" Visible="False" Width="114px" OnClick="ibtn_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <asp:Button ID="fbtn" runat="server" Height="25px" Text="Update Fitness" Visible="False" Width="106px" OnClick="fbtn_Click" />
                <br />
                <br />
                &nbsp;<asp:Button ID="Button3" runat="server" Height="25px" OnClick="Button3_Click" Text="Update Registration" Visible="False" Width="122px" />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EC1_ID_GRPConnectionString %>" SelectCommand="SELECT Photo, License_reg, Chassis_Num, Make, Model FROM Vehicle_Info WHERE (Chassis_Num = @Chassis_Num)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Chassis_Num" QueryStringField="ID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>

</asp:Content>
