require 'json'

symptomes_keys = ['Chills', 'Shortnessof breath', 'Fatigue', 'Drycough', 'Severe', 'Bluishlips or face', 'Gastrointestinal', 'Headache',  'Lostsense of smell', 'Diarrhea']
symptomes_values = ["None", "Minimal", "Moderate", "Severe"]
data = {}

def gen (symptomes_keys, symptomes_values, data)
    observation = {}
    observations = 10

    observations.times do |i|
        symptomes_keys.each{ |n|
        observation[n] = symptomes_values[0]
        }
        observation['temperature'] = 0
        observation['COVID'] = 0
    data[i] = observation
    end

end

gen(symptomes_keys, symptomes_values, data)

File.write("mockData.json", data.to_json)