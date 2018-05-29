# frozen_string_literal: true

# == Schema Information
#
# Table name: energies
#
#  id                :bigint(8)        not null, primary key
#  date              :date             not null
#  daylight          :decimal(10, )    not null
#  energy_production :integer          not null
#  label             :integer          not null
#  month             :integer          not null
#  temperature       :decimal(10, )    not null
#  year              :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  house_id          :bigint(8)        not null
#
# Indexes
#
#  index_energies_on_house_id  (house_id)
#
# Foreign Keys
#
#  fk_rails_...  (house_id => houses.id)
#


class Energy < ApplicationRecord
end
