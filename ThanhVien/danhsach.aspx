<%@ Page Title="Danh Sách" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="danhsach.aspx.cs" Inherits="ThanhVien_danhsach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" Width="900" DataKeyNames="Ma" DataSourceID="SqlDataSource1" Font-Size="X-Large" EmptyDataText="There are no data records to display.">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Ma" HeaderText="Ma" ReadOnly="True" SortExpression="Ma" />
        <asp:BoundField DataField="Ten" HeaderText="Ten" SortExpression="Ten" />
    </Columns>
</asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Ma" DataSourceID="SqlDataSource1" DefaultMode="Insert" Font-Size="X-Large" Height="50px" Width="525px">
        <Fields>
            <asp:BoundField DataField="Ma" HeaderText="Ma" ReadOnly="True" SortExpression="Ma" />
            <asp:BoundField DataField="Ten" HeaderText="Ten" SortExpression="Ten" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Table] WHERE [Ma] = @Ma" InsertCommand="INSERT INTO [Table] ([Ma], [Ten]) VALUES (@Ma, @Ten)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [Ma], [Ten] FROM [Table]" UpdateCommand="UPDATE [Table] SET [Ten] = @Ten WHERE [Ma] = @Ma">
    <DeleteParameters>
        <asp:Parameter Name="Ma" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Ma" Type="Int32" />
        <asp:Parameter Name="Ten" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Ten" Type="String" />
        <asp:Parameter Name="Ma" Type="Int32" />
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

