use_bpm 130

live_loop :met do
  sleep 1
end

define :pattern do |pattern|
  return pattern.ring.tick == "x"
end


live_loop :thinkle, sync: :met do
  ##| stop
  sample :tabla_tas2, amp: 0.6 if pattern "x-x-x-x-xxx-x-x-"
  sleep 0.125
end

live_loop :bomm, sync: :met do
  ##| stop
  sample :drum_heavy_kick, amp: 3 if pattern "x-----x---x--x--"
  sleep 0.25
end


live_loop :dumm, sync: :met do
  ##| stop
  sleep 1
  sample :drum_cymbal_hard
  sleep 1
end

live_loop :start do
  with_fx :reverb do
    sample :ambi_blip2
  end
  sleep 1
end

live_loop :dumdum do
  ##| stop
  sample :perc_bell2,
    attack: 0, attack_level: 2,
    sustain: 4, sustain_level: 6,
    decay: 2, decay_level: 4,
    release: 2
  sleep 4
  sample :drum_bass_hard, amp: 3
  sleep 0
end

##| live_loop :drone do
##|   stop
##|   sample :ambi_drone, attack: 3, release: 9
##|   sleep 1.5
##| end

live_loop :dumm do
  ##| stop
  sample :bd_haus, amp: 0.9
  sleep 0.5
end

live_loop :alert do
  ##| stop
  sample :glitch_bass_g, attack: 2.5, release: 5
  sleep 2
end