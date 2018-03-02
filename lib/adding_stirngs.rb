require "adding_stirngs/version"

module AddingStirngs
  class << self
  	def adding_string str
  		val = str.tr('[]', '').split(',').map(&:to_i)
  		# check if negative values present or not
  		if val.select{|n| n < 0}.empty?
  			return str.tr('[]', '').split(/\W+/).map(&:to_i).inject(0, :+)
  		else
  			raise Exception.new('Give positive string!')
  		end
  	end
  end
end
