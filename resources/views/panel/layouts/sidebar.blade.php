<!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">
        {{-- Get permissions for the logged-in user's role --}}
        @php
            $PermissionUser = App\Models\Permission_Role::getPermission('User', Auth::user()->role_id);
            $PermissionRole = App\Models\Permission_Role::getPermission('Role', Auth::user()->role_id);
            $PermissionCategory = App\Models\Permission_Role::getPermission('Category', Auth::user()->role_id);
            $PermissionSubCategory = App\Models\Permission_Role::getPermission('Sub Category', Auth::user()->role_id);
            $PermissionProduct = App\Models\Permission_Role::getPermission('Product', Auth::user()->role_id);
            $PermissionSetting = App\Models\Permission_Role::getPermission('Setting', Auth::user()->role_id);
        @endphp
      <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'dashboard') collapsed @endif " href="{{ url('panel/dashboard') }}">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->
      @if (!empty($PermissionUser))
        <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'user') collapsed @endif " href="{{ url('panel/user') }}">
          <i class="bi bi-person"></i>
          <span>User</span>
        </a>
      </li><!-- End User Nav -->
      @endif
      @if (!empty($PermissionRole))
      <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'role') collapsed @endif " href="{{ url('panel/role') }}">
          <i class="bi bi-person"></i>
          <span>Role</span>
        </a>
      </li><!-- End Role Nav -->
      @endif

      @if (!empty($PermissionCategory))
      <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'category') collapsed @endif " href="{{ url('panel/category') }}">
          <i class="bi bi-person"></i>
          <span>Category</span>
        </a>
      </li><!-- End Category Nav -->
      @endif

      @if (!empty($PermissionSubCategory))

      <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'subcategory') collapsed @endif " href="{{ url('panel/subcategory') }}">
          <i class="bi bi-person"></i>
          <span>Sub Category</span>
        </a>
      </li><!-- End Sub Category Nav -->
      @endif

      @if (!empty($PermissionProduct))

      <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'product') collapsed @endif " href="{{ url('panel/product') }}">
          <i class="bi bi-person"></i>
          <span>Product</span>
        </a>
      </li><!-- End Product Nav -->
      @endif

      @if (!empty($PermissionSetting))

      <li class="nav-item">
        <a class="nav-link @if(Request::segment(2) != 'setting') collapsed @endif " href="{{ url('panel/setting') }}">
          <i class="bi bi-person"></i>
          <span>Setting</span>
        </a>
      </li><!-- End Setting Nav -->
      @endif

    </ul>

  </aside>
  <!-- End Sidebar-->
