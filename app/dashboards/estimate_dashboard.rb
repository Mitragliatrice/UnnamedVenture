require "administrate/base_dashboard"

class EstimateDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    currently_listed: Field::String.with_options(searchable: false),
    prop_owner_name: Field::String,
    contact_name: Field::String,
    email: Field::String,
    phone: Field::String,
    street: Field::String,
    street2: Field::String,
    city: Field::String,
    state: Field::String,
    zip: Field::Number,
    beds: Field::Number,
    baths: Field::Number,
    home_sf: Field::Number,
    prop_sf: Field::Number,
    num_garages: Field::Number,
    pool: Field::Number,
    spa: Field::Number,
    upgrades: Field::Text,
    damage: Field::Text,
    photo: Field::Text,
    tod_call: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    status: Field::String.with_options(searchable: false),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :prop_owner_name,
    :contact_name,
    :created_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :currently_listed,
    :prop_owner_name,
    :contact_name,
    :email,
    :phone,
    :street,
    :street2,
    :city,
    :state,
    :zip,
    :beds,
    :baths,
    :home_sf,
    :prop_sf,
    :num_garages,
    :pool,
    :spa,
    :upgrades,
    :damage,
    :photo,
    :tod_call,
    :created_at,
    :updated_at,
    :status,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :currently_listed,
    :prop_owner_name,
    :contact_name,
    :email,
    :phone,
    :street,
    :street2,
    :city,
    :state,
    :zip,
    :beds,
    :baths,
    :home_sf,
    :prop_sf,
    :num_garages,
    :pool,
    :spa,
    :upgrades,
    :damage,
    :photo,
    :tod_call,
    :status,
  ].freeze

  # Overwrite this method to customize how estimates are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(estimate)
  #   "Estimate ##{estimate.id}"
  # end
end
