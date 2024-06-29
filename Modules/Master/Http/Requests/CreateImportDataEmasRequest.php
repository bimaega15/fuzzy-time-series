<?php

namespace Modules\Master\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateImportDataEmasRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'import_file' => 'required|file|mimes:xls,xlsx,csv',
        ];
    }

    public function messages()
    {
        return [
            'import_file.required' => 'File import wajib diisi',
            'import_file.file' => 'File import harus berupa file',
            'import_file.mimes' => 'File import harus berupa file excel dengan ekstensi xls, csv atau xlsx',
        ];
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
}
