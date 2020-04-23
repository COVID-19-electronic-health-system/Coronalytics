class User < ApplicationRecord
    has_many :observations, dependent: :destroy
    has_many :virus_checks, dependent: :destroy
    has_many :physicals, through: :observations, dependent: :destroy

    def observation
        observation_num = 1
        observations = {}
        self.physicals.each{ |n|
            observations[observation_num] = {physical: n, nonPhysical: ''}
            observation_num += 1
        }
        observations
    end

    def coronavirus
        corona_hash = {}
        self.virus_checks.each{ |n|
        corona_hash[:confirmed] = n.coronavirus
        }
        corona_hash
    end

    def demographics
        demographics = {}

    end

    def comorbidites
        comorbidites = {'cadiosvascular': {}, 'endocrine': {}}

    end
end
