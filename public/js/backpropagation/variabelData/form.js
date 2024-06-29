
datepickerDdMmYyyy('.datepicker');
var terakhir_vdata_autonumeric = new AutoNumeric('.terakhir_vdata', {
    digitGroupSeparator: '.',
    decimalCharacter: ',',
    decimalPlaces: 2,
});
var pembukaan_vdata_autonumeric = new AutoNumeric('.pembukaan_vdata', {
    digitGroupSeparator: '.',
    decimalCharacter: ',',
    decimalPlaces: 2,
});
var tertinggi_vdata_autonumeric = new AutoNumeric('.tertinggi_vdata', {
    digitGroupSeparator: '.',
    decimalCharacter: ',',
    decimalPlaces: 2,
});
var terendah_vdata_autonumeric = new AutoNumeric('.terendah_vdata', {
    digitGroupSeparator: '.',
    decimalCharacter: ',',
    decimalPlaces: 2,
});
var vol_vdata_autonumeric = new AutoNumeric('.vol_vdata', {
    digitGroupSeparator: '.',
    decimalCharacter: ',',
    decimalPlaces: 2,
    suffixText: 'K',
});
var perubahan_vdata_autonumeric = new AutoNumeric('.perubahan_vdata', {
    digitGroupSeparator: '.',
    decimalCharacter: ',',
    decimalPlaces: 2,
    suffixText: '%',
});


var formSubmit = document.getElementById("form-submit");
formSubmit.addEventListener("submit", function (event) {
    event.preventDefault();
    submitData();
});

function submitData() {
    const formData = {}
    formData.tanggal_vdata = formatDateToDb($("input[name='tanggal_vdata']").val());
    formData.terakhir_vdata = terakhir_vdata_autonumeric.getFormatted();
    formData.pembukaan_vdata = pembukaan_vdata_autonumeric.getFormatted();
    formData.tertinggi_vdata = tertinggi_vdata_autonumeric.getFormatted();
    formData.terendah_vdata = terendah_vdata_autonumeric.getFormatted();
    formData.vol_vdata = vol_vdata_autonumeric.getFormatted();
    formData.perubahan_vdata = perubahan_vdata_autonumeric.getFormatted();
    $.ajax({
        type: "post",
        url: $("#form-submit").attr("action"),
        data: formData,
        dataType: "json",
        beforeSend: function () {
            clearError422();
            $("#btn-submit").attr("disabled", true);
            $("#btn-submit").html(disableButton);
        },
        success: function (data) {
            myModal.hide();
            runToast({
                title: "Successfully",
                description: data,
                type: "bg-success",
            });
            datatable.ajax.reload();
        },
        error: function (jqXHR, exception) {
            $("#btn-submit").attr("disabled", false);
            $("#btn-submit").html(enableButton);
            if (jqXHR.status === 422) {
                showErrors422(jqXHR);
            }
        },
        complete: function () {
            $("#btn-submit").attr("disabled", false);
            $("#btn-submit").html(enableButton);
        },
    });
}
