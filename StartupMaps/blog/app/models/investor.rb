class Investor < ActiveRecord::Base
	belongs_to :Entity

	SECTORS = %w[Agriculture Manufacturing Trading Clothes Telecommunications]
end
