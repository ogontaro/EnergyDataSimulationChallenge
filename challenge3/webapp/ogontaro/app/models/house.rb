# frozen_string_literal: true

# == Schema Information
#
# Table name: houses
#
#  id            :bigint(8)        not null, primary key
#  city          :string(255)      not null
#  first_name    :string(255)      not null
#  has_child     :boolean          not null
#  last_name     :string(255)      not null
#  num_of_people :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#


class House < ApplicationRecord
  has_many :energies, dependent: :destroy, inverse_of: :energy
end
