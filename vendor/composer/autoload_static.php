<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit888127e883e0e174d38db8abdcea2fb8
{
    public static $prefixesPsr0 = array (
        'o' => 
        array (
            'org\\bovigo\\vfs' => 
            array (
                0 => __DIR__ . '/..' . '/mikey179/vfsStream/src/main/php',
            ),
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixesPsr0 = ComposerStaticInit888127e883e0e174d38db8abdcea2fb8::$prefixesPsr0;

        }, null, ClassLoader::class);
    }
}