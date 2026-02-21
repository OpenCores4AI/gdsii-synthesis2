`default_nettype none

module tt_um_counter_2bit (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    // Apagamos los pines bidireccionales y las salidas no utilizadas
    assign uio_out = 8'h00;
    assign uio_oe  = 8'h00;
    assign uo_out[7:2] = 6'h00;

    // Adaptamos el reset (TinyTapeout usa activo bajo, tu VHDL usa activo alto)
    wire rst = ~rst_n;

    // Instanciamos tu módulo VHDL
    counter_2bit counter_inst (
        .clk(clk),
        .rst(rst),
        .count(uo_out[1:0])
    );

endmodule
