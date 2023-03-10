# frozen_string_literal: true

class PopulateGifts < ActiveRecord::Migration[7.0]
  def up
    Gift.create! [
                   {name: '1 Year Free Full-Time School', picture: ActionController::Base.helpers.image_path('full-time-school.png')},
                   {name: 'Ziyara Arb3een Trip w/ 7amlet Al Wafaa', picture: ActionController::Base.helpers.image_path('ziyara.png')},
                   {name: 'Macbook Air M2', picture: ActionController::Base.helpers.image_path('macbook.png')},
                   {name: 'Napolean Rebel 4 Burner BBQ', picture: ActionController::Base.helpers.image_path('bbq.png')},
                   {name: 'iPhone 14', picture: ActionController::Base.helpers.image_path('iphone.png')},
                   {name: 'Dyson v15 Laser Vacuum', picture: ActionController::Base.helpers.image_path('dyson.png')},
                   {name: '75 in TV Samsung Smart TV', picture: ActionController::Base.helpers.image_path('samsung-tv.png')},
                   {name: 'iPad mini', picture: ActionController::Base.helpers.image_path('ipad.png')},
                   {name: 'PS5', picture: ActionController::Base.helpers.image_path('ps5.png')},
                   {name: 'Dyson Airwrap', picture: ActionController::Base.helpers.image_path('airwrap.png')},
                   {name: 'Apple Watch Series 8', picture: ActionController::Base.helpers.image_path('apple-watch.png')},
                   {name: 'Nintendo Switch OLED', picture: ActionController::Base.helpers.image_path('switch.png')},
                   {name: 'Dewalt XR Drill Set', picture: ActionController::Base.helpers.image_path('dewalt.png')},
                   {name: 'Sonos Sound Bar', picture: ActionController::Base.helpers.image_path('sonos.png')},
                   {name: 'AirPods 3rd Generation', picture: ActionController::Base.helpers.image_path('airpods.png')},
                   {name: 'Keurig K-Duo Coffee Machine', picture: ActionController::Base.helpers.image_path('keurig.png')},
                   {name: 'Sony XE300 Wireless Speaker', picture: ActionController::Base.helpers.image_path('sony-speaker.png')},
                   {name: 'Google Nest Smart Thermometer', picture: ActionController::Base.helpers.image_path('nest.png')},
                   {name: 'Nespresso Vertuo Coffee Machine', picture: ActionController::Base.helpers.image_path('nespresso.png')},
                   {name: 'Precious Auto Detailing Giftcard', picture: ActionController::Base.helpers.image_path('giftcard.png')},
                   {name: 'HyperX Cloud Gaming Headset', picture: ActionController::Base.helpers.image_path('headset.png')},
                   {name: 'Eufy Smart Doorbell', picture: ActionController::Base.helpers.image_path('eufy.png')},
                   {name: 'Gourmia Air Fryer', picture: ActionController::Base.helpers.image_path('air-fryer.png')},
                   {name: '1 Year Free Kashef', picture: ActionController::Base.helpers.image_path('kashef.png')},
                   {name: '1 Year Free YC', picture: ActionController::Base.helpers.image_path('yc.png')}

                 ]
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
