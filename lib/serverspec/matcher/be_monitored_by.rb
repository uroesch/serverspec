RSpec::Matchers.define :be_monitored_by do |monitor|
  match do |service|
    service.monitored_by?(monitor, @monitor_name)
  end
  description do 
    message = "be monitored by #{monitor}" 
    message << " with name #{@monitor_name}" if @monitor_name
    message
  end 

  chain :with_name do |name|
    @monitor_name = (name ? name : nil)
  end

end
