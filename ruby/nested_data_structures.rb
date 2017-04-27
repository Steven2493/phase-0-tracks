#Created hash with nested arrays
office_building = {
	'lobby' => ['Couch','receptionist','water fountain'],
	'manager_office' => ['Desk', 'cabinets','printer','phone'],
	'supply_room' => ['stack_of_papers','binders','box_of_pens'],
	'meeting_room' => ['Large_desk','chairs','plants','windows'],
	'bathroom' => []
}

#Samples of accessing array from within a hash
office_building['bathroom'].push('toilets','sink')
office_building['manager_office'][3] = 'Table'
office_building['supply_room'].delete_at(2)
office_building['meeting_room'].reverse!

#testing before hash manipulation
p office_building

#Samples of changing hash
office_building.delete('meeting_room')
office_building.delete_if {|key, value| key.length <= 5}
office_building.each_key {|key| puts key}
office_building['manager_office'] = 'My Room'
#testing for after changing hash data
p office_building