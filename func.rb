def initial(first,family)
  first.chr + '.' + family.chr
end

names = [["John", "Kennedy"], ["Barack", "Obama"], ["George", "Washington"]]

p names.map{ |first, family| initial(first, family) }
