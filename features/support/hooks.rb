Before do
  $stdout.sync = true
  $stdin.sync  = true
  @aruba_io_wait_seconds = 4
  @aruba_timeout_seconds = 10
end

Before('@slow_process') do
  $stdout.sync = true
  $stdin.sync  = true
  @aruba_io_wait_seconds = 4
#  @aruba_timeout_seconds = 5
end
