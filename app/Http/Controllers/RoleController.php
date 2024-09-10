<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\Permission;
use Illuminate\Http\Request;
use App\Models\PermissionRole;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\RoleController;


class RoleController extends Controller
{
    public function list(Request $request)
    {  // Check if the user has the 'Role' permission
        $permissionRole = PermissionRole::getPermission('Role', Auth::user()->role_id);
        if (empty($permissionRole)) {
            abort(404);
        }
    // Initialize the query
        $query = Role::query();
    // Add search filter if present
        if ($request->has('search')) {
            $query->where('name', 'like', '%' . $request->input('search') . '%');
        }
    // Paginate the results
        $roles = $query->paginate(5);
    // Retrieve additional permissions
        $data['permissionAdd'] = PermissionRole::getPermission('Add role', Auth::user()->role_id);
        $data['permissionEdit'] = PermissionRole::getPermission('Edit Role', Auth::user()->role_id);
        $data['permissionDelete'] = PermissionRole::getPermission('Delete Role', Auth::user()->role_id);
        $data['getRecord'] = $roles;
    // Return the view with the data
        return view('panel.role.list', $data);
    
    }

    public function add()
    {   // Check if the user has the 'Add Role' permission
        $permissionRole = PermissionRole::getPermission('Add Role', Auth::user()->role_id);
        if (empty($permissionRole)) {
            abort(404);
        }
         // Fetch permissions data
        $getPermission = Permission::getRecord();
         // Prepare data for the view
        $data['getPermission'] = $getPermission;
        // Return the view with data
        return view('panel.role.add', $data);
    }

    public function insert(Request $request)
    {  // Check if the user has the 'Add Role' permission
        $permissionRole = PermissionRole::getPermission('Add Role', Auth::user()->role_id);
        if (empty($permissionRole)) {
            abort(404);
        }
        // Create a new role
        $save = new Role;
        $save->name = $request->name;
        $save->save();
        // Update permissions for the role
        PermissionRole::InsertUpdateRecord($request->permission_id, $save->id);
        // Redirect with success message
        return redirect('panel/role')->with('success', 'Role successfully created');
    }

    public function edit($id)
    {   // Check if the user has the 'Edit Role' permission
        $permissionRole = PermissionRole::getPermission('Edit Role', Auth::user()->role_id);
        if (empty($permissionRole)) {
            abort(404);
        }
         // Fetch role record by ID
        $data['getRecord'] = Role::find($id);
         // Fetch permissions data
        $data['getPermission'] = Permission::getRecord();
         // Fetch role permissions
        $data['getRolePermission'] = PermissionRole::getRolePermission($id);
         // Return view with data
        return view('panel.role.edit', $data);
    }

    public function update($id, Request $request)
    {   // Check if the user has the 'Edit Role' permission
        $permissionRole = PermissionRole::getPermission('Edit Role', Auth::user()->role_id);
        if (empty($permissionRole)) {
            abort(404);
        }
        // Find the role by ID
        $save = Role::find($id);
        // Update role name
        $save->name = $request->name;
        $save->save();
        // Update role permissions
        PermissionRole::InsertUpdateRecord($request->permission_id, $save->id);
        // Redirect with success message
        return redirect('panel/role')->with('success', 'Role successfully updated');
    }

    public function delete($id, Request $request)
    {
        $permissionRole = PermissionRole::getPermission('Delete Role', Auth::user()->role_id);
        if (empty($permissionRole)) {
            abort(404);
        }
        $save = Role::find($id);
        $save->delete();
        return redirect('panel/role')->with('success', 'Role successfully deleted');
    }

}


