with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Check_Diaper_Case is
   N : Integer;
begin
   loop
      Put ("How many minutes have passed since the last diaper change?");
      Get (N);

      -- N must be a discrete type
      -- all values must be covered, checked at compile time
      case N is
         when 0 =>
            Put_Line
              ("Doing it now");
         when 1 .. 30 =>
            Put_Line
              ("She couldn't be that quick... hopefully");
         when 31 .. 120 =>
            Put_Line
              ("There might be something");
         when 121 .. Integer'Last =>
            Put_Line
              ("Do it now!");
         when others =>
            Put_Line
              ("This is not a positive number");
            exit;
      end case;
   end loop;
end Check_Diaper_Case;
