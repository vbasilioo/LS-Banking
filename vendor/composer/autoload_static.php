<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitf56c8b1af946d98bda79cfa3984a141b
{
    public static $files = array (
        'd8e6b88cd0deaad99e20fa12a5269219' => __DIR__ . '/../..' . '/app/helpers/constants.php',
        '067bacb5b46b66229898f3ed0e98e02a' => __DIR__ . '/../..' . '/app/router/router.php',
        '8e666236b9acb775f5e38c1e08ed2c7b' => __DIR__ . '/../..' . '/app/core/controller.php',
        '23643ec2eb9cee6c73b5a9c9c614365b' => __DIR__ . '/../..' . '/app/database/connect.php',
        '8b922bd70712b59e2ce14369c2c56b20' => __DIR__ . '/../..' . '/app/database/fetch.php',
        '55d8f29b6534b991b0fd7a229032bb7f' => __DIR__ . '/../..' . '/app/helpers/redirect.php',
    );

    public static $prefixLengthsPsr4 = array (
        'a' => 
        array (
            'app\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'app\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
        'app\\controllers\\home' => __DIR__ . '/../..' . '/app/controllers/home.php',
        'app\\controllers\\login' => __DIR__ . '/../..' . '/app/controllers/login.php',
        'app\\controllers\\user' => __DIR__ . '/../..' . '/app/controllers/user.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitf56c8b1af946d98bda79cfa3984a141b::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitf56c8b1af946d98bda79cfa3984a141b::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitf56c8b1af946d98bda79cfa3984a141b::$classMap;

        }, null, ClassLoader::class);
    }
}
