# frozen_string_literal: true

class PopulateGifts < ActiveRecord::Migration[7.0]
  def up
    Gift.create! [
                   {name: '1 Year Free Full-Time School', order: 25, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/full-time-school.png'},
                   {name: 'Ziyara Arb3een Trip w/ 7amlet Al Wafaa', order: 24, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/ziyara.png'},
                   {name: 'Macbook Air M2', order: 23, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/macbook.png'},
                   {name: 'Napolean Rebel 4 Burner BBQ', order: 22, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/bbq.png'},
                   {name: 'iPhone 14', order: 21, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/iphone.png'},
                   {name: 'Dyson v15 Laser Vacuum', order: 20, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/dyson.png'},
                   {name: '75 in TV Samsung Smart TV', order: 19, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/samsung-tv.png'},
                   {name: 'iPad mini', order: 18, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/ipad.png'},
                   {name: 'PS5', order: 17, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/ps5.png'},
                   {name: 'Dyson Airwrap', order: 16, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/airwrap.png'},
                   {name: 'Apple Watch Series 8', order: 15, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/apple-watch.png'},
                   {name: 'Nintendo Switch OLED', order: 14, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/switch.png'},
                   {name: 'Dewalt XR Drill Set', order: 13, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/dewalt.png'},
                   {name: 'Sonos Sound Bar', order: 12, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/sonos.png'},
                   {name: 'AirPods 3rd Generation', order: 11, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/airpods.png'},
                   {name: 'Keurig K-Duo Coffee Machine', order: 10, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/keurig.png'},
                   {name: 'Sony XE300 Wireless Speaker', order: 9, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/sony-speaker.png'},
                   {name: 'Google Nest Smart Thermometer', order: 8, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/nest.png'},
                   {name: 'Nespresso Vertuo Coffee Machine', order: 7, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/nespresso.png'},
                   {name: 'Precious Auto Detailing Giftcard', order: 6, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/giftcard.png'},
                   {name: 'HyperX Cloud Gaming Headset', order: 5, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/headset.png'},
                   {name: 'Eufy Smart Doorbell', order: 4, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/eufy.png'},
                   {name: 'Gourmia Air Fryer', order: 3, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/air-fryer.png'},
                   {name: '1 Year Free Kashef', order: 2, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/kashef.png'},
                   {name: '1 Year Free YC', order: 1, url: 'https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/yc.png'}
                 ]
  end

  def down
    Gift.destroy_all
  end
end
