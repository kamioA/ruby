def initial(firstName, middleName = nil, familyName)
  if middleName.nil? then 
    firstName.chr + '.' + familyName.chr 
  else
    firstName.chr + '.' + middleName + '.' + familyName.chr
  end
end

names = [["John", "Kennedy"], ["Barack", "Obama"], ["George", "A", "Washington"]]

p initial("John", "F", "Kennedy")
