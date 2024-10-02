with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Diaper_Case is
   N : Integer;
begin
    Put ("How many minutes have passed since the last diaper change?");
    Get(N);
    declare
        Result : String := (case N is 
                   when 0 => "Doing it now",
                   when 1 .. 30 => "She couldn't be that quick... hopefully",
                   when 31 .. 120 => "There might be something",
                   when 121 .. Integer'Last => "Do it now!",
                   when others => "This is not a positive number");
    begin
        Put_Line(Result);
    end;
end Diaper_Case;
