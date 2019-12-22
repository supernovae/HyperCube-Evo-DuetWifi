; Auto calibration routine for an example delta printers

G28						; home the printer
G29 S2; clear bed height map

;*** Remove the following line if your Z probe does not need to be deployed
M98 Pdeployprobe.g			; deploy the mechanical Z probe

G30 P0 X5.0 Y155.0 Z-9999 ; probe near a leadscrew - left
G30 P1 X240.0 Y150.0 Z-9999 S2  ; probe near a leadscrew - right
G30 P0 X5.0 Y155.0 Z-9999 ; probe near a leadscrew - left
G30 P1 X240.0 Y150.0 Z-9999 S2  ; probe near a leadscrew - right

;*** Remove the following line if your Z probe does not need to be retracted
M98 Pretractprobe.g				; retract the mechanical Z probe

