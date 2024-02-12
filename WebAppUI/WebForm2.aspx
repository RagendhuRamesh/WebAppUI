<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebAppUI.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        width: 100%;
        height: 457px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style10">
        <tr>
            <td><h1>Subject Available</h1></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GV3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SubjectID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="241px" Width="488px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="SubjectID" HeaderText="SubjectID" ReadOnly="True" SortExpression="SubjectID" />
                        <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" SortExpression="SubjectName" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolDBConnectionString6 %>" DeleteCommand="DELETE FROM [Subjects] WHERE [SubjectID] = @original_SubjectID AND (([SubjectName] = @original_SubjectName) OR ([SubjectName] IS NULL AND @original_SubjectName IS NULL))" InsertCommand="INSERT INTO [Subjects] ([SubjectID], [SubjectName]) VALUES (@SubjectID, @SubjectName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowSchoolDBConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM [Subjects]" UpdateCommand="UPDATE [Subjects] SET [SubjectName] = @SubjectName WHERE [SubjectID] = @original_SubjectID AND (([SubjectName] = @original_SubjectName) OR ([SubjectName] IS NULL AND @original_SubjectName IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_SubjectID" Type="Int32" />
                        <asp:Parameter Name="original_SubjectName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="SubjectID" Type="Int32" />
                        <asp:Parameter Name="SubjectName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SubjectName" Type="String" />
                        <asp:Parameter Name="original_SubjectID" Type="Int32" />
                        <asp:Parameter Name="original_SubjectName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    
</asp:Content>
