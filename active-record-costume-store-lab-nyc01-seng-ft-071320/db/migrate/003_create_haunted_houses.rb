class CreateHauntedHouses < ActiveRecord::Migration[4.2]
    # By convention, the class name should match the part of the
    # file name after the number, so in this case:
    # 002_create_costumes.rb becomes class CreateCostumes
    def change 
        create_table :haunted_houses do |t|
        t.string :name 
        t.string :location
        t.string :theme
        t.float :price
        t.boolean :family_friendly
        t.datetime :opening_date
        t.datetime :closing_date
        t.text :description

        t.timestamps null: false
        end
    end
end
