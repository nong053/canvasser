<?php

namespace App\Http\Controllers;

use App\Voter;

use Auth;
use DB;
use File;
use Validator;
use Excel;
use Exception;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class VoterController extends Controller
{

	public function __construct()
	{

	   $this->middleware('jwt.auth');
	}
	
	
	public function index(Request $request)
	{		
		$items = DB::select("
		SELECT v.id,v.first_name,v.last_name,v.id_card,v.no_address,
		v.group_address,v.sub_district,v.district,tel,v.profile_id,
		p.first_name as profile_first_name,p.last_name as profile_last_name,p.role
FROM voter v
inner join profile p on v.profile_id=p.profile_id

		"
		//,array('%'.$request->Voter_id.'%')
	);
		return response()->json($items);
	}
	

	
	public function store(Request $request)
	{
	//'org_code' => 'required|max:15|unique:org',
		$validator = Validator::make($request->all(), [
			'first_name' => 'required|unique:voter',
			'last_name' => 'required',
			'id_card' => 'required',
			'no_address' => 'required',
			'group_address' => 'required',
			'sub_district' => 'required',
			'district' => 'required',
			'profile_id' => 'required'
			
		]);

		if ($validator->fails()) {
			return response()->json(['status' => 400, 'data' => $validator->errors()]);
		} else {
			$item = new Voter;
			$item->fill($request->all());
			 $item->save();
		}
	
		return response()->json(['status' => 200, 'data' => $item]);	
	}
	
	public function show(Request $request,$id)
	{
	
		
		try {

			$item = Voter::findOrFail($id);
		} catch (ModelNotFoundException $e) {
			return response()->json(['status' => 404, 'data' => 'Voter not found.']);
		}
		return response()->json($item);
		
	}
	
	public function update(Request $request, $id)
	{
		
		try {
			$item = Voter::findOrFail($id);
		} catch (ModelNotFoundException $e) {
			return response()->json(['status' => 404, 'data' => 'Voter not found.']);
		}
		//'org_code' => 'required|max:15|unique:org,org_name,' . $org_id . ',org_id',
		$validator = Validator::make($request->all(), [
			
			'first_name' => 'required',
			'last_name' => 'required',
			'id_card' => 'required',
			'no_address' => 'required',
			'group_address' => 'required',
			'sub_district' => 'required',
			'district' => 'required',
			
		]);

		if ($validator->fails()) {
			return response()->json(['status' => 400, 'data' => $validator->errors()]);
		} else {
			$item->fill($request->all());
			$item->save();
			return response()->json(['status' => 200, 'data' => $item]);
		}
	
		
				
	}
	
	
	public function destroy($id)
	{
		try {
			$item = Voter::findOrFail($id);
		} catch (ModelNotFoundException $e) {
			return response()->json(['status' => 404, 'data' => 'Voter not found.']);
		}	

		try {
			$item->delete();
			return response()->json(['status' => 200]);
		} catch (Exception $e) {
			if ($e->errorInfo[1] == 1451) {
				return response()->json(['status' => 400, 'data' => 'Cannot delete because this program is in use.']);
			} else {
				return response()->json($e->errorInfo);
			}
		}
		
		
		
	}	
}
