with Ada.Text_IO;

package body Trains.Tracks
   with SPARK_Mode => On
is

   procedure Move_Train (From : in out Track; To : in out Track) is
   begin
      To.Train   := From.Train;
      From.Train := No_Train;
   end Move_Train;

   procedure Print (T : in Track; Newline : Boolean := True) is
   begin
      Ada.Text_IO.Put ('[');
      Ada.Text_IO.Put (if T.Train = No_Train then "  " else T.Train'Img);
      Ada.Text_IO.Put (']');
      if Newline then
         Ada.Text_IO.New_Line;
      end if;
   end Print;

end Trains.Tracks;