desc "products"

task :load_products => [:environment] do
    [
      {
        "name": "Small Package",
        "type": "Golf",
        "length": 48,
        "width": 14,
        "height": 12,
        "weight": 42
      },
      {
        "name": "Large Package",
        "type": "Golf",
        "length": 52,
        "width": 16,
        "height": 14,
        "weight": 56
      },
      {
        "name": "Extra Large Package",
        "type": "Golf",
        "length": 56,
        "width": 18,
        "height": 16,
        "weight": 70
      },
      {
        "name": "Carry On",
        "type": "Luggage",
        "length": 25,
        "width": 15,
        "height": 7,
        "weight": 25
      },
      {
        "name": "Checked Bag",
        "type": "Luggage",
        "length": 26,
        "width": 16,
        "height": 22,
        "weight": 50
      },
      {
        "name": "Oversized Bag",
        "type": "Luggage",
        "length": 41,
        "width": 11,
        "height": 24,
        "weight": 72
      },
      {
        "name": "Ski Bag",
        "type": "Ski",
        "length": 72,
        "width": 8,
        "height": 10,
        "weight": 25
      },
      {
        "name": "Snowboard Bag",
        "type": "Ski",
        "length": 62,
        "width": 14,
        "height": 8,
        "weight": 25
      },
      {
        "name": "Double Ski Bag",
        "type": "Ski",
        "length": 80,
        "width": 10,
        "height": 12,
        "weight": 40
      },
      {
        "name": "Double Snowboard Bag",
        "type": "Ski",
        "length": 70,
        "width": 14,
        "height": 12,
        "weight": 40
      },
      {
        "name": "Snowboot Bag",
        "type": "Ski",
        "length": 25,
        "width": 15,
        "height": 7,
        "weight": 25
      }
    ].each do |product|
      Product.find_or_create_by(
        name: product[:name],
        type_of: product[:type].downcase,
        length: product[:length],
        width: product[:width],
        height: product[:height],
        weight: product[:weight]
      )
    end
end