<aside class="main-sidebar">

<style>
    .main-sidebar, .main-header, .sb-label, .sb-section-label, .brand-name, .brand-sub, .user-name, .user-greeting, .nav-link { 
        font-family: 'DM Sans', 'Inter', sans-serif !important; 
    }
    .main-sidebar { 
        position: fixed !important; 
        top: 0; 
        bottom: 0; 
        left: 0; 
        width: var(--sidebar-width, 260px); 
        height: 100vh !important; 
        overflow-y: auto; 
        z-index: 1038; 
        transition: width var(--transition-slow), transform var(--transition-slow), margin-left var(--transition-slow) !important; 
        background: var(--bg-surface) !important; 
        border-right: 1px solid var(--border-light); 
        box-shadow: var(--shadow-sm); 
    }
    .main-sidebar::-webkit-scrollbar { 
        width: 4px; 
    }
    .main-sidebar::-webkit-scrollbar-thumb { 
        background: var(--border-medium); 
        border-radius: 4px; 
    }
    .sidebar-brand-wrapper { 
        display: flex; 
        align-items: center; 
        justify-content: space-between; 
        padding: 10px 16px; 
        border-bottom: 1px solid var(--border-light) !important; 
        text-decoration: none !important; 
        background: var(--bg-surface) !important; 
        min-height: 90px; 
        transition: all var(--transition-slow) !important; 
    }
    .sidebar-logo-icon { 
        height: 70px; 
        width: 180px; 
        display: flex; 
        align-items: center; 
        justify-content: center; 
        transition: all var(--transition-slow) !important; 
        overflow: hidden;
        position: relative;
    }
    .sidebar-logo-icon img { 
        width: 180px !important; 
        height: 180px !important; 
        max-width: none !important; 
        object-fit: contain !important; 
        position: absolute !important;
        top: 50% !important;
        left: 50% !important;
        transform: translate(-50%, -50%) !important;
        transition: all var(--transition-slow) !important; 
    }
    .sidebar { 
        background: var(--bg-surface) !important; 
        display: flex !important; 
        flex-direction: column; 
        height: calc(100vh - 90px) !important; 
    }
    nav.mt-1 { 
        display: flex; 
        flex-direction: column; 
        flex: 1; 
        padding-bottom: 10px; 
    }
    .sb-section-label { 
        display: block; 
        padding: 16px 20px 8px; 
        font-size: 10px; 
        font-weight: 700; 
        text-transform: uppercase; 
        letter-spacing: 1.2px; 
        color: var(--text-muted); 
    }
    .sb-nav-list { 
        list-style: none; 
        padding: 0 12px !important; 
        margin: 0 !important; 
    }
    .sb-nav-list .nav-item { 
        margin-bottom: 4px; 
    }
    .main-sidebar .sb-nav-list .nav-link { 
        display: flex !important; 
        align-items: center !important; 
        gap: 14px !important; 
        padding: 10px 14px !important; 
        border-radius: var(--radius-md) !important; 
        color: var(--text-body) !important; 
        font-size: 14px !important; 
        font-weight: 600 !important; 
        text-decoration: none !important; 
        transition: background-color var(--transition-normal), color var(--transition-normal), padding-left var(--transition-slow), box-shadow var(--transition-normal) !important; 
        background: transparent !important; 
        width: 100%; 
    }
    .main-sidebar .sb-nav-list .nav-link:hover { 
        background: var(--bg-surface-hover) !important; 
        color: var(--color-primary) !important; 
        padding-left: 18px !important; 
    }
    .main-sidebar .sb-nav-list .nav-link.active { 
        background: var(--color-primary-light) !important; 
        color: var(--color-primary) !important; 
        font-weight: 700 !important; 
        box-shadow: var(--shadow-sm) !important; 
        padding-left: 14px !important; 
        border-left: 4px solid var(--color-primary); 
    }
    .sb-icon { 
        width: 38px; 
        height: 38px; 
        min-width: 38px; 
        background: var(--bg-body); 
        border-radius: var(--radius-md); 
        display: flex !important; 
        align-items: center; 
        justify-content: center; 
        font-size: 16px; 
        color: var(--text-muted); 
        transition: transform var(--transition-normal), background-color var(--transition-normal), box-shadow var(--transition-normal), color var(--transition-normal); 
    }
    .main-sidebar .sb-nav-list .nav-link:hover .sb-icon { 
        background: var(--bg-surface) !important; 
        color: var(--color-primary) !important; 
        transform: scale(1.06); 
        box-shadow: var(--shadow-sm);
    }
    .main-sidebar .sb-nav-list .nav-link.active .sb-icon { 
        background: linear-gradient(135deg, var(--color-primary), var(--color-primary-hover)); 
        color: #ffffff; 
        box-shadow: var(--shadow-primary); 
    }
    .sb-arrow { 
        margin-left: auto; 
        font-size: 11px; 
        color: var(--text-placeholder); 
        transition: transform var(--transition-slow); 
        flex-shrink: 0; 
    }
    .menu-open > .nav-link .sb-arrow, 
    .nav-item.has-treeview.menu-is-opening > .nav-link .sb-arrow { 
        transform: rotate(90deg); 
        color: var(--color-primary); 
    }
    .sb-label { 
        flex: 1; 
        white-space: nowrap; 
        overflow: hidden; 
        text-overflow: ellipsis; 
        display: block; 
    }
    .sb-submenu { 
        list-style: none !important; 
        margin: 4px 0 8px 0 !important; 
        padding: 0 0 0 24px !important; 
    }
    .main-sidebar .sb-submenu .nav-link { 
        gap: 12px !important; 
        padding: 8px 12px !important; 
        font-size: 13.5px !important; 
        color: var(--text-muted) !important; 
        border: none !important; 
        margin-bottom: 2px !important; 
        transition: color var(--transition-normal), background-color var(--transition-normal) !important; 
    }
    .main-sidebar .sb-submenu .nav-link:hover { 
        color: var(--color-primary) !important; 
        background: var(--bg-surface-hover) !important; 
    }
    .sb-dot { 
        width: 6px; 
        height: 6px; 
        min-width: 6px; 
        background: var(--border-medium); 
        border-radius: 50%; 
        transition: transform var(--transition-normal), background-color var(--transition-normal), box-shadow var(--transition-normal); 
    }
    .main-sidebar .sb-submenu .nav-link:hover .sb-dot { 
        background: var(--color-primary); 
    }
    .main-sidebar .sb-submenu .nav-link.active { 
        color: var(--color-primary) !important; 
        font-weight: 700 !important; 
        background: transparent !important; 
        border: none !important; 
    }
    .main-sidebar .sb-submenu .nav-link.active .sb-dot { 
        background: var(--color-primary); 
        transform: scale(1.4); 
        box-shadow: 0 0 8px var(--color-primary-light); 
    }
    .sb-divider { 
        border: none; 
        border-top: 1px dashed var(--border-light); 
        margin-top: auto !important; 
        margin-bottom: 14px; 
        margin-left: 14px; 
        margin-right: 14px; 
    }
    .main-sidebar .sb-logout-link { 
        display: flex !important; 
        align-items: center !important; 
        gap: 14px !important; 
        padding: 10px 14px !important; 
        margin: 0 12px 16px !important; 
        border-radius: var(--radius-md) !important; 
        color: var(--color-danger) !important; 
        font-size: 14px !important; 
        font-weight: 600 !important; 
        text-decoration: none !important; 
        transition: background-color var(--transition-normal), color var(--transition-normal), padding-left var(--transition-slow), box-shadow var(--transition-normal) !important; 
        background: transparent !important; 
        width: calc(100% - 24px); 
    }
    .main-sidebar .sb-logout-link:hover { 
        background: var(--color-danger-light) !important; 
        padding-left: 18px !important; 
    }
    .sb-icon-red { 
        width: 38px; 
        height: 38px; 
        min-width: 38px; 
        background: var(--color-danger-light); 
        border-radius: var(--radius-md); 
        display: flex; 
        align-items: center; 
        justify-content: center; 
        font-size: 16px; 
        color: var(--color-danger); 
        transition: transform var(--transition-normal), background-color var(--transition-normal); 
    }
    .main-sidebar .sb-logout-link:hover .sb-icon-red { 
        transform: scale(1.06); 
        background: var(--color-danger-border); 
    }
    .toggle-btn-sidebar {
        width: 40px;
        height: 40px;
        min-width: 40px;
        border-radius: 8px;
        background: var(--bg-body);
        color: var(--text-muted);
        display: flex;
        align-items: center;
        justify-content: center;
        transition: all 0.2s;
        text-decoration: none !important;
    }
    .toggle-btn-sidebar:hover {
        background: var(--bg-surface-hover);
        color: var(--color-primary);
    }

    /* === COLLAPSE DESKTOP (>= 992px) === */
    @media (min-width: 992px) {
        .sidebar-mini.sidebar-collapse .main-sidebar { 
            width: 73px !important; 
        }
        .sidebar-mini.sidebar-collapse .main-sidebar:not(:hover) .sidebar-brand-wrapper { 
            padding: 15px 0; 
            justify-content: center !important; 
        }
        .sidebar-mini.sidebar-collapse .main-sidebar:not(:hover) .sidebar-logo-icon { 
            display: none !important; 
        }
        .sidebar-mini.sidebar-collapse .main-sidebar:not(:hover) .sb-label, 
        .sidebar-mini.sidebar-collapse .main-sidebar:not(:hover) .sb-section-label, 
        .sidebar-mini.sidebar-collapse .main-sidebar:not(:hover) .sb-arrow,
        .sidebar-mini.sidebar-collapse .main-sidebar:not(:hover) .sb-submenu { 
            display: none !important; 
        }
        .sidebar-mini.sidebar-collapse .main-sidebar:not(:hover) .sb-nav-list .nav-link, 
        .sidebar-mini.sidebar-collapse .main-sidebar:not(:hover) .sb-logout-link { 
            justify-content: center !important; 
            padding: 10px 0 !important; 
            margin-left: 0 !important;
            margin-right: 0 !important;
            width: 100% !important;
            border-radius: 0 !important;
            border-left: none !important;
        }
        .sidebar-mini.sidebar-collapse .main-sidebar:not(:hover) .sb-nav-list {
            padding: 0 !important;
        }
        .sidebar-mini.sidebar-collapse .main-sidebar:not(:hover) .toggle-btn-sidebar { 
            margin: 0 auto !important; 
        }
    }

    /* === MOBILE/TABLET RESPONSIVENESS (< 992px) === */
    @media (max-width: 991px) {
        .main-sidebar {
            left: 0 !important;
            transform: translateX(-100%) !important;
            width: 260px !important;
            z-index: 1040 !important;
            box-shadow: none;
        }
        
        body.sidebar-open-mobile .main-sidebar {
            transform: translateX(0) !important;
            box-shadow: var(--shadow-lg);
        }
        
        .sidebar-overlay-custom {
            position: fixed;
            inset: 0;
            background: rgba(15, 17, 23, 0.4);
            backdrop-filter: blur(4px);
            -webkit-backdrop-filter: blur(4px);
            z-index: 1039;
            opacity: 0;
            pointer-events: none;
            transition: opacity var(--transition-normal);
        }
        
        body.sidebar-open-mobile .sidebar-overlay-custom {
            opacity: 1;
            pointer-events: auto;
        }
    }
