
        /*function checkForm(form) {
            if(form.registerName.value == "") {
                alert("错误：用户名不能为空！");
                form.registerName.focus();
                return false;
            }
            else if(form.registerPassword.value!=form.registerPasswordConfirm.value) {
                alert("错误：请检查并确认您输入的密码是否一致！");
                form.registerPassword.focus();
                return false;
            }
            alert("You entered a valid password: " + form.registerPassword.value);
            return true;
        }*/
/*       function checkPwd(input) {

            var pwd = document.getElementById("pwd").value;
            // alert(pwd);
            if (input.value != pwd) {
                input.setCustomValidity("两次密码输入不一致！");
                document.getElementById("confirm-pwd").innerHTML = "两次密码输入不一致！";
            } else {
                input.setCustomValidity('');
            }
        }

        function checkClass(input) {
            var classNum = input.value.substring(input.value.length - 4);
            var reg = /^[0-9]+$/;
            if (!reg.test(classNum)) {
                input.setCustomValidity("这不是一个班级名称");
            } else {
                input.setCustomValidity('');

            }
        }

        function checkAccount(input) {
            var acc = input.value;
            var reg = /^[\u4e00-\u9fa5]{0,}$/;
            var fileUrl = "../users/" + acc + "/userconfig.txt";
            // alert(fileUrl);
            if (reg.test(acc)) {
                input.setCustomValidity("姓名不可用！");
            } else {
                var fso = new XMLHttpRequest();
                fso.open("GET", fileUrl, false);
                fso.send();
                if (fso.readyState == 4) {
                    if (fso.status == 200) {
                        input.setCustomValidity("姓名已存在！");
                        document.getElementById("accountFeedBack").innerHTML = "姓名已存在！";
                    } //url存在  
                    else if (fso.status == 404) {
                        input.setCustomValidity('');
                    } else {
                        input.setCustomValidity("未知错误！");
                        document.getElementById("accountFeedBack").innerHTML = "未知错误！";
                    }; //其他状态  
                }
            }
        }

        function checkImg(input) {
            // alert("!");
            var fileType = input.value.substring(input.value.lastIndexOf("."), input.value.length);
            var fileSize = input.files[0].size;
            // alert(fileType);
            if (fileType != ".jpg" && fileType != ".jpeg") {
                input.setCustomValidity("请选择一个jpg文件！");
            } else if (fileSize > 500000) {
                input.setCustomValidity("文件过大！请选择一个500kb内的文件");
                document.getElementById("AvatarFeedback").innerHTML = "文件过大！请选择一个500kb内的文件！";
            } else {
                input.setCustomValidity('');
            }
        }
*/
//获取上传按钮
var input1 = document.getElementById("upload");
 if (typeof FileReader === 'undefined') {
     //result.innerHTML = "抱歉，你的浏览器不支持 FileReader"; 
     input1.setAttribute('disabled', 'disabled');
 } else {
     input1.addEventListener('change', readFile, false);
     /*input1.addEventListener('change',function (e){
  console.log(this.files);//上传的文件列表
},false); */
 }

 function readFile() {
     var file = this.files[0]; //获取上传文件列表中第一个文件
     if (!/image\/\w+/.test(file.type)) {
         //图片文件的type值为image/png或image/jpg
         alert("文件必须为图片！");
         return false;
     }
     // console.log(file);
     var reader = new FileReader(); //实例一个文件对象
     reader.readAsDataURL(file); //把上传的文件转换成url
     //当文件读取成功便可以调取上传的接口
     reader.onload = function(e) {
         // console.log(this.result);//文件路径
         // console.log(e.target.result);//文件路径
         /*var data = e.target.result.split(',');
 var tp = (file.type == 'image/png')? 'png': 'jpg';
 var imgUrl = data[1];//图片的url，去掉(data:image/png;base64,)
 //需要上传到服务器的在这里可以进行ajax请求
 // console.log(imgUrl);
 // 创建一个 Image 对象 
 var image = new Image();
 // 创建一个 Image 对象 
 // image.src = imgUrl;
 image.src = e.target.result;
 image.onload = function(){
     document.body.appendChild(image);
 }*/
         var image = new Image();
         // 设置src属性 
         image.src = e.target.result;
         var max = 200;
         // 绑定load事件处理器，加载完成后执行，避免同步问题
         image.onload = function() {
             // 获取 canvas DOM 对象 
             var canvas = document.getElementById("cvs"); 
             // 如果高度超标 宽度等比例缩放 *= 
             /*if(image.height > max) {
         image.width *= max / image.height; 
         image.height = max;
     } */
             // 获取 canvas的 2d 环境对象, 
             var ctx = canvas.getContext("2d");
             // canvas清屏 
             ctx.clearRect(0, 0, canvas.width, canvas.height);
             // 重置canvas宽高
             /*canvas.width = image.width;
     canvas.height = image.height;
     if (canvas.width>max) {canvas.width = max;}*/
             // 将图像绘制到canvas上
             // ctx.drawImage(image, 0, 0, image.width, image.height);
             ctx.drawImage(image, 0, 0, 200, 200);
             // 注意，此时image没有加入到dom之中
         };
     }
 };

