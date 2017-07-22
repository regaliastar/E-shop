$(document).ready(function(){
	$('#register').on('click',function(evt){
		var uname = $('#uname').val().trim();
		var pw = $('#pw').val().trim();
		var cp = $('#cp').val().trim();

		if(uname === ''){
			evt.preventDefault();
			alert('用户名不能为空');
			//layer.msg('用户名不能为空');
			return;
		}

		if(pw === ''){
			evt.preventDefault();
			alert('密码不能为空');
			return;
		}

		if(pw !== cp){
			evt.preventDefault();
			alert('请再次确认密码');
			return;
		}

		if(!$("#licence").is(':checked')){
			evt.preventDefault();
			alert('用户协议未选中');
			return;
		}


	})
})