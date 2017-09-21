class Fighter

	attr_reader :name, :power
	attr_accessor :health

	def initialize(name:, health:, power:)
		@name = name
		@health = health
		@power = power
	end

	def attack(enemy)
		enemy.health -= self.power
	end
end

