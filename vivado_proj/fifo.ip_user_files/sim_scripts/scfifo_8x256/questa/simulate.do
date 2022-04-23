onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib scfifo_8x256_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {scfifo_8x256.udo}

run -all

quit -force
