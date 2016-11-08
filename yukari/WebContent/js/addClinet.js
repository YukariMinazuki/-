//用户名
function checkUserName() {
	var uName = document.getElementById("userName_01");

	if(uName.value.trim().length == 0) {
		alert("用户昵称不能为空！");
		uName.focus();
		return false;
	}
	if(uName.value.trim().length < 4 || uName.value.trim().length > 12) {
		alert("昵称无效，应该是4-12个字符");
		return false;
	}

	return true;
}
//密码
function checkPasswork() {
	var uPasswork = document.getElementById("password");
	var uPasswork2 = document.getElementById("password2");

	if(uPasswork.value.trim().length == 0) {
		alert("密码不能为空！");
		uPasswork.focus();
		return false;
	}
	if(uPasswork.value.trim().length < 6 || uPasswork.value.trim().length > 16) {
		alert("密码无效，应该是6-16个字符");
		return false;
	}
	if(uPasswork.value.trim() != uPasswork2.value.trim()) {
		alert("密码不一致！");
		return false;
	}

	return true;
}
//姓名
function checkClientName() {
	var uClientName = document.getElementById("clientName");

	if(uClientName.value.trim().length == 0) {
		alert("姓名不能为空！");
		uClientName.focus();
		return false;
	}
	if(uClientName.value.trim().length < 2 || uClientName.value.trim().length > 12) {
		alert("姓名无效，应该是2-12个字符");
		return false;
	}

	return true;
}
//电话
function checkClientTeiephone(){
	var uPhone = document.getElementById("clientTeiephone");
	var ad = /^1\d{10}$/;
	if(uPhone.value.trim().length ==0){
	alert("电话不能为空！");
	uPhone.focus();
	return false;
}
	if (ad.test(uPhone.value)==false) {
		alert("电话格式不对！");
		uPhone.focus();
		return false;
	}
	
	return true;
}
//邮箱
function checkClientEmail() {
	var uClientEmail = document.getElementById("clientEmail");    
    var reg = /\w+([-+.]\w*@\w+)*\.\w+([-.]\w+)*$/;
    if(uClientEmail.value.trim().length == 0) {
		alert("邮箱不能为空！");
		uClientEmail.focus();
		return false;
	}   
    
	if (reg.test(uClientEmail.value)==false) {
		alert("邮箱格式不对！");
		uClientEmail.focus();
		return false;
	}
	
	return true;
}
function mycheck(){
	if(!checkUserName() || !checkPasswork() || !checkClientName() || !checkClientTeiephone() || !checkClientEmail()) {
		return false;
	} else {
		return true;
	}
}