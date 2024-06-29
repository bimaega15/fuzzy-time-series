var data_aktual = $('.data_aktual').data('value');
var data_prediksi = $('.data_prediksi').data('value');
var data_labels = $('.data_labels').data('value');
$(document).ready(function () {
    $('#dataResultMetode').DataTable();

    const ctx = document.getElementById('myChart');
    new Chart(ctx, {
        type: 'line',
        data: {
            datasets: [{
                label: 'Data Aktual',
                data: data_aktual,
                order: 1,
                borderColor: 'blue',
                backgroundColor: 'blue',
                borderWidth: 1
            }, {
                label: 'Data Prediksi',
                data: data_prediksi,
                order: 1,
                borderColor: 'green',
                backgroundColor: 'green',
                borderWidth: 1
            }],
            labels: data_labels
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
});