/*
            //刷新or取消
            document.getElementById('i77').onclick = function(){
                location.reload();
            }
            document.getElementById('i222').onclick = function(){
                location.reload();
            }
*/
            //用户名验证
            function checkname(){ 
                var div = document.getElementById("div1"); 
                div.innerHTML = ""; 
                var name1 = document.tijiao.registerName.value; 
                if (name1 == "") {
                div.innerHTML = "姓名不能为空！"; 
                document.tijiao.registerName.focus();      
                return false; 
            }
                if (name1.length < 2 || name1.length > 16) { 
                div.innerHTML = "长度2-16个字符"; 
                document.tijiao.registerName.select(); 
                return false; 
            } 
                var charname1 = name1.toLowerCase(); 
                for (var i = 0; i < name1.length; i++) { 
                var charname = charname1.charAt(i); 
                if (!(charname >= 0 && charname <= 9) && (!(charname >= 'a' && charname <= 'z')) && (charname != '_')) { 
                    div.innerHTML = "用户名包含非法字符"; 
                    document.form1.registerName.select(); 
                    return false; 
                } 
            } 
                return true;
        }

            //密码验证
            function checkpassword(){ 
                var div = document.getElementById("div2"); 
                div.innerHTML = ""; 
                var password = document.tijiao.password.value; 
                if (password == "") { 
                div.innerHTML = "密码不能为空"; 
                document.tijao.password.focus(); 
                return false; 
            } 
                if (password.length < 4 || password.length > 16) { 
                div.innerHTML = "密码长度为4-16位"; 
                document.tijiao.password.select(); 
                return false; 
                } 
                return true; 
        }

            function checkrepassword(){ 
                var div = document.getElementById("div3"); 
                div.innerHTML = ""; 
                var password = document.tijiao.password.value; 
                var repass = document.tijiao.passwordConfirm.value; 
                if (repass == "") { 
                div.innerHTML = "密码不能为空"; 
                document.tijiao.passwordConfirm.focus(); 
                return false; 
            } 
                if (password != repass) { 
                div.innerHTML = "密码不一致"; 
                document.tijiao.passwordConfirm.select(); 
                return false; 
            } 
                return true; 
        }

//学号非空+长度+合法性验证
function checkstuno(){
    var div = document.getElementById("div4"); 
    div.innerHTML = ""; 
    var stuno = document.tijiao.registerNumber.value; 
    if (stuno == "") {
    div.innerHTML = "学号不能为空！"; 
    document.tijiao.registerNumber.focus();      
    return false; 
}    
    if (stuno.length < 13 || stuno.length > 13) { 
    div.innerHTML = "长度为13个字符"; 
    document.tijiao.registerNumber.select(); 
    return false; 
} 
    var id1 = stuno.toLowerCase(); 
    for (var i = 0; i < stuno.length; i++) { 
    var id = id1.charAt(i); 
    if (!(id >= 0 && id <= 9) && (!(id >= 'a' && id <= 'z')) && (id != '_')) { 
        div.innerHTML = "用户名包含非法字符"; 
        document.form1.registerNumber.select(); 
        return false; 
    } 
} 
    return true;
}



function checksex(){
    var div = document.getElementById("div5"); 
    div.innerHTML = ""; 
	if(document.tijiao.registerGender[0].checked==false&&document.tijiao.registerGender[1].checked==false ){
		div.innerHTML = "必须选择性别！"; 
        document.tijao.registerGender.focus(); 
        return false; 
	}
	  return true;
}

function checkdept(){
	if (document.tijiao.registerClass.selectedIndex==0){
		alert("请选择院系");
		return false;
	}
	    return true;
}

function checklove()
  {
    c=0;
	for (var i=0;i<document.tijiao.registerLove.length;i++)
     {
      if (document.tijiao.registerLove[i].checked==true)
      c++;
     }
	if (c==0){
	    alert("请选择个人爱好");
		return false;
	}
	    return true;
}


            function check(){ 
            if (checkname() && checkstuno() &&  checkpassword() && checkrepassword() && checksex()&&checklove()&&checkdept() ) { 
            return true;    
            } 
            else { 
            return false; 
        } 
    } 
