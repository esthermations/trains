package Trains.Tracks
   with SPARK_Mode => On
is

   type Track is
      tagged record
         Train : Trains.Train := Trains.No_Train;
      end record;

   function Is_Occupied (T : in Track)
      return Boolean
      is (T.Train /= Trains.No_Train);
   --  Does this track have a train on it?

   procedure Move_Train (From : in out Track; To : in out Track)
   --  Move the train that is sitting in From to the track To.
      with Pre'Class  => From.Is_Occupied and not To.Is_Occupied,
           Post'Class => not From.Is_Occupied and To.Is_Occupied
                         and From'Old.Train = To.Train;

   procedure Print (T : in Track; Newline : Boolean := True);

   Empty_Track : constant Track := (Train => No_Train);

end Trains.Tracks;
