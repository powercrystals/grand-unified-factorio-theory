for _, wagon in pairs(data.raw["cargo-wagon"]) do
	wagon.max_speed = math.max(wagon.max_speed, 5)
end

for _, wagon in pairs(data.raw["fluid-wagon"]) do
	wagon.max_speed = math.max(wagon.max_speed, 5)
end

for _, wagon in pairs(data.raw["artillery-wagon"]) do
	wagon.max_speed = math.max(wagon.max_speed, 5)
end