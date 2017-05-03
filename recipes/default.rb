execute 'datadog-agent' do
    command 'DD_API_KEY=1fb1a9cb893fdcdfc1e2043fdc8b28ee bash -c "$(curl -L https://raw.githubusercontent.com/DataDog/dd-agent/master/packaging/datadog-agent/source/install_agent.sh)"'
end
sleep 10
execute 'Start-the-datadog-agent' do
    command 'sudo /etc/init.d/datadog-agent status'
    action :run
    
sleep 5
execute 'Start-the-datadog-agent' do
  command 'sudo /etc/init.d/datadog-agent start'
  action :run
end
