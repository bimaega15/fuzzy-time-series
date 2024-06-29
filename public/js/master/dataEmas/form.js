
select2Standard({
    selector: ".select2_standard",
    parent: "#mediumModal",
})

var autonumeric_harga_dataemas = new AutoNumeric('.autonumeric_harga_dataemas', {
    digitGroupSeparator: '.',
    decimalCharacter: ',',
    decimalPlaces: 0,
});

var formSubmit = document.getElementById("form-submit");
formSubmit.addEventListener("submit", function (event) {
    event.preventDefault();
    submitData();
});

function submitData() {
    let formData = {}
    formData.tahun_dataemas = $('select[name="tahun_dataemas"]').val();
    formData.bulan_dataemas = $('select[name="bulan_dataemas"]').val();
    formData.harga_dataemas = autonumeric_harga_dataemas.getNumber();

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
