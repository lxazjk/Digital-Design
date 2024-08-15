module HexsTo4Seg(
    input [15:0] hexs,
    input [3:0] points,
    input [3:0] LEs,
    output [31:0] seg_data
);

    HexToSeg HTS1(.hex(hexs[15:12]), .LE(LEs[3]), .point(points[3]), .segment(seg_data[31:24]));
    HexToSeg HTS2(.hex(hexs[11:8]),  .LE(LEs[2]), .point(points[2]), .segment(seg_data[23:16]));
    HexToSeg HTS3(.hex(hexs[7:4]),   .LE(LEs[1]), .point(points[1]), .segment(seg_data[15:8]));
    HexToSeg HTS4(.hex(hexs[3:0]),   .LE(LEs[0]), .point(points[0]), .segment(seg_data[7:0]));

endmodule