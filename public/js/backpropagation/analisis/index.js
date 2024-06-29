var autonumeric_epoch = new AutoNumeric('.autonumeric_epoch', {
    digitGroupSeparator: '.',
    decimalCharacter: ',',
    decimalPlaces: 0,
});
var autonumeric_minimal_error = new AutoNumeric('.autonumeric_minimal_error', {
    digitGroupSeparator: '.',
    decimalCharacter: ',',
    decimalPlaces: 6,
});
var autonumeric_learning_rate = new AutoNumeric('.autonumeric_learning_rate', {
    digitGroupSeparator: '.',
    decimalCharacter: ',',
    decimalPlaces: 2,
});
$(document).ready(function () {
    function resetForm() {
        $("#form-submit").trigger("reset");
        autonumeric_epoch.set(0);
        autonumeric_minimal_error.set(0);
        autonumeric_learning_rate.set(0);
    }

    $(document).on("click", "button[type='reset']", function (e) {
        e.preventDefault();
        resetForm();
    });

    var formSubmit = document.getElementById("form-submit");
    formSubmit.addEventListener("submit", function (event) {
        event.preventDefault();
        submitData();
    });

    function submitData() {
        const formData = {};
        formData.epoch = autonumeric_epoch.getNumber();
        formData.minimal_error = autonumeric_minimal_error.getNumber();
        formData.learning_rate = autonumeric_learning_rate.getNumber();

        if (formData.epoch == 0) {
            formData.epoch = null;
        }
        if (formData.minimal_error == 0) {
            formData.minimal_error = null;
        }
        if (formData.learning_rate == 0) {
            formData.learning_rate = null;
        }

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
                const { view_metode } = data;
                $('#output_backpropagation').html(view_metode);
                runToast({
                    title: "Successfully",
                    description: data.message,
                    type: "bg-success",
                });
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
});