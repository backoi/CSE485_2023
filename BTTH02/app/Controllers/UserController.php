<?php
    class UserController extends BaseController{
        public function index(){

            return $this->view('users.index');//cach viet theo laravel

        }
        public function login(){

        }
    }
?>