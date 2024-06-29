
var formSubmit = document.getElementById("form-import");
formSubmit.addEventListener("submit", function (event) {
    event.preventDefault();
    submitData();
});


function submitData() {
    var formElement = $('#form-import')[0];
    var formData = new FormData(formElement);
    
    $.ajax({
        type: "post",
        url: $("#form-import").attr("action"),
        data: formData,
        processData: false,
        contentType: false,
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
