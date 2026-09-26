require 'serverspec'

set :backend, :exec

describe host('default-hostname.local') do
    it { should be_resolvable.by('hosts') }
end