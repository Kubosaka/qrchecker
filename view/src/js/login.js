// alert("login!!");
document.getElementById('form').addEventListener('submit', function() {
    loginFunc();
});


function loginFunc() {
    const uid=document.getElementById('id');
    const pass=document.getElementById('pass');
    
    const url = 'http://localhost:1323/users'; //usersのJSON
    fetch(url)
    .then(function (data) {
      return data.json(); // 読み込むデータをJSONに設定
    })
    .then(function (json) {
      for (var i = 0; i < json.length; i++) {
        var major = json[i].major;
        var grade= json[i].grade;
        var user_id= json[i].user_id;
        var name = json[i].name;
        var email = json[i].email;
        var password = json[i].password;

        if(email==uid.value&&password==pass.value){
            const url='./home?name='+major+'='+grade+'='+user_id+'='+name;
            window.location.href = url;
            return;
        }
      }
      alert("ログイン失敗");
    });
}
