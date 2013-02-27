# class UserBaseInfo < ActiveRecord::Base
#   self.table_name = 'user_base_info'
# end


  # # specify schema and table name
  # set_table_name "hr.hr_employees"
  # # specify primary key name
  # set_primary_key "employee_id"
  # # specify sequence name
  # set_sequence_name "hr.hr_employee_s"
  # # set which DATE columns should be converted to Ruby Date
  # set_date_columns :hired_on, :birth_date_on
  # # set which DATE columns should be converted to Ruby Time
  # set_datetime_columns :last_login_time
  # # set which VARCHAR2 columns should be converted to true and false
  # set_boolean_columns :manager, :active
  # # set which columns should be ignored in ActiveRecord
  # ignore_table_columns :attribute1, :attribute2