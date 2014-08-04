require 'sequel'
DB = Sequel.connect(:adapter => 'postgres', :database => 'teachers_pet_development')

DB.create_table :reports do
  primary_key :id
  String :app
  Float :simple_cov
  Integer :rubocop
  DateTime :created_at
end
