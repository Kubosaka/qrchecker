window.addEventListener('load', function() {
    getUserList();
  });
  
function getUserList() {
    var url = '0.0.0.0:8080/users'; //usersのJSON
    fetch(url)
    .then(function (data) {
      return data.json(); // 読み込むデータをJSONに設定
    })
    .then(function (json) {
      for (var i = 0; i < json.length; i++) {
        var name = json[i].name;
        var email = json[i].email;
        var passward = json[i].passward;
  
        //表形式で遅延路線を表示する
        var row = document.getElementById('user-list').insertRow();
        row.insertCell().textContent = i + 1;
        row.insertCell().textContent = name;
        row.insertCell().textContent = email;
        row.insertCell().textContent = passward;
      }
    });
}
