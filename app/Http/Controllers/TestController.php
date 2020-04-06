<?php

namespace App\Http\Controllers;

use App\Models\test;
use Illuminate\Http\Request;

class TestController extends Controller
{
    /**
     * @var test
     */
    public $objTest;

    public function __construct()
    {
        $this->objTest = new test();
    }
    public function getTestList()
    {
        return $this->objTest->getInfo();
    }
}