</style>

    <?php 
        $role           = $this->session->userdata('role'); 
        $dashboard_link = ($role == 'admin') ? 'admin/admin' : 'kasir/kasir';
        $current_menu   = $this->uri->segment(2);
        if (empty($current_menu) && $role == 'admin')  $current_menu = 'admin';
        elseif (empty($current_menu) && $role == 'kasir') $current_menu = 'kasir';
    ?>

    <div class="sidebar-brand-wrapper">
        <a href="<?= site_url($dashboard_link) ?>" class="brand-link" style="padding:0; border:none; display:flex; align-items:center; background:transparent;">
            <div class="sidebar-logo-icon">
                <img src="<?= base_url('assets/images/logo.png') ?>" alt="Logo TOKO SUMBER KERAMIK">
            </div>
        </a>
        <a href="#" id="sidebarToggleBtn" class="toggle-btn-sidebar">
            <i class="fas fa-bars" style="font-size:18px;"></i>
        </a>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var toggleBtn = document.getElementById('sidebarToggleBtn');
            var mobileToggleBtn = document.getElementById('mobileSidebarToggleBtn');
            
            function toggleSidebar() {
                if (window.innerWidth < 992) {
                    document.body.classList.toggle('sidebar-open-mobile');
                    document.body.classList.remove('sidebar-collapse');
                } else {
                    document.body.classList.toggle('sidebar-collapse');
                    document.body.classList.remove('sidebar-open-mobile');
                }
            }

            if(toggleBtn) {
                toggleBtn.addEventListener('click', function(e) {
                    e.preventDefault();
                    toggleSidebar();
                });
            }
            if(mobileToggleBtn) {
                mobileToggleBtn.addEventListener('click', function(e) {
                    e.preventDefault();
                    toggleSidebar();
                });
            }
            
            // Add custom overlay to body if not already present
            var overlay = document.querySelector('.sidebar-overlay-custom');
            if(!overlay) {
                overlay = document.createElement('div');
                overlay.className = 'sidebar-overlay-custom';
                document.body.appendChild(overlay);
            }
            
            overlay.addEventListener('click', function() {
                document.body.classList.remove('sidebar-open-mobile');
            });
        });
    </script>

    <div class="sidebar">
        <nav class="mt-1">

            <?php if ($role == 'admin'): ?>
                
                <ul class="sb-nav-list">
                    <li class="nav-item">
                        <a href="<?= site_url('admin/admin') ?>" class="nav-link <?= ($current_menu == 'admin') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-tachometer-alt"></i></span>
                            <span class="sb-label">Dashboard</span>
                        </a>
                    </li>
                </ul>

                <span class="sb-section-label">Master Data</span>
                <?php $is_master_active = ($current_menu == 'kategori' || $current_menu == 'produk') ? 'menu-open menu-is-opening' : ''; ?>
                <ul class="sb-nav-list" data-widget="treeview" role="menu" data-accordion="false">
                    <li class="nav-item has-treeview <?= $is_master_active ?>">
                        <a href="#" class="nav-link <?= ($is_master_active != '') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-box"></i></span>
                            <span class="sb-label">Data Material</span>
                            <i class="fas fa-chevron-right sb-arrow"></i>
                        </a>
                        <ul class="nav nav-treeview sb-submenu" style="<?= ($is_master_active != '') ? 'display: block;' : '' ?>">
                            <li class="nav-item">
                                <a href="<?= site_url('admin/kategori') ?>" class="nav-link <?= ($current_menu == 'kategori') ? 'active' : '' ?>">
                                    <span class="sb-dot"></span>
                                    <span class="sb-label">Jenis Keramik</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= site_url('admin/produk') ?>" class="nav-link <?= ($current_menu == 'produk') ? 'active' : '' ?>">
                                    <span class="sb-dot"></span>
                                    <span class="sb-label">Data Keramik</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="<?= site_url('admin/supplier') ?>" class="nav-link <?= ($current_menu == 'supplier') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-truck"></i></span>
                            <span class="sb-label">Data Pabrik / Distributor</span>
                        </a>
                    </li>
                </ul>

                <span class="sb-section-label">Transaksi</span>
                <ul class="sb-nav-list">
                    <li class="nav-item">
                        <a href="<?= site_url('admin/barang_masuk') ?>" class="nav-link <?= ($current_menu == 'barang_masuk') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-arrow-circle-down"></i></span>
                            <span class="sb-label">Barang Masuk</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= site_url('admin/penjualan') ?>" class="nav-link <?= ($current_menu == 'penjualan') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-shopping-cart"></i></span>
                            <span class="sb-label">Penjualan Offline</span>
                        </a>
                    </li>
                </ul>

                <span class="sb-section-label">Pengaturan</span>
                <ul class="sb-nav-list">
                    <li class="nav-item">
                        <a href="<?= site_url('admin/laporan') ?>" class="nav-link <?= ($current_menu == 'laporan') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-file-invoice-dollar"></i></span>
                            <span class="sb-label">Laporan Penjualan</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= site_url('admin/users') ?>" class="nav-link <?= ($current_menu == 'users') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-users"></i></span>
                            <span class="sb-label">Kelola Akun</span>
                        </a>
                    </li>
                </ul>

            <?php elseif ($role == 'kasir'): ?>

                <ul class="sb-nav-list">
                    <li class="nav-item">
                        <a href="<?= site_url('kasir/kasir') ?>" class="nav-link <?= ($current_menu == 'kasir') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-tachometer-alt"></i></span>
                            <span class="sb-label">Dashboard</span>
                        </a>
                    </li>
                </ul>

                <span class="sb-section-label">Master Data</span>
                <?php $is_master_active_kasir = ($current_menu == 'produk') ? 'menu-open menu-is-opening' : ''; ?>
                <ul class="sb-nav-list" data-widget="treeview" role="menu" data-accordion="false">
                    <li class="nav-item has-treeview <?= $is_master_active_kasir ?>">
                        <a href="#" class="nav-link <?= ($is_master_active_kasir != '') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-box"></i></span>
                            <span class="sb-label">Data Material</span>
                            <i class="fas fa-chevron-right sb-arrow"></i>
                        </a>
                        <ul class="nav nav-treeview sb-submenu" style="<?= ($is_master_active_kasir != '') ? 'display: block;' : '' ?>">
                            <li class="nav-item">
                                <a href="<?= site_url('kasir/produk') ?>" class="nav-link <?= ($current_menu == 'produk') ? 'active' : '' ?>">
                                    <span class="sb-dot"></span>
                                    <span class="sb-label">Data Keramik</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="<?= site_url('kasir/supplier') ?>" class="nav-link <?= ($current_menu == 'supplier') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-truck"></i></span>
                            <span class="sb-label">Data Pabrik / Distributor</span>
                        </a>
                    </li>
                </ul>

                <span class="sb-section-label">Transaksi</span>
                <ul class="sb-nav-list">
                    <li class="nav-item">
                        <a href="<?= site_url('kasir/barang_masuk') ?>" class="nav-link <?= ($current_menu == 'barang_masuk') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-arrow-circle-down"></i></span>
                            <span class="sb-label">Barang Masuk</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= site_url('kasir/penjualan') ?>" class="nav-link <?= ($current_menu == 'penjualan') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-shopping-cart"></i></span>
                            <span class="sb-label">Penjualan Offline</span>
                        </a>
                    </li>
                </ul>

                <span class="sb-section-label">Laporan</span>
                <ul class="sb-nav-list">
                    <li class="nav-item">
                        <a href="<?= site_url('kasir/laporan') ?>" class="nav-link <?= ($current_menu == 'laporan') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-file-invoice-dollar"></i></span>
                            <span class="sb-label">Laporan Penjualan</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= site_url('kasir/riwayat') ?>" class="nav-link <?= ($current_menu == 'riwayat') ? 'active' : '' ?>">
                            <span class="sb-icon"><i class="fas fa-history"></i></span>
                            <span class="sb-label">Riwayat Transaksi</span>
                        </a>
                    </li>
                </ul>

            <?php endif; ?>

            <hr class="sb-divider">
            <a href="javascript:void(0)" onclick="document.getElementById('modalLogout').classList.add('show')" class="sb-logout-link">
                <span class="sb-icon-red"><i class="fas fa-sign-out-alt"></i></span>
                <span class="sb-label">Logout</span>
            </a>
            
        </nav>
    </div>
