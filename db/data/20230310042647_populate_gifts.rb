# frozen_string_literal: true

class PopulateGifts < ActiveRecord::Migration[7.0]
  def up
    Gift.create! [
                   {name: '1 Year Free Full-Time School'},
                   {name: 'Ziyara Arb3een Trip w/ 7amlet Al Wafaa'},
                   {name: 'Macbook Air M2'},
                   {name: 'Napolean Rebel 4 Burner BBQ'},
                   {name: 'iPhone 14'},
                   {name: 'Dyson v15 Laser Vacuum'},
                   {name: '75 in TV Samsung Smart TV'},
                   {name: 'iPad mini'},
                   {name: 'PS5'},
                   {name: 'Dyson Airwrap'},
                   {name: 'Apple Watch Series 8'},
                   {name: 'Nintendo Switch OLED'},
                   {name: 'Dewalt XR Drill Set'},
                   {name: 'Sonos Sound Bar'},
                   {name: 'AirPods 3rd Generation'},
                   {name: 'Keurig K-Duo Coffee Machine'},
                   {name: 'Sony XE300 Wireless Speaker'},
                   {name: 'Google Nest Smart Thermometer'},
                   {name: 'Nespresso Vertuo Coffee Machine'},
                   {name: 'Precious Auto Detailing Giftcard'},
                   {name: 'HyperX Cloud Gaming Headset'},
                   {name: 'Eufy Smart Doorbell'},
                   {name: 'Gourmia Air Fryer'},
                   {name: '1 Year Free Kashef'},
                   {name: '1 Year Free YC'}
                 ]
  end

  def down
    Gift.destroy_all
  end
end
