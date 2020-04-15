def exec_time(proc)
    before = Time.now
    proc.call
    after = Time.now
    after-before
end