</aside>

<!-- MODAL LOGOUT CONFIRMATION -->
<style>
    .logout-modal-overlay { display: none; position: fixed; inset: 0; background: rgba(0,0,0,0.45); z-index: 99999; align-items: center; justify-content: center; padding: 20px; backdrop-filter: blur(3px); }
    .logout-modal-overlay.show { display: flex; }
    .logout-modal-box { background: #fff; border-radius: 16px; width: 100%; max-width: 380px; box-shadow: 0 20px 60px rgba(0,0,0,0.2); overflow: hidden; animation: logoutModalIn 0.2s ease; }
    @keyframes logoutModalIn { from { opacity: 0; transform: translateY(-16px) scale(0.97); } to { opacity: 1; transform: translateY(0) scale(1); } }
    .logout-modal-header { padding: 18px 22px; border-bottom: 1px solid #f1f3f5; display: flex; align-items: center; justify-content: space-between; }
    .logout-modal-header h4 { font-size: 15px; font-weight: 700; color: #111827; margin: 0; font-family: 'DM Sans', sans-serif; }
    .logout-modal-close { width: 30px; height: 30px; background: #f3f4f6; border: none; border-radius: 7px; cursor: pointer; color: #6b7280; font-size: 13px; display: flex; align-items: center; justify-content: center; }
    .logout-modal-close:hover { background: #e5e7eb; }
    .logout-modal-body { padding: 24px 22px; text-align: center; }
    .logout-modal-icon { width: 56px; height: 56px; background: #fffbeb; border-radius: 14px; display: flex; align-items: center; justify-content: center; font-size: 24px; color: #d97706; margin: 0 auto 14px; }
    .logout-modal-body h5 { font-size: 15px; font-weight: 700; color: #111827; margin: 0 0 8px; font-family: 'DM Sans', sans-serif; }
    .logout-modal-body p { font-size: 12.5px; color: #6b7280; margin: 0; line-height: 1.6; font-family: 'DM Sans', sans-serif; }
    .logout-modal-footer { padding: 14px 22px; border-top: 1px solid #f1f3f5; display: flex; justify-content: flex-end; gap: 10px; }
    .logout-modal-btn-cancel { padding: 9px 18px; border: 1.5px solid #e5e7eb; border-radius: 9px; background: #fff; color: #6b7280; font-size: 13px; font-weight: 600; cursor: pointer; font-family: 'DM Sans', sans-serif; }
    .logout-modal-btn-cancel:hover { background: #f9fafb; }
    .logout-modal-btn-confirm { padding: 9px 20px; border: none; border-radius: 9px; background: linear-gradient(135deg, #d97706, #b45309); color: #fff; font-size: 13px; font-weight: 600; cursor: pointer; font-family: 'DM Sans', sans-serif; display: flex; align-items: center; gap: 6px; text-decoration: none; box-shadow: 0 3px 10px rgba(217,119,6,0.3); }
    .logout-modal-btn-confirm:hover { opacity: 0.9; color: #fff; text-decoration: none; }
</style>

<div class="logout-modal-overlay" id="modalLogout">
    <div class="logout-modal-box">
        <div class="logout-modal-header">
            <h4><i class="fas fa-sign-out-alt" style="color:#d97706; margin-right:8px;"></i>Konfirmasi Logout</h4>
            <button class="logout-modal-close" onclick="document.getElementById('modalLogout').classList.remove('show')"><i class="fas fa-times"></i></button>
        </div>
        <div class="logout-modal-body">
            <div class="logout-modal-icon"><i class="fas fa-exclamation-triangle"></i></div>
            <h5>Yakin ingin logout?</h5>
            <p>Anda akan keluar dari sistem.<br>Pastikan semua pekerjaan sudah tersimpan sebelum keluar.</p>
        </div>
        <div class="logout-modal-footer">
            <button type="button" class="logout-modal-btn-cancel" onclick="document.getElementById('modalLogout').classList.remove('show')">Batal</button>
            <a href="<?= site_url('auth/logout') ?>" class="logout-modal-btn-confirm"><i class="fas fa-sign-out-alt"></i> Ya, Logout</a>
        </div>
    </div>
</div>

<script>
(function(){
    var overlay = document.getElementById('modalLogout');
    if(overlay){
        overlay.addEventListener('click', function(e){ if(e.target === overlay) overlay.classList.remove('show'); });
    }
    document.addEventListener('keydown', function(e){
        if(e.key === 'Escape' && document.getElementById('modalLogout')) document.getElementById('modalLogout').classList.remove('show');
    });
})();
</script>