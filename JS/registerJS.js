            function check(){ 
                if (checkname() && checkstuno() &&  checkpassword() && checkrepassword()) { 
                return true;    
                } 
                else { 
                return false; 
                } 
            } 

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
            var chinese = /[\u4E00-\u9FA5]/;//正则表达式
            var charname1 = name1.toLowerCase(); 
            for (var i = 0; i < name1.length; i++) { 
            var charname = charname1.charAt(i); 
            if (!charname.match(chinese)) { 
                div.innerHTML = "用户名包含非法字符"; 
                document.form1.registerName.select(); 
                return false; 
            } 
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
    if (!(id >= 0 && id <= 9)) { 
        div.innerHTML = "学号包含非法字符！"; 
        document.form1.registerNumber.select(); 
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
