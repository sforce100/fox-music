# 简介

实现一个向日葵的数据处理中心，将核心业务的数据操作通过REST封装，提供统一的应用程序接口，便于上层业务系统整合及调用。

第一版本以Ruby EventMachine实现作为尝试，主要依赖以下Gem:

* goliath
* grape
* ActiveRecord
* oracle-enhanced

## 路线图

待定

## 文档

api待定

## 安装与启动

* 由于oci8依赖oracle客户端。这里有个快速的安装方法，通过xbot。先获取脚本：ssh://git@192.168.9.16:2222/xbot.git，在执行以下命令：

```
fab -f ubuntu.py init -H hone@localhost
fab -f ubuntu.py oracleClient -H hone@localhost
```
* oci8(oracle client 需要安装oracle client)

```
gem install ruby-oci8
```

* 执行命令安装gem

```
bundle install
```

* 启动命令

```
ruby goliation_server.rb -sv
```
