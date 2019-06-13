<%@ Page Title="Trang chủ" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  
    <div class="baidang">
    <div class="s1">
        <h1 id="hello">Chào mừng đến với lớp CTT11CĐ3A</h1>
    </div>

    <div class="baiviet">
        <br />

      
      <div id="txt1">
     
        
        
        <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/WebServices/NameService.svc" />
        </Services>
    </asp:ScriptManagerProxy>
    <input id="MyWebsite" type="text" />
    <input id="SayHello" type="button" value="Chia sẽ:" onclick="helloWorld();" />
 
    <script type="text/javascript">

        function helloWorld() {
            var myweb = document.getElementById('MyWebsite').value;
            NameService.HelloWorld(myweb, helloWorldCallback);
        }
        function helloWorldCallback(result) {
            alert(result);
        }
        function helloWorldPageMethod() {
            var yourName = document.getElementById('MyWebsite').value;
            PageMethods.HelloWorld(yourName, helloWorldCallback);
        }
   
          
    </script>
      </div>
        <br />
        <br /> 
     <div class="buttons">
		<button class="btn-hover color-5">Ảnh/Video</button>
 
		<button class="btn-hover color-5">Gắn thẻ bạn bè</button>
	 
		<button class="btn-hover color-5">Cảm xúc/Hoạt động</button>
	 </div>
       

    </div>
        </div>

    <div class="s2">
   <h1 id="date"> Thứ hai ngày 6 tháng 5 năm 2019 </h1>
     
            <p>Một số hình ảnh của lớp:</p>
             
            <img src= "../Images/ctt11cd3a.jpg" width="70%" height="auto"  /> <br />
           <p id="time">Được đăng bởi Nguyễn Hữu Thạch vào lúc 12:12</p>
       
    </div>
    <div class="s2">
  <h1 id="date">Thứ 7 ngày 19 tháng 1 năm 2019 </h1>
   
            <br /> Kỷ yếu năm nhất: CTT11CĐ3A<br />
            <br />
            <img src= "../Images/kiyeu.jpg" width="70%" height="auto"  /> <br />
            <p>Xem thêm...<a id="link1" href="Album/kiyeu.aspx">Album Kỉ Yếu</a></p>
        <p id="time">Được đăng bởi Nguyễn Hữu Thạch vào lúc 01:35</p>
            
    </div>
     <div class="s2">
  <h1 id="date">Thứ 4 ngày 5 tháng 12 năm 2018</h1>
   
        <br />
        Trao yêu thương để nhận lại yêu thương
        <br />
        <br />
         <img src= "../Images/hocbong.jpg" width="70%" height="auto"  /> <br />
        <p id="time">Được đăng bởi Nguyễn Hữu Thạch vào lúc 9:02</p>
         
    </div>
     <div class="s2">
    <h1 id="date"> Thứ 5 ngày 8 tháng 1 năm 2018 </h1>
   
        <br /> Đà lạt 2019  <br />   
       
        <img src= "../Images/dalat.jpg" width="70%" height="auto"  /> <br />
        <p>Xem thêm...<a id="link1" href="Album/kiyeu.aspx">Album Đà lạt</a></p>
      
        <p id="time">Được đăng bởi Nguyễn Hữu Thạch vào lúc 19:59</p>
    </div>
     <div class="s2">
    <h1 id="date"> Thứ ba ngày 16 tháng 9 năm 2018 </h1>
   
         <img src= "../Images/hoitrai.jpg" width="70%" height="auto"  /> <br />
     <p id="time">Được đăng bởi Nguyễn Hữu Thạch vào lúc 23:10</p>
    </div>
  
   
</asp:Content>

