<?php

namespace Modules\Master\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateDataEmasRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'tahun_dataemas' => 'required',
            'bulan_dataemas' => 'required',
            'harga_dataemas' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'tahun_dataemas.required' => 'Tahun wajib diisi',
            'bulan_dataemas.required' => 'Bulan wajib diisi',
            'harga_dataemas.required' => 'Harga wajib diisi',
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
