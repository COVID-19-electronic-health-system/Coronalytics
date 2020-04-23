Physical.destroy_all
Observation.destroy_all
User.destroy_all

users = 10
entries = 50

def generate_users(users)
    user_id = 1
    while users > 0
        User.create(title: 'user' + user_id.to_s)
        users -= 1
        user_id += 1
    end
end


def generate_observations(entries)
    results = ['Minimal', 'Moderate', 'Severe', nil]
    confirmed = [true, false]
    User.all.each { |user|

        user.virus_checks.create(coronavirus: confirmed.sample)

        entries.times do |i|
            fever = results.sample
            case fever
                when nil
                    temperature = nil
                when 'Minimal'
                    temperature = rand(97..99)
                when 'Moderate'
                    temperature = rand(99.1..100.4)
                when 'Severe'
                    temperature = rand(100.4..110)
            end
            observation = user.observations.create()
            observation.physicals.create(
                fever: fever, 
                chills: results.sample, 
                breathShortnes: results.sample, 
                fatigue: results.sample, 
                dryCough: results.sample, 
                soreThroat: results.sample, 
                bluLipsFace: results.sample, 
                gastrointestinnal: results.sample, 
                headache: results.sample, 
                temperature: temperature
            )
        end
    }
end
 
generate_users(users)
generate_observations(entries)