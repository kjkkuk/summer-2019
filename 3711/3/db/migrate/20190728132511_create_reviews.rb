#:reek:FeatureEnvy
#:reek:TooManyStatements
#:reek:UncommunicativeVariableName
class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer  :place_id, null: false
      t.integer  :user_id, null: false
      t.integer  :rating, null: false
      t.text     :text

      t.timestamps
    end
  end
end
