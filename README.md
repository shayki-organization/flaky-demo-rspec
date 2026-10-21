# flaky-demo-rspec

Demo repository for exercising a flaky-test detector against GitHub Actions logs (RSpec).

- `spec/calc_spec.rb` contains stable examples plus two intentionally flaky
  examples (`flaky: ...`) that fail with ~40% probability per run.
- `.github/workflows/tests.yml` (`Tests` → `unit-tests`) runs `bundle exec rspec`
  so the standard `Failed examples:` section with `rspec ./spec/x_spec.rb:N # desc`
  lines appears in the log.
