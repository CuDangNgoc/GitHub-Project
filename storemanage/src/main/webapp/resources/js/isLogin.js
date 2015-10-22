
var text = (document.getElementById("tentaikhoan").textContent).trim();

if(text.length<=11){
	
	alert("vui lòng đăng nhập để vào được trang này");
	
	window.location ="http://localhost:8080/storemange/";
	
}
