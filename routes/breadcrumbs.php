<?php

use Diglactic\Breadcrumbs\Breadcrumbs;
use Diglactic\Breadcrumbs\Generator as BreadcrumbTrail;

// Home
Breadcrumbs::for('home', function (BreadcrumbTrail $trail) {
    $trail->push('Home', url('home'));
});

// Home > user
Breadcrumbs::for('user', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('User', url('master/user'));
});

// Home > roles
Breadcrumbs::for('roles', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('Roles', url('setting/roles'));
});

// Home > pengaturan
Breadcrumbs::for('pengaturan', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('Pengaturan', url('setting/pengaturan'));
});
// Home > menu
Breadcrumbs::for('menu', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('Menu', url('setting/menu'));
});

// Home > dataEmas
Breadcrumbs::for('dataEmas', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('Data Emas', url('master/dataEmas'));
});
