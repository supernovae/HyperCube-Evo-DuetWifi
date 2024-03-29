; homex.g
; called to home the X axis
;
M400                    ; make sure everything has stopped before we make changes
M913 X45 Y45            ; reduce motor current to 45% to prevent belts slipping
G91                     ; relative positioning
G1 Z10 F4800 S2         ; lift Z relative to current position
G4 P500                 ; wait 500msec
M400
G1 S1 X-305 F4800       ; move quickly to X or Y endstop and stop there (first pass)
M400
G4 P500                 ; wait 500msec
G1 X10                  ; Move Away 10mm X axis
M400
G4 P500                 ; wait 500msec
G1 Z-10 F6000 S2        ; lift Z relative to current position
G90                     ; absolute positioning
M400                    ; make sure everything has stopped before we reset the motor currents
M913 X100 Y100 Z100     ; motor currents back to normal