const btnEnviar = document.getElementById('btnEnviar');
const btnEliminar = document.getElementById('btnDelete');

btnEnviar.addEventListener('click', () => {
    let titulo = document.getElementById('titulo').value;
    let tipo = document.getElementById('tipoHospedaje').value;
    let direccion = document.getElementById('direccion').value;

    axios({
        method: 'post',
        url: 'https://localhost:44389/api/hospedaje/',
        data: {
            'titulo': titulo,
            'tipo': tipo,
            'direccion': direccion
        }
    }).then(
        (res) => {
            console.log(res.data);
            location.reload();
        }
    ).catch((err => console.log(err)))
});

btnEliminar.addEventListener('click', () => {
    let id = document.getElementById('identificador').value;
    axios({
        method: 'delete',
        url: 'https://localhost:44389/api/hospedaje/' + id
    }).then(
        (res) => {
            console.log(res.data);
            location.reload();
        }
    ).catch((err => console.log(err)))
});