<%@ Page Title="Danh Sách" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="danhsach.aspx.cs" Inherits="ThanhVien_danhsach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
        #h1xoa {
            text-align:center;
            font-size:xx-large;
            
        }
        
    </style>
    <h1 id="h1xoa">DANH SÁCH SINH VIÊN</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSV" Width="900px" Font-Size="X-Large" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowEditButton="True" />
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

