RSpec.describe SendleTest::Pricing do
  it 'calculates pricing' do
    shipments = [
      # You'll need to fill in this list and so it produces the
      # expected_display when it's run through the quote system.
      # You can model this data structure as you please.
    ]

    pricing = SendleTest::Pricing.new(pricing_file: "data/prices.csv", zone_file: "data/zones.csv")

    quotes = pricing.get_quotes(shipments)
    display = pricing.render_quotes(quotes)

    # For extra credit, make this layout nicer :)
    #
    expected_display = <<-END
    Quote Report

    Brisbane, 4000 to Brisbane, 4000, 200gm: $4.10
    Adelaide, 5000 to Sydney, 2000, 4000gm: $9.50
    Sydney, 2000 to Glebe, 2037, 5000gm: $4.10
    Perth, 6000 to Brisbane, 4000, 10000gm: $14.90
    Melbourne, 3000 to Modbury, 5092, 12000gm: -
    South Perth, 6151 to Brisbane, 4000, 8000gm: -
    Fremantle, 6160 to Adelaide, 5000, 500gm: $4.50

    Total: $37.10
    END

    expect(display).to eq(expected_display)
  end
end
