<%@ Page Title="Xóa Sinh Viên" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Xoasv.aspx.cs" Inherits="ThanhVien_Xoasv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
        #h1xoa {
            text-align:center;
            font-size:xx-large;
            
        }
        div#detailxoa{
           color:black;
           
        }
        
    </style>
    <h1 id="h1xoa">XÓA SINH VIÊN</h1>
    <p id="xoasv">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaSV" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="900" Font-Size="X-Large"  ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaSV" HeaderText="MaSV" ReadOnly="True" SortExpression="MaSV" />
                <asp:BoundField DataField="TenSV" HeaderText="TenSV" SortExpression="TenSV" />
                <asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                <asp:BoundField DataField="GhiChu" HeaderText="GhiChu" SortExpression="GhiChu" />
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
        <div id="detailxoa">
        <asp:DetailsView ID="DetailsView" runat="server" AllowPaging="True" AutoGenerateRows="False" Font-Size="X-Large" DataKeyNames="MaSV" DataSourceID="SqlDataSource1" Height="50px" Width="525px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="MaSV" HeaderText="MaSV" ReadOnly="True" SortExpression="MaSV" />
                <asp:BoundField DataField="TenSV" HeaderText="TenSV" SortExpression="TenSV" />
                <asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                <asp:BoundField DataField="GhiChu" HeaderText="GhiChu" SortExpression="GhiChu" />
                <asp:CommandField ShowDeleteButton="True" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csdlSinhVienConnectionString1 %>" DeleteCommand="DELETE FROM [Table] WHERE [MaSV] = @MaSV" InsertCommand="INSERT INTO [Table] ([MaSV], [TenSV], [GioiTinh], [DiaChi], [GhiChu]) VALUES (@MaSV, @TenSV, @GioiTinh, @DiaChi, @GhiChu)" ProviderName="<%$ ConnectionStrings:csdlSinhVienConnectionString1.ProviderName %>" SelectCommand="SELECT [MaSV], [TenSV], [GioiTinh], [DiaChi], [GhiChu] FROM [Table]" UpdateCommand="UPDATE [Table] SET [TenSV] = @TenSV, [GioiTinh] = @GioiTinh, [DiaChi] = @DiaChi, [GhiChu] = @GhiChu WHERE [MaSV] = @MaSV">
            <DeleteParameters>
                <asp:Parameter Name="MaSV" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSV" Type="Int32" />
                <asp:Parameter Name="TenSV" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="GhiChu" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenSV" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="GhiChu" Type="String" />
                <asp:Parameter Name="MaSV" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
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

