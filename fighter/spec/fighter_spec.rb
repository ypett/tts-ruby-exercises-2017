require '../lib/fighter'

RSpec.describe Fighter do

	let(:fighter1) {Fighter.new(name: "Ryu", health: 100, power: 30)}
	let(:fighter2) {Fighter.new(name: "Chun Li", health: 100, power: 30)}

	it '.new creates a new fighter' do
		expect(fighter1).to be_an_instance_of Fighter
	end	

	it "#name returns a fighter's name" do
		expect(fighter1.name).to eq("Ryu")
	end

	it "#health returns a fighter's health" do
		expect(fighter1.health).to eq(100)
	end

	it "health can be changed" do
		fighter1.health = 120
		expect(fighter1.health).to eq(120)
	end

	it "#power returns a fighter's power" do
		expect(fighter1.power).to eq(30)
	end

	it '#attacks another fighter' do
		fighter1.attack(fighter2)
		expect(fighter2.health).to eq(70)
	end
end