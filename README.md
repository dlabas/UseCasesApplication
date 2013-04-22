UseCasesApplication
===================
A simple Zend Framework 2 application for getting an overview of your use cases. (Based on [ZF2](https://github.com/zendframework/zf2) and [ZendSkeletonApplication](https://github.com/zendframework/ZendSkeletonApplication)

This app is currently under heavy development.

## Introduction

Comming soon...

Requirements
------------

* [ZF2](https://github.com/zendframework/zf2)
* [DlcBase](https://github.com/dlabas/DlcBase)
* [DlcCategory](https://github.com/dlabas/DlcCategory)
* [DlcDiagramm](https://github.com/dlabas/DlcDiagramm)
* [DlcDoctrine](https://github.com/dlabas/DlcDoctrine)
* [DlcUseCase](https://github.com/dlabas/DlcUseCase)

Installation
------------

## Main Setup

1. Clone this project into your `./pathToProject/` directory.
2. Change directory to your project directory:

    ```bash
    cd pathToProject/
    ```

3. Now tell composer to download all requirements by running the command:

    ```bash
    php composer.phar self-update
    php composer.phar install
    ```

#### Post installation

1. Copy the `config/autoload/local.php.dist` file for your project:

    ```bash
    cp config/autoload/local.php.dist config/autoload/local.php
    ```

2. Enabling your DB connection in your `config/autoload/local..php` file.

    ```php
    <?php
    return array(
        'doctrine' => array(
            'connection' => array(
                'orm_default' => array(
                    'driverClass' => 'Doctrine\DBAL\Driver\PDOMySql\Driver',
                    'params' => array(
                        'host'     => 'localhost',
                        'port'     => '3306',
                        'user'     => 'dbuser',
                        'password' => 'dbpassword',
                        'dbname'   => 'dbname',
                    )
                )
            )
        ),

        //...

    );
    ```

3. Create your database

    ```bash
    mysql -u root -e"CREATE DATABASE use_cases_dev;"
    ```

4. Load default database dump

    ```bash
    mysql -u root use_cases_dev < data/dumps/initial_dump.sql
    ```

5. Make sure that the directory `pathToProject/data` is writeable by your web server
6. Make sure that the document root of your virtual host points to the `public` directory
