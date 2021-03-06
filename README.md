## CircleCI Status

[![Maintainability](https://api.codeclimate.com/v1/badges/4b715f2fd4719d44e69f/maintainability)](https://codeclimate.com/github/dvinciguerra/circleci-status/maintainability)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

Simple service to notify when CircleCI projects build workflows get failed status.

![https://raw.githubusercontent.com/dvinciguerra/circleci-status/master/circleci-status.png](https://raw.githubusercontent.com/dvinciguerra/circleci-status/master/circleci-status.png)

### Configuration

Add you projects to `application.yml` file.

```yaml
project_name:
  title: Project Name
  badge: https://circleci.com/gh/CompanyName/project.svg?style=svg&circle-token=[TOKEN]
  url: https://github.com/Company/reponame

project_name2:
  title: Project Name2
  badge: https://circleci.com/gh/CompanyName/project2.svg?style=svg&circle-token=[TOKEN]
  url: https://github.com/Company/reponame2
```

### Runnig

Run this service using terminal

```bash
$ bundle
$ bundle exec ruby app.rb
```


### Authors

Daniel Vinciguerra <daniel.vinciguerra@bivee.com.br>
