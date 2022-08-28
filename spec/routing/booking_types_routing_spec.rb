require 'rails_helper'

RSpec.describe BookingTypesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/booking_types').to route_to('booking_types#index')
    end

    it 'routes to #new' do
      expect(get: '/booking_types/new').to route_to('booking_types#new')
    end

    it 'routes to #show' do
      expect(get: '/booking_types/1').to route_to('booking_types#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/booking_types/1/edit').to route_to('booking_types#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/booking_types').to route_to('booking_types#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/booking_types/1').to route_to('booking_types#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/booking_types/1').to route_to('booking_types#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/booking_types/1').to route_to('booking_types#destroy', id: '1')
    end
  end
end
