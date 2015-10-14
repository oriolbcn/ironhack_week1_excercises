hash = {
	:wat => [
		'value',
		'second value',
		{
			:wut => [
				[],
				[
					[
						1,
						2,
						3,
						4,
						5,
						6,
						7,
						8,
						9,
						{
							:bbq => 'hi, we did it!'
						}
					]
				]
			]
		}
	]
}

puts hash[:wat][2][:wut][1][0][9][:bbq]

arr = [
	[
		1,
		2,
		3,
		4,
		5,
		{
			:secret => {
				:unlock => [
					'blah',
					'hi'
				]
			}
		}
	]
]

puts arr[0][5][:secret][:unlock][1]