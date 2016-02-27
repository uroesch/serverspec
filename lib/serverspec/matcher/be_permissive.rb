RSpec::Matchers.define :be_permissive do
  match do |selinux|
    selinux.permissive?(@with_policy)
  end

  description do
    message = 'be permissive'
    message << ' with policy #{@with_policy}' if @with_policy
    message
  end

  chain :with_policy do |with_policy|
    @with_policy = with_policy
  end
end
