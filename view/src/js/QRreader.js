window.addEventListener('load', () => {
    startQR();
});

const video = document.createElement('video');
const canvasElement = document.getElementById('canvas');
const canvas = canvasElement.getContext('2d');
const loadingMessage = document.getElementById('loadingMessage');
const outputContainer = document.getElementById('output');
const outputMessage = document.getElementById('outputMessage');



const startQR = () => {
    navigator.mediaDevices.getUserMedia({
        video: {
            audio: false,
            facingMode: 'environment'//'user' でインカメを使う
        }
    }).then((stream) => {
        video.srcObject = stream;
        video.setAttribute('playsinline', true);
        video.play();
        requestAnimationFrame(tick);
    }).catch((err) => {
        alert(err.message)
    })
};


//QRの解析
function tick() {
    loadingMessage.innerHTML = 'Loading video...';
    if (video.readyState === video.HAVE_ENOUGH_DATA) {
        loadingMessage.hidden = true;
        canvasElement.hidden = false;
        outputContainer.hidden = false;

        canvasElement.height = video.videoHeight;
        canvasElement.width = video.videoWidth;
        canvas.drawImage(video, 0, 0, canvasElement.width, canvasElement.height);
        //CanvasのgetImageDataメソッドで指定範囲のImageDataオブジェクトを取得する
        const imageData = canvas.getImageData(0, 0, canvasElement.width, canvasElement.height);
        //jsQRのメソッド
        const code = jsQR(imageData.data, imageData.width, imageData.height, {
            inversionAttempts: 'dontInvert',
        });

        //QRが読み込めた時の挙動
        if (code) {
            drawLine(code.location.topLeftCorner, code.location.topRightCorner, "#FF3B58");
            drawLine(code.location.topRightCorner, code.location.bottomRightCorner, "#FF3B58");
            drawLine(code.location.bottomRightCorner, code.location.bottomLeftCorner, "#FF3B58");
            drawLine(code.location.bottomLeftCorner, code.location.topLeftCorner, "#FF3B58");
            outputMessage.hidden = true;
            video.style.display = 'none';
            video.pause();
            
            put(code.data);

        } else {
            outputMessage.hidden = false;
        }
    }
    requestAnimationFrame(tick);
};


//QRを囲むライン
const drawLine = (begin, end, color) => {
    canvas.beginPath();
    canvas.moveTo(begin.x, begin.y);
    canvas.lineTo(end.x, end.y);
    canvas.lineWidth = 4;
    canvas.strokeStyle = color;
    canvas.stroke();
};

//off
const videoOff = () => {
    video.pause();
    video.src = "";
    video.srcObject.getTracks()[0].stop();
};

async function put(a) {
    const query = location.search;
    const value = query.split('=');
    
    const value2 = a.split('=');
    const rurl = 'http://localhost:1323/attendances/'+value2[0]+'/'+value2[1]+'/'+value[3]+'/'+value[4]+'/'+value2[2];
    console.log(rurl);

    const myHeaders = new Headers();
    myHeaders.append('Content-Type', 'application/x-www-form-urlencoded; charset=utf-8');
    myHeaders.append('Access-Control-Allow-Origin', 'http://localhost:1323');

    const parameter = {
        method: 'PUT',
        headers: myHeaders,
    }

    const result = await fetch(rurl, parameter).then((response) => {
        return response.json();
    });

    console.log(result);
    const url='./check?name='+value[1]+'='+value[2]+'='+value[3]+'='+value[4]+'='+value2[1]+'='+value2[2];
    window.location.href = url;
}

