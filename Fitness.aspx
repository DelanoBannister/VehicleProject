<%@ Page Title="FITNESS" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Fitness.aspx.cs" Inherits="VehicleProject.Fitness" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 946px;
            height: 140px;
        }
        .auto-style4 {
            width: 308px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 308px;
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
            width: 546px;
        }
        .auto-style9 {
            width: 541px;
        }
        .auto-style11 {
            width: 535px;
        }
        .auto-style12 {
            text-align: center;
            width: 399px;
        }
        .auto-style13 {
            width: 399px;
        }
        </style>
    <div class="auto-style11">
    <br />       
        <table class="auto-style1" style="background-color: #00CC99; background-position: center center">
            <tr>
                <td class="auto-style6">       
        <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="Medium" ForeColor="Black" Text="Please Enter Licence Plate Number: " CssClass="auto-style5"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox2" runat="server" Width="397px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style13"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style13"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style12">
        <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="Black" Text="Search" Width="335px" />
                </td>
                <td class="auto-style8"></td>
            </tr>
        </table>
        <br />
        <br />
        
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            Visible="False" DataSourceID="SqlDataSource1" CssClass="auto-style5" AutoGenerateColumns="False" DataKeyNames="Chassis_Num" Width="835px" OnRowUpdating="GridView1_RowUpdating" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Chassis_Num" HeaderText="Chassis_Num" ReadOnly="True" SortExpression="Chassis_Num" />
                <asp:BoundField DataField="Insurance_Date" HeaderText="Insurance_Date" SortExpression="Insurance_Date" />
                <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Owner" HeaderText="Owner" SortExpression="Owner" />
                <asp:CommandField ButtonType="Button" EditText="Modify Date" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataTemplate>
                ALL VEHICLES FITNESS ARE UP-TO-DATE
            </EmptyDataTemplate>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EC1_ID_GRPConnectionString %>" SelectCommand="SELECT [Chassis_Num], [Fitness_Num], [Make], [Model], [License_reg] FROM [VIEW_ALL_Vehicles] WHERE (([License_reg] = @License_reg) AND ([Fitness_Num] > @date))">
                <SelectParameters>
                    <asp:SessionParameter Name="License_reg" SessionField="ln" />
                    <asp:SessionParameter Name="date" SessionField="date" />
                </SelectParameters>
            </asp:SqlDataSource>
    <br />
        </div>

</asp:Content>
