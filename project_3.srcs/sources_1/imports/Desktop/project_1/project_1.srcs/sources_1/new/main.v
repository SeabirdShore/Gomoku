`timescale 1ns / 1ps
module vga(clk,yidong,rst,disp_rgb,hsync,vsync,AN,SEGMENT,ps2_clk,ps2_data,btn,btnx);
input       clk;						//ϵͳʱ��
input [4:0] yidong;	
input ps2_clk;
input ps2_data;		 
input btn;
		
input  wire   rst;

output[11:0] disp_rgb;
output [3:0] AN;
output [7:0] SEGMENT;
output      hsync,
            vsync;

output btnx;
 //output btnx4;
reg[0:0] flag;
reg[11:0]    hcount;    	//���ź�
reg[11:0]    vcount;		//���ź�
reg[11:0]    data;
reg[11:0]    h_dat;  			//12λ��ɫ����ʾ����
reg[11:0]    z_dat;				
reg[11:0]    y_dat;
reg[11:0]    v_dat;
reg[11:0]    x_dat;
reg[1:0]     over=0;				//��Ϸ�Ƿ������־
wire        hcount_ov;
wire        vcount_ov;
wire        dat_act;
wire        hsync;
wire        vsync;
reg         vga_clk=0;
reg         clk_50ms=0;
reg         cnt_clk=0;
localparam DVSR=4000000;                //��Ƶ��������ֵ
reg [28:0] js;				//��Ƶ�źŵ��м��������
reg [99:0] R=0;			//10X10������
reg [99:0] U=0;				//ÿ�����ӵ�״̬��־
reg[9:0]xsync,ysync;
wire [11:0]x_pos, y_pos;

reg [15:0] hex=16'b0000000000000000;
wire [9:0]a;					
wire [9:0]b;
reg winner;

 //��ʾÿ��������100�����ӵ�λ��
wire [9:0]c;
wire [9:0]d;

wire [99:0] x;

assign btnx=1'b0;
assign         a=(hcount-220)/40;
assign         b=(vcount-70)/40;

 //����ÿ��������100�����ӵ�λ��
assign         c=(ball_x_pos-240)/40;
assign         d=(ball_y_pos-90)/40;


wire [9:0] keyb;
wire keybR;
ps2 k1 (.clk(clk), .rst((1'b0)), .ps2_clk(ps2_clk), .ps2_data(ps2_data), .data_out(keyb), .ready(keybR));

module1 m1(hcount,vcount,x);

parameter 
hsync_end = 10'd95,
hdat_begin = 10'd143,
hdat_end   = 10'd783,
hpixel_end = 10'd799,
vsync_end  = 10'd1,
vdat_begin = 10'd34,
vdat_end   = 10'd514,
vline_end  = 10'd524; 
parameter ball_r=20;
always@(posedge clk)
begin
     if(cnt_clk == 1)
       begin
          vga_clk <= ~vga_clk;
          cnt_clk <= 0;
       end
      else
          cnt_clk <= cnt_clk + 1;
end             

always@(posedge vga_clk)
begin
     if(hcount_ov)
        hcount <= 10'd0;
     else
        hcount <= hcount + 10'd1;
end
assign hcount_ov = (hcount == hpixel_end);

//��ɨ��
always@(posedge vga_clk)
begin
     if(hcount_ov)
     begin
        if(vcount_ov)
           vcount <= 10'd0;
        else
           vcount <= vcount + 10'd1;
     end
end
assign vcount_ov = (vcount == vline_end);
 
//���ݡ�ͬ���ź�����
assign dat_act = ((hcount >= hdat_begin) && (hcount < hdat_end)) && ((vcount > vdat_begin) && (vcount<vdat_end));
assign hsync   = (hcount > hsync_end);                    
assign vsync   = (vcount > vsync_end);
assign disp_rgb = (dat_act)?data:3'h000;         

//reg hexclear=0;
reg score_marker=1;
/*
always@(posedge clk)begin
    if(btn)hexclear<=1;
end
*/
//��ʾģ�� 
always@(posedge vga_clk)
begin
  if(over[1]==0&&over[0]==0)begin
   data <=v_dat&h_dat&x_dat&y_dat;    //�������ʾɫ�ؿ�
   score_marker<=1;
   end
  else begin
    data <=z_dat;
    if(score_marker)begin
    if (winner) begin
        hex[3:0] = hex[3:0] + 4'b0001;
      end
    else begin
        hex[11:8] = hex[11:8] + 4'b0001; 
    end
    score_marker<=0;
    end
    end
end


 parameter  WIDTH = 40, //���γ�
            HEIGHT = 40,  //���ο�         
            
          //��ʾ����ı߽�  ����ʾ�����ܵ���ɫ����
            DISV_TOP = 10'd470,  
            DISV_DOWN =10'd70,  
            DISH_LEFT = 10'd220, 
            DISH_RIGHT = 10'd620;               
          //��ɫ�������_�ұ߽�=��߽�+���ӿ��                   
            reg [9:0] ball_y_pos = 10'd90 ;
            reg [9:0] ball_x_pos = 10'd240 ;
            reg [9:0] rightbound = DISH_LEFT + WIDTH ;	 
       
//��100MHz��ϵͳʱ�ӽ��з�Ƶ
always @ (posedge clk)					
begin
         if(js==DVSR)
          begin
           js<=0;
           clk_50ms=~clk_50ms;
          end
        else
           begin
           js<=js+1;
           end 
end

//�������������ƶ�
//ÿ�ΰ��¸ı��ѡ�����ӵı߽�����
always@(posedge clk_50ms)
begin
    if (rst) begin
        R[99:0]<=0;
        U[99:0]<=0;
    end
    else begin 
    if(keyb[9]==1)begin
    case(keyb[7:0])
         8'b01101011:begin 
                                          if (ball_x_pos== 10'd240)
                                                 ball_x_pos<=10'd600;
                                          else 
                                                ball_x_pos<=ball_x_pos-10'd40;
                    end
         8'b01110100:begin 
                                          if (ball_x_pos==10'd600)
                                                ball_x_pos<=10'd240;
                                          else 
                                                 ball_x_pos<= ball_x_pos+10'd40;
                                          end 
        8'b01110101: begin 
                                           if (ball_y_pos== 10'd90)
                                               ball_y_pos<=10'd450;
                                           else 
                                                ball_y_pos<=ball_y_pos-10'd40;                                                
                                           end
       8'b01110010: begin
                                           if(ball_y_pos== 10'd450)
                                           ball_y_pos<=10'd90;
                                           else         
                                           ball_y_pos<=ball_y_pos+10'd40; 
                                           end     
       8'b01011010: begin
                                          if(R[d*10+c]==0)
                                          begin
                                             R[d*10+c]=1;                                     
                                              U[d*10+c]=flag[0];
                                              flag[0]=~flag[0];
                                          end
                                          end     
         default: rightbound<=10'd220;
     endcase
     end
     end
end

//always@(posedge clk_50ms) 
//begin
//    if(rst == 1 && RST) begin
//    R[99:0]<=0;
//    U[99:0]<=0;
//    RST <= 0;
//    /*
//       genvar j;
//         generate 
//            for(j = 0 ; j <= 99 ; j = j + 1 ) begin
//                U[j] <= 0;
//           end
//        endgenerate
//        */
//    end
//end

//���������жϼ���ɫ
always@(posedge vga_clk)
begin
      if ( (hcount - ball_x_pos)*(hcount - ball_x_pos) + (vcount- ball_y_pos)*(vcount - ball_y_pos) <= (ball_r * ball_r)) 
        x_dat<= 12'h0ff;//F 0FFFF        
    else if (x[b*10+a]&&R[b*10+a]&&U[b*10+a])
    begin
           x_dat<= 12'hfff;
           y_dat <= 12'hf0f;//F F 0 F F F
 
           end
    else if (x[b*10+a]&&R[b*10+a])
    begin
           x_dat<= 12'hfff;
           y_dat <= 12'hff0;//FFFF0F 
 
           end       
     else 
     begin
                x_dat<= 12'hfff;
               y_dat <= 12'hfff;         
           end    
end

//����������
always@(posedge vga_clk)
begin
    if(hcount<=200||hcount>=640)
	v_dat <= 12'h000;//hei
    else if(hcount ==240||hcount ==280||hcount ==320||hcount ==360||hcount ==400||hcount ==440||hcount ==480||hcount ==520||hcount==560||hcount==600)
      v_dat <= 12'h000;//hei
   else
     v_dat <= 12'hfff;//bai
end


//�����᳤��
always@(posedge vga_clk)
begin
    if(vcount<=50||vcount>=490)
	h_dat <= 12'h000;//hei
    else if(vcount ==90||vcount ==130||vcount ==170||vcount==210 ||vcount==250||vcount ==290||vcount ==330||vcount==370 ||vcount==410||vcount==450)
      h_dat <= 12'h000;
   else
     h_dat <= 12'hfff;
end  

//��Ӯ״̬�ж�
always@(posedge vga_clk)
begin
  if(rst)begin
  over[1:0]<=2'b00;
  end
  else begin
    if(a<=5&&U[b*10+a]==1&&U[b*10+a+1]==1&&U[b*10+a+2]==1&&U[b*10+a+3]==1&&U[b*10+a+4]==1)begin//heng
    over[0]<=1;
    winner<= 1;
    end
    else if(b<=5&&U[b*10+a]==1&&U[b*10+a+10]==1&&U[b*10+a+20]==1&&U[b*10+a+30]==1&&U[b*10+a+40]==1)begin //shu
    over[0]<=1;
    winner<= 1;
    end
    else if(a<=5&&b<=5&&U[b*10+a]==1&&U[b*10+a+11]==1&&U[b*10+a+22]==1&&U[b*10+a+33]==1&&U[b*10+a+44]==1)begin//chenggong
    over[0]<=1;
    winner<= 1;
    end
    else if(b<=5&&a>=4&&U[b*10+a]==1&&U[b*10+a+9]==1&&U[b*10+a+18]==1&&U[b*10+a+27]==1&&U[b*10+a+36]==1) begin
    over[0]<=1;
    winner<= 1;
    end
    if(a<=5&&U[b*10+a]==0&&U[b*10+a+1]==0&&U[b*10+a+2]==0&&U[b*10+a+3]==0&&U[b*10+a+4]==0&&R[b*10+a]==1&&R[b*10+a+1]==1&&R[b*10+a+2]==1&&R[b*10+a+3]==1&&R[b*10+a+4]==1)begin //heng
    over[1]<=1;
    winner<= 0;
    end
    else if(b<=5&&U[b*10+a]==0&&U[b*10+a+10]==0&&U[b*10+a+20]==0&&U[b*10+a+30]==0&&U[b*10+a+40]==0&&(a<=10&&R[b*10+a]==1&&R[b*10+a+10]==1&&R[b*10+a+20]==1&&R[b*10+a+30]==1&&R[b*10+a+40]==1)) begin//shu
    over[1]<=1;
    winner<= 0;
    end
    else if(a<=5&&b<=5&&U[b*10+a]==0&&U[b*10+a+11]==0&&U[b*10+a+22]==0&&U[b*10+a+33]==0&&U[b*10+a+44]==0&&R[b*10+a]==1&&R[b*10+a+11]==1&&R[b*10+a+22]==1&&R[b*10+a+33]==1&&R[b*10+a+44]==1)begin//chenggong
    over[1]<=1;
    winner<= 0;
    end
    else if(b<=5&&a>=4&&U[b*10+a]==0&&U[b*10+a+9]==0&&U[b*10+a+18]==0&&U[b*10+a+27]==0&&U[b*10+a+36]==0&&R[b*10+a]==1&&R[b*10+a+9]==1&&R[b*10+a+18]==1&&R[b*10+a+27]==1&&R[b*10+a+36]==1) begin
    over[1]<=1;
    winner<= 0;
    end
  end
end        




always@(posedge vga_clk)
begin
    /*
    if(((hcount>=240&&hcount<=260)||(hcount>=300&&hcount<=320)||(hcount>=360&&hcount<=380)||(hcount>=420&&hcount<=440)||(hcount>=480&&hcount<=500)||(hcount>=560&&hcount<=580))&&(vcount >=200&&vcount <=360))
	   z_dat <= 12'h0f0;//hei
    else if(hcount>=260&&hcount<=380&&vcount>=340&&vcount <=360)
      z_dat <= 12'h0f0;
      else if(hcount>=500&&hcount<=560&&vcount>=200&&vcount <=220)
      z_dat <= 12'h0f0;
   else
     z_dat <= 12'hfff;
   */
    if((hcount<=540&&hcount>=220)&&vcount<=282&&vcount>=278)
     z_dat<=12'h000;
  
   else if((hcount-320)*(hcount-320)+(vcount-280)*(vcount-280)<=400)
     z_dat<=winner?12'hf0f:12'hff0;
   else if((hcount-380)*(hcount-380)+(vcount-280)*(vcount-280)<=400)
     z_dat<=winner?12'hf0f:12'hff0;
   else if((hcount-440)*(hcount-440)+(vcount-280)*(vcount-280)<=400)
     z_dat<=winner?12'hf0f:12'hff0;
   else if((hcount-500)*(hcount-500)+(vcount-280)*(vcount-280)<=400)
     z_dat<=winner?12'hf0f:12'hff0;
   else if((hcount-260)*(hcount-260)+(vcount-280)*(vcount-280)<=400)
     z_dat<=winner?12'hf0f:12'hff0;
  
   else
     z_dat <= 12'hfff;
end       
DisplayNumber Seven_Seg(
                      .AN(AN),            
                      .LEs({0,0,0,0}),
                      .SEGMENT(SEGMENT),
                      .clk(clk),
                      .hexs(hex),
                      .points({0,0,0,0}),
                      .rst(rst) 
    );
                                                          
endmodule

