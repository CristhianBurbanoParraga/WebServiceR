/*function test(text) {
    $.ajax({
        type: "GET",
        url: "http://127.0.0.1:3554/echo?msg=" + text,
        dataType: "json",
        beforeSend: function () {
            
        },
        success: function (data) {
            document.getElementById('imag').innerHTML = data['msg'];
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(jqXHR + "\n" + textStatus + "\n" + errorThrown);
        }
    });
}

function plot() {
    if (document.getElementById('r1').checked) {
        document.getElementById('imag').innerHTML = '<img src="http://127.0.0.1:9814/plotpositive" alt="Casos positivos" style="width:800px;height:700px;"></img>';
    }
    if (document.getElementById('r2').checked) {
        document.getElementById('imag').innerHTML = '<img src="http://127.0.0.1:9814/plotdeaths" alt="Muertes" style="width:800px;height:700px;"></img>';
    }
    if (document.getElementById('r3').checked) {
        document.getElementById('imag').innerHTML = '<img src="http://127.0.0.1:9814/plotrecovery" alt="Recuperados" style="width:800px;height:700px;"></img>';
    }
}*/

document.getElementById('r1').addEventListener('click', function() {
    document.getElementById('imag').innerHTML = '<img src="http://127.0.0.1:4111/plotpositive" alt="Casos positivos" style="width:650px;height:600px;"></img>';
});
document.getElementById('r2').addEventListener('click', function() {
    document.getElementById('imag').innerHTML = '<img src="http://127.0.0.1:4111/plotdeaths" alt="Muertes" style="width:650px;height:600px;"></img>';
});
document.getElementById('r3').addEventListener('click', function() {
    document.getElementById('imag').innerHTML = '<img src="http://127.0.0.1:4111/plotrecovery" alt="Recuperados" style="width:650px;height:600px;"></img>';
});
document.getElementById('r4').addEventListener('click', function() {
    document.getElementById('imag').innerHTML = '<img src="http://127.0.0.1:4111/plotpositivecontinent" alt="Recuperados" style="width:800px;height:700px;"></img>';
});
document.getElementById('r5').addEventListener('click', function() {
    document.getElementById('imag').innerHTML = '<img src="http://127.0.0.1:4111/plotdeathscontinent" alt="Recuperados" style="width:800px;height:700px;"></img>';
});
document.getElementById('r6').addEventListener('click', function() {
    document.getElementById('imag').innerHTML = '<img src="http://127.0.0.1:4111/plotrecoverycontinent" alt="Recuperados" style="width:800px;height:700px;"></img>';
});
document.getElementById('cl').addEventListener('click', function() {
    document.getElementById('imag').innerHTML = 'Seleccione una opcion';
});
