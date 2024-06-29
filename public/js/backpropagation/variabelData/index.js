// "use strict";
var datatable;

$(document).ready(function () {
    function initDatatable() {
        datatable = basicDatatable({
            tableId: $("#dataTable"),
            ajaxUrl: $(".url_datatable").data("url"),
            scrollX: true,
            autoWidth: false,
            columns: [
                {
                    data: null,
                    orderable: false,
                    searchable: false,
                    className: "text-center",
                },
                {
                    data: "tanggal_vdata",
                    name: "tanggal_vdata",
                    searchable: true,
                },
                {
                    data: "terakhir_vdata",
                    name: "terakhir_vdata",
                    searchable: true,
                },
                {
                    data: "pembukaan_vdata",
                    name: "pembukaan_vdata",
                    searchable: true,
                },
                {
                    data: "tertinggi_vdata",
                    name: "tertinggi_vdata",
                    searchable: true,
                },
                {
                    data: "terendah_vdata",
                    name: "terendah_vdata",
                    searchable: true,
                },
                {
                    data: "vol_vdata",
                    name: "vol_vdata",
                    searchable: true,
                },
                {
                    data: "perubahan_vdata",
                    name: "perubahan_vdata",
                    searchable: true,
                },
                {
                    data: "action",
                    name: "action",
                    searchable: false,
                    orderable: false,
                },
            ],
            dataAjaxUrl: {},
        });
    }
    initDatatable();

    var body = $("body");
    // handle btn add data
    body.on("click", ".btn-add", function () {
        showModal({
            url: $(this).data("urlcreate"),
            modalId: $(this).data("typemodal"),
            title: "Form Varibel Data",
            type: "get",
        });
    });

    body.on("click", ".btn-import", function () {
        showModal({
            url: $(this).data("urlcreate"),
            modalId: $(this).data("typemodal"),
            title: "Form Varibel Data",
            type: "get",
        });
    });

    body.on("click", ".btn-delete", function (e) {
        e.preventDefault();
        basicDeleteConfirmDatatable({
            urlDelete: $(this).data("url"),
            data: {},
            text: "Apakah anda yakin ingin menghapus item ini?",
        });
    });

    body.on("click", ".btn-edit", function (e) {
        e.preventDefault();
        showModal({
            url: $(this).data("urlcreate"),
            modalId: $(this).data("typemodal"),
            title: "Form Varibel Data",
            type: "get",
        });
    });
});
