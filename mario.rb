# trying to sound like https://www.youtube.com/watch?v=U5-YDxH6It8
use_synth :piano
use_bpm 120

define :playwithpitch do |x|
  with_fx :reverb, room: 0.1, mix: 0.2 do
    4.times do
      play_pattern_timed [:Cb, :Gb, :Fb, :Gb], 0.25, pitch: x
    end
    play_chord [:Cb, :Gb, :Fb, :Gb], amp: 2, pitch: x
    
    4.times do
      play_pattern_timed [:Fb, :Cb, :Bb, :Cb], 0.25, pitch: x
    end
    play_chord [:Fb, :Cb, :Bb, :Cb], amp: 3, pitch: x
    4.times do
      play_pattern_timed [:Cb, :Gb, :Fb, :Gb], 0.25, pitch: x
    end
    play_chord [:Cb, :Gb, :Fb, :Gb], amp: 3, pitch: x
    
    2.times do
      play_pattern_timed [:Db, :Ab, :Gb, :Ab], 0.25, pitch: x
    end
    2.times do
      play_pattern_timed [:Gb, :Db, :Cb, :Db], 0.25, pitch: x
    end
    play_chord [:Gb, :Db, :Cb, :Db], amp: 3, pitch: x
    
    4.times do
      play_pattern_timed [:Cb, :Gb, :Fb, :Gb], 0.25, pitch: x
    end
    play_chord [:Cb, :Gb, :Fb, :Gb], amp: 3, pitch: x
    
    4.times do
      play_pattern_timed [:Fb, :Cb, :Bb, :Cb], 0.25, pitch: x
    end
    play_chord [:Fb, :Cb, :Bb, :Cb], amp: 3, pitch: x
    
    2.times do
      play_pattern_timed [:Db, :Ab, :Gb, :Ab], 0.25, pitch: x
    end
    2.times do
      play_pattern_timed [:Gb, :Db, :Cb, :Db], 0.25, pitch: x
    end
    play_chord [:Gb, :Db, :Cb, :Db], amp: 3, pitch: x
    
    4.times do
      play_pattern_timed [:Cb, :Gb, :Fb, :Gb], 0.25, pitch: x
    end
    play_chord [:Cb, :Gb, :Fb, :Gb], amp: 3, pitch: x
  end
end

playwithpitch(5)
