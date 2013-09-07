class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :paymentType
      t.string :paymentTo
      t.string :amount
      t.datetime :transactionDate

      t.timestamps
    end
  end
end
