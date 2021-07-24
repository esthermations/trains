with Ada.Text_IO;
with Trains.Tracks;

procedure Trains.Main is
   L, M, R : Tracks.Track;

   Thomas : constant Train := 1;

begin

   L.Train := Thomas;

   L.Print;
   M.Print;
   R.Print;

   Ada.Text_IO.Put_Line(" -- Move -- ");
   L.Move_Train (To => M);

   L.Print;
   M.Print;
   R.Print;

   Ada.Text_IO.Put_Line(" -- Move -- ");
   M.Move_Train (To => R);

   L.Print;
   M.Print;
   R.Print;

end Trains.Main;