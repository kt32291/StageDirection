class AddThingsToAuditions < ActiveRecord::Migration
  def change
    add_column :auditions, :audition_start, :date
    add_column :auditions, :audition_end, :date
  end
end
