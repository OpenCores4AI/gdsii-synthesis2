--- 
project:
  source_files:
    - counter_2bit.vhd
    - tt_um_opencores_counter.v
  top_module:  "tt_um_opencores_counter"

documentation:
  author:       "David Alejandro Trejo Pizzo"
  title:        "2-bit Counter (VHDL)"
  language:     "VHDL/Verilog"
  description:  "A simple 2-bit counter generated and wrapped for ASIC execution."

  pinout:
    ui[0]: "unused"
    ui[1]: "unused"
    ui[2]: "unused"
    ui[3]: "unused"
    ui[4]: "unused"
    ui[5]: "unused"
    ui[6]: "unused"
    ui[7]: "unused"
    uo[0]: "count[0]"
    uo[1]: "count[1]"
    uo[2]: "unused"
    uo[3]: "unused"
    uo[4]: "unused"
    uo[5]: "unused"
    uo[6]: "unused"
    uo[7]: "unused"
