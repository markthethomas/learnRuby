require 'mechanize'

a = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}

a.get('https://ifelse.io/') do |page|
  puts page.pretty_inspect
  # search_result = page.form_with(:id => 'gbqf') do |search|
  #   search.q = 'Hello world'
  # end.submit

  # search_result.links.each do |link|
  #   puts link.text
  # end
end