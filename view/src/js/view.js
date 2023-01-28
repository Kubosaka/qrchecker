const btn = document.getElementById('btn');
const stopBtn = document.getElementById('stopBtn');


const changeBtn = () => {
    const btnStart = document.getElementById('startBtn');
    const btnRestart = document.getElementById('restartBtn');
    const toggleBtn = document.getElementById('btn');
    const toggleBtnClass = toggleBtn.getAttribute('class');
    //startボタンと再読み込みボタンを切り替える
    if (toggleBtnClass === 'start') {
        toggleBtn.classList.remove('start');
        toggleBtn.classList.add('restart');
        btnStart.style.display = 'none';
        btnRestart.style.display = 'block';
        startQR();
    } else if (toggleBtnClass === 'restart') {
        startQR();
        outputData.innerText = 'No QR code detected.';
    }
};

btn.addEventListener('click', () => {
    changeBtn();
});

stopBtn.addEventListener('click', () => {
    videoOff();
});
