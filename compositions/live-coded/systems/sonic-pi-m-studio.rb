

# [ M ] Studio MIDI to Sonic Pi

live_loop :ch1 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:1/note_on"
  sample :drum_heavy_kick, amp: velocity / 127.0
end


live_loop :ch2 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:2/note_on"
  synth :beep, note: note, amp: velocity / 127.0
end


live_loop :ch3 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:3/note_on"
  synth :blade, note: note, amp: velocity / 127.0
end

live_loop :ch4 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:4/note_on"
  synth :growl, note: note, amp: velocity / 127.0
end

live_loop :ch5 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:5/note_on"
  synth :tb303, note: note, amp: velocity / 127.0
end

live_loop :ch6 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:6/note_on"
  synth :saw, note: note, amp: velocity / 127.0
end

live_loop :ch7 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:7/note_on"
  synth :dtri, note: note, amp: velocity / 127.0
end


live_loop :ch8 do
  note, velocity, length = sync "/midi:_m__midi_sonic_pi:*:8/note_on"
  synth :mod_fm, note: note, amp: velocity / 127.0, release: 1.0
end

live_loop :ch9 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:9/note_on"
  synth :pluck, note: note, amp: velocity / 127.0
end

live_loop :ch10 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:10/note_on"
  synth :dpulse, note: note, amp: velocity / 127.0, pan: rrand(-0.5, 0.5), cutoff: 25, attack: 0.25, release: 0.5
end


live_loop :ch11 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:11/note_on"
  synth :pretty_bell, note: note, amp: velocity / 127.0
end



live_loop :ch12 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:12/note_on"
  synth :subpulse, note: note, amp: velocity / 127.0,  cutoff: 50, release: 0.25, sustain: 0.2
end

live_loop :ch13 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:13/note_on"
  synth :mod_tri, note: note, amp: velocity / 127.0
end

live_loop :ch14 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:14/note_on"
  sample :drum_bass_hard, amp: velocity / 127.0
end



live_loop :ch15 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:15/note_on"
  sample :drum_cymbal_closed, amp: velocity / 127.0
end

live_loop :ch16 do
  note, velocity = sync "/midi:_m__midi_sonic_pi:*:16/note_on"
  sample :drum_snare_soft, amp: velocity / 127.0
end



