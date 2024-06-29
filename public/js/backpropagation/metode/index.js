$(document).ready(function () {
    function initDatatable() {
        datatable = basicDatatable({
            tableId: $("#dataTableDataSet"),
            ajaxUrl: $("#dataTableDataSet").data("url"),
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
            ],
            dataAjaxUrl: {},
        });
    }
    initDatatable();

    $('#dataTableNormalisasiData').DataTable();
    $('#dataTableBobotVBaru').DataTable();
});