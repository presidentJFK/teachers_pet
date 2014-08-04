DB = Sequel.connect('teachers_pet_development')

DB.create_table :items do
  primary_key :id
  String :name
  Float :price
end
