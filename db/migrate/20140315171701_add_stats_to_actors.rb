class AddStatsToActors < ActiveRecord::Migration
  def change
    add_column :actors, :first_name, :string
    add_column :actors, :last_name, :string
    add_column :actors, :equity, :string
    add_column :actors, :height, :integer
    add_column :actors, :weight, :integer
    add_column :actors, :headshot, :string
    add_column :actors, :resume, :string
    add_column :actors, :gender, :string
    add_column :actors, :hair, :string
    add_column :actors, :eyes, :string
  end
end
