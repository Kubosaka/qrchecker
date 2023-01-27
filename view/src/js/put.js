async function put() {
    const parameter = {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8'
        },
    }

    const result = await fetch('localhost:1323/attendances/12989393/Computer/22330191/AkiraIyoda/third', parameter).then((response) => {
        return response.json();
    });

    console.log(result);
}
