if defined?(ChefSpec)

    def add_apt_repository(repo_name)
      ChefSpec::Matchers::ResourceMatcher.new(:apt_repository, :add, repo_name)
    end

    def add_apt_preference(repo_name)
      ChefSpec::Matchers::ResourceMatcher.new(:apt_preference, :add, repo_name)
    end

end