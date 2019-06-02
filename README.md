# CNAB bundle for redis

cnab spec is used to bundle the application

## Prerequsites

``` no-highlight
Docker
duffle
```

## Building the bundle

Use the following command to install the bundle:

``` bash
duffle build redis
```

## Installing the bundle

Use the following command to install the bundle:

``` bash
duffle install redis-install redis
```

It will output the redis url and password that can be used to connect to your application

## Uninstalling the bundle

Use the following command to uninstall the bundle:

``` bash
duffle uninstall redis-install
```
