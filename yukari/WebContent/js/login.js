//用户名
function checkUserName() {
	var uName = document.getElementById("userName");

	if(uName.value.trim().length == 0) {
		alert("用户昵称不能为空！");		
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
	if(uPasswork.value.trim().length == 0) {
		alert("密码不能为空！");
		return false;
	}
	if(uPasswork.value.trim().length < 6 || uPasswork.value.trim().length > 16) {
		alert("密码无效，应该是6-16个字符");	
		return false;
	}	
	return true;
}
//验证码
function checValidationCode() {
	var uValidationCode = document.getElementById("validationCode")
	var uValidationCode2 = document.getElementById("validationCode2")
	if(uValidationCode.value.trim().length == 0){
		alert("验证码不能为空，请输入验证码！");
		uValidationCode.focus();
		return false;
	}
	if(uValidationCode.value.trim() !=uValidationCode2.value.trim()){
	alert("请输入正确的验证吗！！");	
	return false;
    }
	return true;
	}
//登录界面
function checkAll_01(){
	if(!checkUserName()|| !checkPasswork()||!checValidationCode() ){
		return false;
	}else {
		return true;
	}
}