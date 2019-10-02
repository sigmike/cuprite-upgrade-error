```
$ export OLD_CUPRITE=1; bundle install --quiet && ruby test.rb
ok
$ export OLD_CUPRITE=0; bundle install --quiet && ruby test.rb
Traceback (most recent call last):
	12: from test.rb:23:in `<main>'
	11: from capybara-3.29.0/lib/capybara/session.rb:193:in `html'
	10: from cuprite-b0d3682785fb/lib/capybara/cuprite/driver.rb:57:in `html'
	 9: from ruby-2.6.4/lib/ruby/2.6.0/forwardable.rb:230:in `body'
	 8: from ruby-2.6.4/lib/ruby/2.6.0/forwardable.rb:230:in `body'
	 7: from ferrum-00e2846f667d/lib/ferrum/frame/dom.rb:32:in `body'
	 6: from ferrum-00e2846f667d/lib/ferrum/frame/runtime.rb:35:in `evaluate'
	 5: from ferrum-00e2846f667d/lib/ferrum/frame/runtime.rb:72:in `call'
	 4: from ferrum-00e2846f667d/lib/ferrum.rb:105:in `with_attempts'
	 3: from ferrum-00e2846f667d/lib/ferrum/frame/runtime.rb:82:in `block in call'
	 2: from ferrum-00e2846f667d/lib/ferrum/page.rb:111:in `command'
	 1: from ferrum-00e2846f667d/lib/ferrum/browser/client.rb:44:in `command'
ferrum-00e2846f667d/lib/ferrum/browser/client.rb:77:in `raise_browser_error': Cannot find context with specified id (Ferrum::NoExecutionContextError)
```
