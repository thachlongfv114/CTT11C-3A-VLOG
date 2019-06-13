<%@ Page Title="Xóa Sinh Viên" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Xoasv.aspx.cs" Inherits="ThanhVien_Xoasv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
        #h1xoa {
            text-align:center;
            font-size:xx-large;
            
        }
        #xoasv {
            margin-top:50px;
        }
    </style>
    <h1 id="h1xoa">XÓA SINH VIÊN</h1>
    <p id="xoasv">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" Font-Size="X-Large" DataKeyNames="MaSV" DataSourceID="SqlDataSource1"  Width="900px" EmptyDataText="There are no data records to display." AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="MaSV" HeaderText="Mã Sinh Viên" ReadOnly="True" SortExpression="MaSV" />
            <asp:BoundField DataField="TenSV" HeaderText="Tên Sinh Viên" SortExpression="TenSV" />
            <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" SortExpression="GioiTinh" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
           <%-- <asp:BoundField DataField="MaKhoa" HeaderText="MaKhoa" SortExpression="MaKhoa" />--%>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
        <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MaSV" Font-Size="X-Large" DataSourceID="SqlDataSource1" Height="50px" Width="525px" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="MaSV" HeaderText="Mã Sinh Viên" ReadOnly="True" SortExpression="MaSV" />
            <asp:BoundField DataField="TenSV" HeaderText="Tên Sinh Viên" SortExpression="TenSV" />
            <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" SortExpression="GioiTinh" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
<%--            <asp:BoundField DataField="MaKhoa" HeaderText="MaKhoa" SortExpression="MaKhoa" />--%>
            <asp:CommandField ShowDeleteButton="True" />
        </Fields>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:qllhctt11cd3aConnectionString1 %>" DeleteCommand="DELETE FROM [sinhvienct11] WHERE [MaSV] = @MaSV" InsertCommand="INSERT INTO [sinhvienct11] ([MaSV], [TenSV], [GioiTinh], [DiaChi], [MaKhoa]) VALUES (@MaSV, @TenSV, @GioiTinh, @DiaChi, @MaKhoa)" ProviderName="<%$ ConnectionStrings:qllhctt11cd3aConnectionString1.ProviderName %>" SelectCommand="SELECT [MaSV], [TenSV], [GioiTinh], [DiaChi], [MaKhoa] FROM [sinhvienct11]" UpdateCommand="UPDATE [sinhvienct11] SET [TenSV] = @TenSV, [GioiTinh] = @GioiTinh, [DiaChi] = @DiaChi, [MaKhoa] = @MaKhoa WHERE [MaSV] = @MaSV">
        <DeleteParameters>
            <asp:Parameter Name="MaSV" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSV" Type="String" />
            <asp:Parameter Name="TenSV" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="MaKhoa" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSV" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="MaKhoa" Type="String" />
            <asp:Parameter Name="MaSV" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </p>
     <h1 ><a href="../ThanhVien/danhsach.aspx" id="themsv">Trở lại...</a></h1>
     <style>
        DetailsView#DetailsView1 {
            text-align:left;
        }
        h1 {
            text-align:left;
        }
        a#themsv{
                font-size:x-large;        
                color:red;
                
        }
        a#themsv:hover {
            color:aqua;
        }
    </style>

</asp:Content>

