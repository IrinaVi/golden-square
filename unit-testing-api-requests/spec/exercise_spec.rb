require "exercise"

RSpec.describe TimeError do
    it 'returns time difference' do
        fake_requester = double :requester
        expect(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"BST","client_ip":"188.30.184.142","datetime":"2022-06-22T20:16:05.309548+01:00","day_of_week":3,"day_of_year":173,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1655925365,"utc_datetime":"2022-06-22T19:16:05.309548+00:00","utc_offset":"+01:00","week_number":25}')
        time = Time.new(2022, 3, 13, 13, 21, 38)
        time_error = TimeError.new(fake_requester)
        expect(time_error.error(Time.now)).to eq -45867.869401
    end
end