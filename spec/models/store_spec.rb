require 'rails_helper'

RSpec.describe Store, type: :model do
	it "is valid with a store name, store address, store state, store postcode and store phone" do
		store = Store.new(store_name: 'food supply', store_address: 'kota bharu', store_state: 'kelantan', store_postcode: 123445, store_phone: '012345678')
		expect(store).to be_valid
	end

	it "is not valid without a store name" do
		store = Store.new(store_name: nil)
		store.valid?

		expect(store.errors[:store_name]).to include("can't be blank")
	end

	it "is not valid without a store address" do
		store = Store.new(store_address: nil)
		store.valid?

		expect(store.errors[:store_address]).to include("can't be blank")
	end

	it "is not valid without a store state" do
		store = Store.new(store_state: nil)
		store.valid?

		expect(store.errors[:store_state]).to include("can't be blank")
	end

	it "is not valid without a store postcode" do
		store = Store.new(store_postcode: nil)
		store.valid?

		expect(store.errors[:store_postcode]).to include("can't be blank")
	end

	it "is not valid without a store store phone" do
		store = Store.new(store_phone: nil)
		store.valid?

		expect(store.errors[:store_phone]).to include("can't be blank")
	end
end
