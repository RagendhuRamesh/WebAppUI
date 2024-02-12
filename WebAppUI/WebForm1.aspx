<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebAppUI.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        width: 100%;
        height: 449px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style10">
        <tr>
            <td><h1>Classes For Students</h1></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GV2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ClassID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="254px" Width="471px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ClassID" HeaderText="ClassID" ReadOnly="True" SortExpression="ClassID" />
                        <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolDBConnectionString3 %>" DeleteCommand="DELETE FROM [Classes] WHERE [ClassID] = @original_ClassID AND (([ClassName] = @original_ClassName) OR ([ClassName] IS NULL AND @original_ClassName IS NULL))" InsertCommand="INSERT INTO [Classes] ([ClassID], [ClassName]) VALUES (@ClassID, @ClassName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowSchoolDBConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Classes]" UpdateCommand="UPDATE [Classes] SET [ClassName] = @ClassName WHERE [ClassID] = @original_ClassID AND (([ClassName] = @original_ClassName) OR ([ClassName] IS NULL AND @original_ClassName IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ClassID" Type="Int32" />
                        <asp:Parameter Name="original_ClassName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ClassID" Type="Int32" />
                        <asp:Parameter Name="ClassName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ClassName" Type="String" />
                        <asp:Parameter Name="original_ClassID" Type="Int32" />
                        <asp:Parameter Name="original_ClassName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    
</asp:Content>
