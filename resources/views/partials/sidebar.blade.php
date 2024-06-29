@php
    $settingApp = UtilsHelp::settingApp();
@endphp
<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
    <div class="app-brand demo">
        <a href="{{ url('/') }}" class="app-brand-link">
            <span class="app-brand-logo demo">

            </span>
            <span class="app-brand-text demo menu-text fw-bold ms-0"
                style="text-transform: capitalize; font-size: 22px;">{{ $settingApp->namaaplikasi_pengaturan }}</span>
        </a>

        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
            <i class="bx bx-chevron-left bx-sm align-middle"></i>
        </a>
    </div>

    <div class="menu-inner-shadow"></div>
    <ul class="menu-inner py-1">
        <li class="menu-item {{ request()->is('dashboard') ? 'active' : '' }}">
            <a href="{{ url('dashboard') }}" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Basic">Dashboard</div>
            </a>
        </li>
        <li class="menu-item {{ request()->is('myProfile') ? 'active' : '' }}">
            <a href="{{ url('myProfile') }}" class="menu-link">
                <i class='menu-icon tf-icons bx bxs-user-circle'></i>
                <div data-i18n="Basic">My Profile</div>
            </a>
        </li>
        <li class="menu-header small text-uppercase"><span class="menu-header-text">Konfigurasi</span></li>
        <li class="menu-item {{ request()->is('setting/user') ? 'active' : '' }}">
            <a href="{{ url('setting/user') }}" class="menu-link">
                <i class='menu-icon tf-icons bx bxs-user-circle'></i>
                <div data-i18n="User">User</div>
            </a>
        </li>
        <li class="menu-item {{ request()->is('setting/roles') ? 'active' : '' }}">
            <a href="{{ url('setting/roles') }}" class="menu-link">
                <i class='menu-icon tf-icons bx bxs-user-account'></i>
                <div data-i18n="Role">Role</div>
            </a>
        </li>
        <li class="menu-item {{ request()->is('setting/pengaturan') ? 'active' : '' }}">
            <a href="{{ url('setting/pengaturan') }}" class="menu-link">
                <i class='menu-icon tf-icons bx bxs-detail'></i>
                <div data-i18n="Profile">Profile</div>
            </a>
        </li>
        {{-- <li class="menu-item">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bxs-lock"></i>
                <div data-i18n="Pengaturan">Pengaturan</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item {{ request()->is('setting/menu') ? 'active' : '' }}">
                    <a href="{{ url('setting/menu') }}" class="menu-link">
                        <div data-i18n="Menu">Menu</div>
                    </a>
                </li>
            </ul>
        </li> --}}

        <li class="menu-item {{ request()->is('setting/logout') ? 'active' : '' }}">
            <a href="{{ url('setting/logout') }}" class="menu-link">
                <i class='menu-icon tf-icons bx bx-log-out'></i>
                <div data-i18n="Logout">Logout</div>
            </a>
        </li>
    </ul>
</aside>
