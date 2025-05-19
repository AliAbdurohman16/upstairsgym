<aside class="sidebar {{ request()->is('cashier*') ? 'active' : '' }}">
    <button type="button" class="sidebar-close-btn">
        <iconify-icon icon="radix-icons:cross-2"></iconify-icon>
    </button>
    <div>
        <a href="" class="sidebar-logo justify-content-center">
            <img src="{{ asset('backend') }}/assets/images/logo.png" alt="site logo" class="light-logo">
            <img src="{{ asset('backend') }}/assets/images/logo-icon.png" alt="site logo" class="logo-icon">
        </a>
    </div>
    <div class="sidebar-menu-area">
        <ul class="sidebar-menu" id="sidebar-menu">
            <li class="{{ request()->is('dashboard') ? 'active-page' : '' }}">
                <a href="{{ route('dashboard') }}">
                    <iconify-icon icon="solar:home-smile-angle-outline" class="menu-icon"></iconify-icon>
                    <span>Dashboard</span>
                </a>
            </li>
            <li class="{{ request()->is('visitors*') ? 'active-page' : '' }}">
                <a href="{{ route('visitors.index') }}">
                    <iconify-icon icon="mdi:account-group" class="menu-icon"></iconify-icon>
                    <span>Data Pengunjung</span>
                </a>
            </li>
            <li class="{{ request()->is('profile*') ? 'active-page' : '' }}">
                <a href="{{ route('profile.index') }}">
                    <iconify-icon icon="solar:user-linear" class="menu-icon"></iconify-icon>
                    <span>Profile</span>
                </a>
            </li>
            <li class="{{ request()->is('password-change*') ? 'active-page' : '' }}">
                <a href="{{ route('password-change.index') }}">
                    <iconify-icon icon="tabler:key" class="menu-icon"></iconify-icon>
                    <span>Ubah Kata Sandi</span>
                </a>
            </li>
            <li>
                <a href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                    <iconify-icon icon="lucide:power" class="menu-icon"></iconify-icon>
                    <span>Keluar</span>
                </a>
            </li>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                @csrf
            </form>
        </ul>
    </div>
</aside>