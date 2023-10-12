<?php

namespace App\Http\Controllers;

use App\Http\Requests\InforCompanyResquest;
use App\Http\Requests\SocialNetworkRequest;
use App\Models\InfoCompany;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\Traits\StorageImageTrait;


class InfoCompanyController extends Controller
{

    use StorageImageTrait;
    private $infoCompany;
    public function __construct(InfoCompany $infoCompany)
    {
        $this->infoCompany = $infoCompany;
    }
    public function infor()
    {
        // dùng chung hàm này cho 2 url : thông tin công ty và mạng xã hội nên dùng uri để check
        // thông tin công ty : /infoCompany
        // mạng xã hội : /infoCompany/socialNetwork

        $current_uri = request()->segments();
        $uri_part_one = $current_uri[1];

        if (empty($current_uri[2])) {
            $uri_part_two = '';
        } else {
            $uri_part_two = $current_uri[2];
        }

        $infor = $this->infoCompany->first();
        if (empty($infor)) {
            $inforCompany = [];
        } else {
            $inforCompany = $infor->toArray();
        }
        // echo "<pre>"; print_r($inforCompany);
        if ($uri_part_one == 'infoCompany' && $uri_part_two == '') {
            return view('admin.information.index', compact('inforCompany'));
        } else if ($uri_part_one == 'infoCompany' && $uri_part_two == 'socialNetwork') {
            return view('admin.information.socialNetwork', compact('inforCompany'));
        }

    }

    // ------------------- phần thông tin công ty ----------------------
    public function addInfor(InforCompanyResquest $inforCompanyResquest)
    {
        try {
            DB::beginTransaction();
            $dataInsert = array(
                'address' => $inforCompanyResquest->address,
                'email' => $inforCompanyResquest->email,
                'phone' => $inforCompanyResquest->phone,
                'map' => $inforCompanyResquest->map,
            );

            //upload logo
            $dataUploadImgLogo = $this->storageTraitUpload($inforCompanyResquest, 'image_logo_path', 'logo');

            if (!empty($dataUploadImgLogo)) {
                $dataInsert['image_logo'] = $dataUploadImgLogo['file_name'];
                $dataInsert['image_logo_path'] = $dataUploadImgLogo['file_path'];
            }

            //upload favicon
            $dataUploadImgFavicon = $this->storageTraitUpload($inforCompanyResquest, 'image_favicon_path', 'logo');
            if (!empty($dataUploadImgFavicon)) {
                $dataInsert['favicon'] = $dataUploadImgFavicon['file_name'];
                $dataInsert['image_favicon_path'] = $dataUploadImgFavicon['file_path'];
            }

            $this->infoCompany->create($dataInsert);

            DB::commit();
            return redirect()->route('infoCompany.infor');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error("message " . $exception->getMessage() . 'Line: ' . $exception->getLine());
        }
    }

    public function updateInfor(InforCompanyResquest $inforCompanyResquest, $id)
    {
        try {
            DB::beginTransaction();
            $dataUpdate = array(
                'address' => $inforCompanyResquest->address,
                'email' => $inforCompanyResquest->email,
                'phone' => $inforCompanyResquest->phone,
                'map' => $inforCompanyResquest->map,
            );

            //upload logo
            $dataUploadImgLogo = $this->storageTraitUpload($inforCompanyResquest, 'image_logo_path', 'logo');

            if (!empty($dataUploadImgLogo)) {
                $dataUpdate['image_logo'] = $dataUploadImgLogo['file_name'];
                $dataUpdate['image_logo_path'] = $dataUploadImgLogo['file_path'];
            }

            //upload favicon
            $dataUploadImgFavicon = $this->storageTraitUpload($inforCompanyResquest, 'image_favicon_path', 'logo');
            if (!empty($dataUploadImgFavicon)) {
                $dataUpdate['favicon'] = $dataUploadImgFavicon['file_name'];
                $dataUpdate['image_favicon_path'] = $dataUploadImgFavicon['file_path'];
            }

            $this->infoCompany->find($id)->update($dataUpdate);

            DB::commit();
            return redirect()->route('infoCompany.infor');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error("message " . $exception->getMessage() . 'Line: ' . $exception->getLine());
        }
    }

    // ------------------- phần social network -------------------
    public function updateSocialNetwork(SocialNetworkRequest $inforCompanyResquest, $id)
    {
        try {
            DB::beginTransaction();
            $dataUpdate = array(
                'facebook' => $inforCompanyResquest->facebook,
                'tiktok' => $inforCompanyResquest->tiktok,
                'zalo' => $inforCompanyResquest->zalo,
                'youtube' => $inforCompanyResquest->youtube,
            );
            // echo "<pre>";
            // print_r($dataUpdate);
            // exit;

            $this->infoCompany->find($id)->update($dataUpdate);

            DB::commit();
            return redirect()->route('infoCompany.infor');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error("message " . $exception->getMessage() . 'Line: ' . $exception->getLine());
        }
    }

}
