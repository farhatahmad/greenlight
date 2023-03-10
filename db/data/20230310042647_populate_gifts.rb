# frozen_string_literal: true

class PopulateGifts < ActiveRecord::Migration[7.0]
  def up
    Gift.create! [
                   {name: '1 Year Free Full-Time School', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/full-time-school.png'},
                   {name: 'Ziyara Arb3een Trip w/ 7amlet Al Wafaa', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/ziyara.png'},
                   {name: 'Macbook Air M2', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/macbook.png'},
                   {name: 'Napolean Rebel 4 Burner BBQ', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/bbq.png'},
                   {name: 'iPhone 14', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/iphone.png'},
                   {name: 'Dyson v15 Laser Vacuum', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/dyson.png'},
                   {name: '75 in TV Samsung Smart TV', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/samsung-tv.png'},
                   {name: 'iPad mini', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/ipad.png'},
                   {name: 'PS5', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/ps5.png'},
                   {name: 'Dyson Airwrap', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/airwrap.png'},
                   {name: 'Apple Watch Series 8', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/apple-watch.png'},
                   {name: 'Nintendo Switch OLED', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/switch.png'},
                   {name: 'Dewalt XR Drill Set', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/dewalt.png'},
                   {name: 'Sonos Sound Bar', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/sonos.png'},
                   {name: 'AirPods 3rd Generation', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/airpods.png'},
                   {name: 'Keurig K-Duo Coffee Machine', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/keurig.png'},
                   {name: 'Sony XE300 Wireless Speaker', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/sony-speaker.png'},
                   {name: 'Google Nest Smart Thermometer', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/nest.png'},
                   {name: 'Nespresso Vertuo Coffee Machine', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/nespresso.png'},
                   {name: 'Precious Auto Detailing Giftcard', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/giftcard.png'},
                   {name: 'HyperX Cloud Gaming Headset', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/headset.png'},
                   {name: 'Eufy Smart Doorbell', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/eufy.png'},
                   {name: 'Gourmia Air Fryer', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/air-fryer.png'},
                   {name: '1 Year Free Kashef', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/kashef.png'},
                   {name: '1 Year Free YC', url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/yc.png'}
                 ]
  end

  def down
    Gift.destroy_all
  end
end
