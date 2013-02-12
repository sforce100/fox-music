# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#初始化用户帐号密码
Admin.create(email: 'master@xiangrikui.com', password: '111111')
Admin.create(email: 'chenyanni@xiangrikui.com', password: '111111')
Admin.create(email: 'heweiqian@xiangrikui.com', password: '111111')
Admin.create(email: 'biqi@xiangrikui.com', password: '111111')
Admin.create(email: 'benson@xiangrikui.com', password: '111111')
Admin.create(email: 'hzh@xiangrikui.com', password: '111111')