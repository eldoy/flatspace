# Flatspace ruby web app helpers
Request helpers for flat space ruby apps running Sinatra.

### Installation
```
gem install flatspace
```
or add to your Gemfile.

### Usage
```
# Include as helper in your Sinatra app
helpers Flatspace::Helpers::Request

# Login redirect unless session[:u] is set
login

# Password is valid?
password_valid?

# HTTP Basic auth authentication
protect!

# Check HTTP Basic authorization
authorized?

# Colorize input green or red
green('text')
red('text')

# Errors, use for request errors
e
e[:id]
e.any?

# Params
p
p[:i]
p[:i] = 'val'

# Flash
f
f[:i]
f[:i] = 'val'

# Session
s
s[:u]
s[:u] = 'val'

# Halt, stop and return
h(val)

# Go, redirect to path
go(path)

# Go with flash[:info]
go(path, :i => 'message')

# Go with flash[:error]
go(path, :e => 'error')

# Show erb view and use flash.now
now(:view)
now(:view, :i => 'message')
now(:view, :f => 'error')
```

Created and maintained by [Fugroup Ltd.](https://www.fugroup.net) We are the creators of [CrowdfundHQ.](https://crowdfundhq.com)

`@authors: Vidar`
