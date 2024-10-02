with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Diaper is
    N : Integer;
begin
    Ada.Text_IO.Put("How many minutes have passed since the last diaper change? ");
    Ada.Integer_Text_IO.Get(N);

    declare
        Result : constant String := (if N < 120 then "Might be still okay..." else "Do it now!");
    begin
        Ada.Text_IO.Put_Line(Result);
    end;
end Diaper;
