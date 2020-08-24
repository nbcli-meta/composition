# Beta

*Current work in progress compositions.*

---

## Sonic Chill Sessions

This session is envisioned to be an experiment in generative music, and to perhaps be a future reference for upcoming work in machine learning and composition.  The Sonic Chill Sessions idea tries to fuse together atmospheric sounds, melodic chords of synthesized sounds, driven by an algorithm that manipulates timbre and fluctuates our perception of time.



```rub
live_loop :midi_piano1 do
  note, velocity = sync "/midi:_m__midi_sonic_pi__in_:2:1/note_on"
  use_synth :beep
  use_synth_defaults attack: 0.25, release: 0.5, pan: rrand(-0.5, 0.5), cutoff: 50
  play scale(:Eb2, :major_pentatonic, num_octaves: 3).choose, release: 0.25, amp: 0.5
end

live_loop :midi_piano4 do
  note, velocity = sync "/midi:_m__midi_orca__out_:1:1/note_on"
  use_synth :mod_pulse
  use_synth_defaults attack: 0.25, release: 0.5, pan: rrand(-0.5, 0.5), cutoff: 50
  play scale(:c2, :major, num_octaves: 3).choose, attack: 0.25, release: 0.5
end

live_loop :midi_piano7 do
  note, velocity = sync "/midi:_m__midi_main:0:1/note_on"
  use_synth :mod_sine
  use_synth_defaults attack: 0.25, release: 0.5, pan: rrand(-0.5, 0.5), cutoff: 50
  play scale(:Eb2, :major_pentatonic, num_octaves: 3).choose, attack: 0.25, release: 0.4, amp: rrand(0.25, 0.5), pan: rrand(-0.5, 0.5)
end
```



<!--stackedit_data:
eyJoaXN0b3J5IjpbLTc3NTEwMDczN119
-->