class AddStatsToAssociates < ActiveRecord::Migration
  def change
    add_column :associates, :name, :string
    add_column :associates, :title, :string
    add_column :associates, :company_id, :integer
  end
end
