<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="WebAppUI.WebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        width: 100%;
        height: 459px;
    }
</style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table class="auto-style10">
        <tr>
            <td><h1>Students Details</h1></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GV1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowSorting="True" Height="278px" Width="675px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="ClassID" HeaderText="ClassID" SortExpression="ClassID" />
                        <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolDBConnectionString2 %>" DeleteCommand="DELETE FROM [Student] WHERE [StudentID] = @original_StudentID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([ClassID] = @original_ClassID) OR ([ClassID] IS NULL AND @original_ClassID IS NULL)) AND (([Marks] = @original_Marks) OR ([Marks] IS NULL AND @original_Marks IS NULL))" InsertCommand="INSERT INTO [Student] ([StudentID], [FirstName], [LastName], [ClassID], [Marks]) VALUES (@StudentID, @FirstName, @LastName, @ClassID, @Marks)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowSchoolDBConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [FirstName] = @FirstName, [LastName] = @LastName, [ClassID] = @ClassID, [Marks] = @Marks WHERE [StudentID] = @original_StudentID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([ClassID] = @original_ClassID) OR ([ClassID] IS NULL AND @original_ClassID IS NULL)) AND (([Marks] = @original_Marks) OR ([Marks] IS NULL AND @original_Marks IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_StudentID" Type="Int32" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_ClassID" Type="Int32" />
                        <asp:Parameter Name="original_Marks" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="StudentID" Type="Int32" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="ClassID" Type="Int32" />
                        <asp:Parameter Name="Marks" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="ClassID" Type="Int32" />
                        <asp:Parameter Name="Marks" Type="Int32" />
                        <asp:Parameter Name="original_StudentID" Type="Int32" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_ClassID" Type="Int32" />
                        <asp:Parameter Name="original_Marks" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
   
</asp:Content>
