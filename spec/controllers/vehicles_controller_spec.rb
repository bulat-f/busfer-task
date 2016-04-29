require 'rails_helper'

RSpec.describe VehiclesController, type: :controller do
  describe '#create' do
    context 'when successful create' do
      let(:params) do
        { vehicle:
          {
            name: 'Higer',
            state_number_attributes: {
              number: 'A200OK',
              region_code: '116'
            },
            certificate_of_title_attributes: {
              number: '77TO123456',
              issue_date: '2016-04-29'
            }
          }
        }
      end

        it { expect{ post :create, params }.to change(Vehicle, :count) }
        it { expect{ post :create, params }.to change(StateNumber, :count) }
        it { expect{ post :create, params }.to change(CertificateOfTitle, :count) }
    end
  end
end
