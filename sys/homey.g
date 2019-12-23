; homey.g
; called to home the Y axis
;
; generated by RepRapFirmware Configuration Tool v2.1.4 on Thu Dec 19 2019 10:08:30 GMT-0600 (Central Standard Time)
M400                    ; make sure everything has stopped before we make changes
M913 X55 Y55            ; reduce motor current to 55% to prevent belts slipping
G91               ; relative positioning
G1 H2 Z5 F6000    ; lift Z relative to current position
G1 H1 Y-285 F1800 ; move quickly to Y axis endstop and stop there (first pass)
G1 Y5 F6000       ; go back a few mm
G1 H1 Y-285 F360  ; move slowly to Y axis endstop once more (second pass)
G1 H2 Z-5 F6000   ; lower Z again
G90               ; absolute positioning



;G91                     ; relative positioning
;G1 Z10 F4800 S2         ; lift Z relative to current position
;M400
;G4 P500                 ; wait 500msec
;G1 S1 Y-430 F4800       ; move quickly to X or Y endstop and stop there (first pass)
;M400
;G4 P500                 ; wait 500msec
;G1 Y10                  ; Move Away 10mm X axis
;M400
;G4 P500                 ; wait 500msec
;G1 Z-10 F6000 S2        ; lift Z relative to current position
;G90                     ; absolute positioning
;M400                    ; make sure everything has stopped before we reset the motor currents


M913 X100 Y100          ; motor currents back to normal