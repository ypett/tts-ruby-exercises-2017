def hola(name)
	"Hello #{name}"
end



RSpec.describe "#hola" do
	it 'greets a person with their name' do
		expect(hola('Ryan')).to eq('Hello Ryan')
	end
end