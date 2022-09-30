<?php

function mazola_files() {
  wp_enqueue_script('main_mazola_js', get_theme_file_uri('/build/index.js'), array('jquery'), '1.0', true);
  wp_enqueue_style('custom_google_fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
  wp_enqueue_style('font_awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
  wp_enqueue_style('mazola_main_styles', get_theme_file_uri('/build/style-index.css'));
  wp_enqueue_style('mazola_extra_styles', get_theme_file_uri('/build/index.css'));
}

add_action('wp_enqueue_scripts', 'mazola_files');

function mazola_features() {
  register_nav_menu('header_menu_location', 'Header Menu Location');
  register_nav_menu('footer_location_1', 'Footer Menu 1');
  register_nav_menu('footer_location_2', 'Footer Menu 2');
  add_theme_support('title-tag');
}

add_action('after_setup_theme', 'mazola_features');
