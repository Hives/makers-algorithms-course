def block_timer(iterations)
  # warming up
  10.times { yield }

  start_time = Time.now
  iterations.times { yield }
  end_time = Time.now

  end_time - start_time
end
