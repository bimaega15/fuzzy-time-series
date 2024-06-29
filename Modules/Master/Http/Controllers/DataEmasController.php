<?php

namespace Modules\Master\Http\Controllers;

use App\Models\DataEmas;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use DataTables;
use Illuminate\Support\Facades\Config;
use Modules\Master\Http\Requests\CreateDataEmasRequest;
use Modules\Master\Http\Requests\CreateImportDataEmasRequest;

class DataEmasController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */

     private $datastatis;
     public function __construct()
     {
        $datastatis = Config::get('datastatis');
        $this->datastatis = $datastatis;
     }
    public function index(Request $request)
    {

        if ($request->ajax()) {
            $data = DataEmas::query();
            return DataTables::eloquent($data)
                ->addColumn('harga_dataemas', function ($row) {
                    $nominal = number_format($row->harga_dataemas, 0, ',', '.');
                    return $nominal;
                })
                ->addColumn('action', function ($row) {
                    $buttonUpdate = '
                    <a class="btn btn-warning btn-edit btn-sm" 
                    data-typemodal="mediumModal"
                    data-urlcreate="' . url('master/dataEmas/' . $row->id . '/edit') . '"
                    data-modalId="mediumModal"
                    >
                        <i class="fa-solid fa-pencil"></i>
                    </a>
                    ';
                    $buttonDelete = '
                    <button type="button" class="btn-delete btn btn-danger btn-sm" data-url="' . url('master/dataEmas/' . $row->id) . '?_method=delete">
                        <i class="fa-solid fa-trash"></i>
                    </button>
                    ';

                    $button = '
                <div class="text-center">
                    ' . $buttonUpdate . '
                    ' . $buttonDelete . '
                </div>
                ';
                    return $button;
                })
                ->rawColumns(['action'])
                ->toJson();
        }

        return view('master::dataEmas.index');
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        $action = url('master/dataEmas');
        $array_bulan = [];
        foreach ($this->datastatis['bulan'] as $key => $item) {
            $array_bulan[] = [
                'id' => $key,
                'label' => $item,
            ];
        }
        $array_tahun = [];
        for ($i=2021; $i <= date('Y'); $i++) { 
            $array_tahun[] = [
                'id' => $i,
                'label' => $i,
            ];
        }
        
        return view('master::dataEmas.form', compact('action', 'array_bulan', 'array_tahun'));
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(CreateDataEmasRequest $request)
    {
        // users
        $data = $request->all();
        DataEmas::create($data);
        return response()->json('Berhasil tambah data', 201);
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        return view('setting::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id)
    {
        $row = DataEmas::find($id);
        $action = url('master/dataEmas/'.$id.'?_method=put');
        $array_bulan = [];
        foreach ($this->datastatis['bulan'] as $key => $item) {
            $array_bulan[] = [
                'id' => $key,
                'label' => $item,
            ];
        }
        $array_tahun = [];
        for ($i=2021; $i <= date('Y'); $i++) { 
            $array_tahun[] = [
                'id' => $i,
                'label' => $i,
            ];
        }
        return view('master::dataEmas.form', compact('array_bulan', 'array_tahun', 'action', 'row'));
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(CreateDataEmasRequest $request, $id)
    {
        // users
        $data = $request->except(['_method']);
        DataEmas::where('id', $id)->update($data);
        return response()->json('Berhasil update data', 200);
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy($id)
    {
        //
        DataEmas::destroy($id);
        return response()->json('Berhasil hapus data', 200);
    }

    public function import()
    {
        $action = url('master/dataEmas/import');
        return view('master::dataEmas.formImport', compact('action'));
    }

    public function storeImport(CreateImportDataEmasRequest $requet)
    {
        try {

            $file = $requet->file('import_file');
            $arr_file = explode('.', $file->getClientOriginalName());
            $extension = end($arr_file);

            if ('csv' == $extension) {
                $reader = new \PhpOffice\PhpSpreadsheet\Reader\Csv();
            } else {
                $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
            }

            $spreadsheet = $reader->load($file->getRealPath());
            $sheetData = $spreadsheet->getActiveSheet()->toArray();

            if (!empty($sheetData)) {
                $dataInsert = [];
                for ($i = 1; $i < count($sheetData); $i++) {
                    $tahun_dataemas = $sheetData[$i][1];
                    $bulan_dataemas = $sheetData[$i][2];
                    $harga_dataemas = $sheetData[$i][3];
                    if($tahun_dataemas != null){
                        $dataInsert[] = [
                            'tahun_dataemas' => $tahun_dataemas,
                            'bulan_dataemas' => $bulan_dataemas,
                            'harga_dataemas' => $harga_dataemas,
                        ];
                    }
                }
                DataEmas::insert($dataInsert);
                return response()->json('Berhasil menambahkan data import sebanyak ' . count($dataInsert), 201);
            }
        } catch (\Throwable $th) {
            return response()->json("Terjadi kesalahan data " . $th->getMessage(), 500);
        }
    }
}
