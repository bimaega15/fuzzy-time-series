<div>
    <form id="form-submit" action="{{ $action }}">
        <div class="modal-body">
            <div class="row">
                <div class="col-lg-12">
                    <x-form-select-horizontal label="Tahun" name="tahun_dataemas" :data="$array_tahun" value="{{ isset($row) ? $row->tahun_dataemas ?? '' : '' }}" class="select2_standard"/>

                    <x-form-select-horizontal label="Bulan" name="bulan_dataemas" :data="$array_bulan" value="{{ isset($row) ? $row->bulan_dataemas ?? '' : '' }}" class="select2_standard" />

                    <x-form-input-horizontal label="Harga Emas" name="harga_dataemas" placeholder="Harga Emas" value="{{ isset($row) ? $row->harga_dataemas ?? '' : '' }}" class="autonumeric_harga_dataemas" class="autonumeric_harga_dataemas" />
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <div class="d-flex justify-content-end">
                <div>
                    <x-button-cancel-modal />
                    <x-button-submit-modal />
                </div>
            </div>
        </div>
    </form>

</div>


<script src="{{ asset('js/master/dataEmas/form.js') }}"></script>
