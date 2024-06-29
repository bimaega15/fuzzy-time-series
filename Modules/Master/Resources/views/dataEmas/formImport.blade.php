<div>
    <form id="form-import" action="{{ $action }}">
        <div class="modal-body">
            <div class="row">
                <div class="col-lg-12">
                    <x-form-input-vertical label="Import File" name="import_file" type="file" />
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


<script src="{{ asset('js/master/dataEmas/formImport.js') }}"></script>
