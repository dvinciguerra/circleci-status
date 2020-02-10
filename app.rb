#!ruby
# frozen_string_literal: true

require 'http'
require 'yaml'

configs = YAML.load_file(File.expand_path('./application.yml'))

module CircleCI
  class << self
    FAILURE_COLOR = '#F24646'

    def get_badge(badge_url)
      response = HTTP.get(badge_url)
      response.body.to_s
    end

    def failed_status?(body)
      !body.index(FAILURE_COLOR).nil?
    end
  end
end

projects = configs.keys

projects.each do |project|
  badge_url, title, url = configs[project].values_at('badge', 'title', 'url')

  badge = CircleCI.get_badge(badge_url)

  next unless CircleCI.failed_status? badge

  `terminal-notifier -group 'circleci' \\
    -title 'CircleCI Status for #{title}' \\
    -message '🔴 Branch master CI status is failed!' \\
    -open '#{url}'`
end
