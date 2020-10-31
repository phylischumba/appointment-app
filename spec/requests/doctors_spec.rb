RSpec.describe 'Doctors', type: :request do
  # initialize test data
  let(:user) { create(:user, 3) }
  let(:user_id) {User.all.shuffle.first.id}
  let!(:doctors) { create_list(:doctor, 6) }
  let(:doctor_id) { Doctor.all.shuffle.last.id }
  let(:headers) { valid_headers }

  # Test suite for GET /doctors
  describe 'GET /v1/doctors' do
    # make HTTP get request before each example
    before { get '/v1/doctors', params: {}, headers: headers }

    it 'returns doctors' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(6)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
  # Test suite for GET /doctors/:id
  describe 'GET /v1/doctors/:id' do
    before { get "/v1/doctors/#{doctor_id}", params: {}, headers: headers }

    context 'when the record exists' do
      it 'returns the user' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(doctor_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:doctor_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Doctor with 'id'=100/)
      end
    end
  end

  # Test suite for POST /doctors
  describe 'POST /v1/doctors' do
    # valid payload
    let(:valid_attributes) {
      { name: 'John Doe', specialization: 'Orthorpaedic',
        practicing_from: 20140925, professional_statement: 'surgeon and consultant' }.to_json
    }

    # before do
    #   post '/doctors', params: {}, headers: headers
    # end

    context 'when the request is valid' do
      before { post '/v1/doctors', params: valid_attributes, headers: headers }

      it 'creates a doctor' do
        expect(json['name']).to eq('John Doe')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      let(:invalid_attributes) { { name: nil }.to_json }
      before { post '/v1/doctors', params: {}, headers: headers }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(json['message'])
          .to match(/Validation failed: Name can't be blank/)
      end
    end
  end

  # Test suite for PUT /doctors/:id
  describe 'PUT /v1/doctors/:id' do
    let(:valid_attributes) { { name: 'John Doe' }.to_json }

    context 'when the record exists' do
      before { put "/v1/doctors/#{doctor_id}", params: valid_attributes, headers: headers }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /doctors/:id
  describe 'DELETE /v1/doctors/:id' do
    before { delete "/v1/doctors/#{doctor_id}", params: {}, headers: headers }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
