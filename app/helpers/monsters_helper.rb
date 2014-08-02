module MonstersHelper
	def oneline_tag(n)
		n.name.to_s.downcase.delete(' ')
	end
end
