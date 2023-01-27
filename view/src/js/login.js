// alert("login!!");
document.getElementById('form').addEventListener('submit', function() {
    loginFunc();
});


function loginFunc() {
    const name=document.getElementById('id');
    const pass=document.getElementById('pass');
    
    const url = 'http://localhost:1323/users'; //usersのJSON
    fetch(url)
    .then(function (data) {
      return data.json(); // 読み込むデータをJSONに設定
    })
    .then(function (json) {
      for (var i = 0; i < json.length; i++) {
        var name1 = json[i].name;
        var email = json[i].email;
        var password = json[i].password;

        if(name1==name.value&&password==pass.value){
            window.location.href = './home.html';
            return;
        }
      }
      alert("ログイン失敗");
    });
}
