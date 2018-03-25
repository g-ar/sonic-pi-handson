use_bpm 120

rt = 1
cnt = 0
live_loop :foo do
  
  if cnt > 2
    if rt > 1
      rt = 1    
    else
      rt = 3
    end
    cnt = 0
  end
  
  if (ring false, false, false, true, true).tick
    sample :bd_sone, rate: rt
    sample :drum_heavy_kick, rate: rt
    sleep 0.4
  else
    cnt += 1
    cue rt
    sample :tabla_ghe4, rate: rt
    sample :tabla_ghe1, rate: rt
    sleep 0.9
  end
end

