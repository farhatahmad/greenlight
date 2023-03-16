# BigBlueButton open source conferencing system - http://www.bigbluebutton.org/.
#
# Copyright (c) 2022 BigBlueButton Inc. and by respective authors (see below).
#
# This program is free software; you can redistribute it and/or modify it under the
# terms of the GNU Lesser General Public License as published by the Free Software
# Foundation; either version 3.0 of the License, or (at your option) any later
# version.
#
# Greenlight is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License along
# with Greenlight; if not, see <http://www.gnu.org/licenses/>.

# frozen_string_literal: true

require_relative 'task_helpers'

namespace :tickets do
  desc 'Checks that the application was configured correctly'
  task create: :environment do
    Ticket.destroy_all

    [*626001..627255].each do |number|
      Ticket.create(number: , drawn: false)
    end

    [*579001..580201].each do |number|
      Ticket.create(number: , drawn: false)
    end

    [*341001..342677].each do |number|
      Ticket.create(number: , drawn: false)
    end

    [*191001..192204].each do |number|
      Ticket.create(number: , drawn: false)
    end

    exit 0
  end

  task gifts: :environment do

  end
end
