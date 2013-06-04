class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :name
      t.string :shortDescription
      t.text :longDescription
      t.string :detail1
      t.string :detail2
      t.string :detail3
      t.string :detail4
      t.string :detail5
      t.string :detail6
      t.string :detail7
      t.datetime :saleStart
      t.datetime :saleEnd
      t.datetime :validStart
      t.datetime :validEnd
      t.integer :price
      t.integer :value
      t.string :businessName
      t.string :businessHours
      t.text :businessLocation
      t.string :businessContact
      t.integer :voucherLimit

      t.timestamps
    end
  end
end
