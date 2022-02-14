class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string     :status,            null: false
      t.string     :title,             null: false
      t.integer    :occupation_id,     null: false
      t.integer    :prefecture_id,     null: false
      t.string     :city,              null: false
      t.string     :house_number,      null: false
      t.string     :building_name
      t.integer    :line_id,           null: false
      t.integer    :station_id,        null: false
      t.integer    :classification_id, null: false
      t.integer    :salary,            null: false
      t.integer    :period_id,         null: false
      t.time       :start_time,        null: false
      t.time       :end_time,          null: false
      t.string     :holiday,           null: false
      t.text       :description,       null: false
      t.references :agency,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
