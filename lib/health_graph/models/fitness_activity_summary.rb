# activity="http://runkeeper.com/user/92607838/activity/132749955" 
# climb=7.63636363636364 
# duration=1711.19 
# equipment="None" 
# is_live=false 
# source="RunKeeper" 
# start_time="Thu, 22 Nov 2012 16:25:18" 
# total_calories=72 
# total_distance=781.220066570874 
# type="Walking" 
# uri="/fitnessActivities/132749955" 
# userID=1819153>
module HealthGraph
  class FitnessActivitySummary
    include Model              
    
    hash_attr_accessor :activity, :climb, :duration, :equipment, :is_live, :source, :start_time, 
      :total_calories, :total_distance, :type, :uri, :userID
                          
    def initialize(access_token, path, params = {})            
      self.access_token = access_token
      response = get path, HealthGraph.accept_headers[:fitness_activity_summary], params
      self.body = response.body
      populate_from_hash! self.body
    end                           
  end
end