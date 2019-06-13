<%@ Page Title="Management – SinhVien" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="sinhvien.aspx.cs" Inherits="Management_sinhvien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSV" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="MaSV" HeaderText="MaSV" ReadOnly="True" SortExpression="MaSV" />
            <asp:BoundField DataField="TenSV" HeaderText="TenSV" SortExpression="TenSV" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:BoundField DataField="GhiChu" HeaderText="GhiChu" SortExpression="GhiChu" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webConnectionString1 %>" DeleteCommand="DELETE FROM [sinhvien] WHERE [MaSV] = @MaSV" InsertCommand="INSERT INTO [sinhvien] ([MaSV], [TenSV], [DiaChi], [GhiChu]) VALUES (@MaSV, @TenSV, @DiaChi, @GhiChu)" ProviderName="<%$ ConnectionStrings:webConnectionString1.ProviderName %>" SelectCommand="SELECT [MaSV], [TenSV], [DiaChi], [GhiChu] FROM [sinhvien]" UpdateCommand="UPDATE [sinhvien] SET [TenSV] = @TenSV, [DiaChi] = @DiaChi, [GhiChu] = @GhiChu WHERE [MaSV] = @MaSV">
        <DeleteParameters>
            <asp:Parameter Name="MaSV" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSV" Type="String" />
            <asp:Parameter Name="TenSV" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSV" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
            <asp:Parameter Name="MaSV" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>

