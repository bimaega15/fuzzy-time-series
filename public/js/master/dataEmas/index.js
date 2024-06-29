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
                    data: "tahun_dataemas",
                    name: "tahun_dataemas",
                    searchable: true,
                },
                {
                    data: "bulan_dataemas",
                    name: "bulan_dataemas",
                    searchable: true,
                },
                {
                    data: "harga_dataemas",
                    name: "harga_dataemas",
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
            title: "Form Data Emas",
            type: "get",
        });
    });

    body.on("click", ".btn-import", function () {
        showModal({
            url: $(this).data("urlcreate"),
            modalId: $(this).data("typemodal"),
            title: "Form Data Emas",
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
            title: "Form Data Emas",
            type: "get",
        });
    });
});
