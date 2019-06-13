<%@ Page Title="Danh Sách" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="danhsach.aspx.cs" Inherits="ThanhVien_danhsach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <%-- <p id="ds"> Thành viên nam của lớp CTT11CĐ3A </p>
   <p>
        Thêm Thành Viên Mới:
        </p>
      <p>
    <asp:Label ID="ds" runat="server" Text="Nhập Tên"></asp:Label>
    <asp:TextBox ID="TextBox10" Width="30%" Height="30px" runat="server"></asp:TextBox><br />
    <asp:Button ID="Button1" Width="70px" Height="30px" runat="server" Text="Thêm" OnClick="Button1_Click" />
    <div class="nam">
          </p>
       
    <p id="namm">
       
   1. Nguyễn Hoàng Anh <br />

    2.Nguyễn Tuấn Anh <br />
  
    3.Phạm Quốc Cường<br />
    4.Trần Thanh Huy <br />
       
    5.Nguyễn Hồng Nhật Lâm<br />
       
    6.Võ Hoàng Lâm <br />
       
    7.Trần Đức Lĩnh<br />
        
    8.Vương Trần Đắc Lợi<br />
    9.Lê Quốc Huy<br />
        
    10.Nguyễn Dương Nam<br />
         
    11.Hà Văn Tâm<br />
        
    12.Lê Thành Tây<br />
        
    13.Nguyễn Hữu Thạch<br />
       
    14.Nguyễn Văn Tiến<br />
     
    15.Phạm Gia Trung<br />
       
       16. Huỳnh Trần Anh Tiến<br />
       
        17.Nguyễn Trung Nguyên<br />
       
        18.Nguyễn Hoàng Minh Trí<br />
       
        19.Đặng Hữu Hiệp<br />
        20.Nguyễn Phúc Hậu<br />
       
        21.Đỗ Hoàng Huy<br />
        <asp:Label ID="Label10" runat="server" Text=""></asp:Label>

    </p>
        </div>--%>
    <h1>Danh Sách Sinh Viên Lớp CTT11CĐ3A</h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" Width="900" Font-Size="Large" DataKeyNames="MaSV" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MaSV" HeaderText="Mã Sinh Viên" ReadOnly="True" SortExpression="MaSV" />
            <asp:BoundField DataField="TenSV" HeaderText="Tên Sinh Viên" SortExpression="TenSV" />
            <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" SortExpression="GioiTinh" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
           <%-- <asp:BoundField DataField="MaKhoa" HeaderText="Mã Khoa" SortExpression="MaKhoa" />--%>
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
    <br />
    <style>
        h1 {
           text-align:left;
        }
        #Content2 {
            text-align:left;
        }
        h1 #themsv {
            color:black;
        }
        h1 #themsv:hover {
            color:aqua;
        }
        
    </style>
   
    <br />
    <h1 >
        <a href="../ThanhVien/themsv.aspx" id="themsv">Thêm Sinh Viên</a></h1>
     <h1 >
        <a href="../ThanhVien/Xoasv.aspx" id="themsv">Xóa Sinh Viên</a></h1>
    
    </asp:Content>

