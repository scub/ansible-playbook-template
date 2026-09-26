require 'serverspec'

set :backend, :exec

describe file('/etc/hostname') do
    it { should be_file }
    it { should contain('standard-hostname.local') }
end

describe host('standard-hostname.local') do
    it { should be_resolvable.by('hosts') }
end