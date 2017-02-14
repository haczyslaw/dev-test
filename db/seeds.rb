Country.destroy_all
PanelProvider.destroy_all
Location.destroy_all
LocationGroup.destroy_all
TargetGroup.destroy_all

CITIES = {
  pl: %w(Warsaw Cracow Wroclaw Poznan Tricity Katowice Lublin Torun Bydgoszcz Szczecin),
  ru: %w(Moscau Petersburg Vladivostok),
  de: %w(Berlin Cologne Hamburg Stuttgart Frankfurt Hanover Munich),
}.freeze

def create_cities(country_code, range = Range.new(0, 6))
  country = Country.find_by_country_code(country_code)
  cities = CITIES[country_code.to_sym]

  locations = cities[range].map do |city|
    Location.create(name: city, external_id: city.downcase, secret_code: city)
  end

  location_group = LocationGroup.create(name: Time.now.to_f, country: country, panel_provider: country.panel_provider)
  location_group.locations = locations
  location_group.save
end

%w(pl de ru).each do |country_code|
  Country.create(country_code: country_code, panel_provider: PanelProvider.create(code: country_code))

  create_cities(country_code)
end

create_cities('pl', Range.new(7, -1))

def create_target_group(panel, stack_level, parent_id = nil)
  return if stack_level == 0

  tg = TargetGroup.create(name: "name_#{stack_level}_#{panel.code}_#{Time.now.to_f}",
                          panel_provider_id: panel.id,
                          external_id: "external_#{stack_level}",
                          secret_code: "secret_#{stack_level}",
                          parent_id: parent_id)

  create_target_group(panel, stack_level - 1, tg.id)
end

%w(de pl ru pl).each do |country_code|
  panel = PanelProvider.find_by_code(country_code)

  create_target_group(panel, 4)
end
