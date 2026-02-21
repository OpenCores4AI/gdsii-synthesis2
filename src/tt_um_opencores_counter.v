`default_nettype none

module tt_um_opencores_counter (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high)
    input  wire       ena,      // always 1 when the design is powered
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    // Apagamos los puertos bidireccionales que no usamos
    assign uio_out = 8'b0;
    assign uio_oe  = 8'b0;
    
    // Ponemos a 0 los 6 bits más significativos de la salida
    assign uo_out[7:2] = 6'b0;

    // Invertimos el reset para adaptarlo al estándar de tu VHDL
    wire rst = ~rst_n;

    // Instanciamos el módulo VHDL
    counter_2bit counter_inst (
        .clk(clk),
        .rst(rst),
        .count(uo_out[1:0])
    );

endmodule
