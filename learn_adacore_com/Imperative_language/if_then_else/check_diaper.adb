with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Check_Diaper is
    N : Integer;
begin
    Ada.Text_IO.Put("How many minutes have passed since the last diaper change? ");
    Ada.Integer_Text_IO.Get(N);

    if N < 0 then
        Ada.Integer_Text_IO.Put(N);
        Ada.Text_IO.Put_Line(" is a negative number...");
    elsif N < 120 then
        Ada.Text_IO.Put_Line("Might be still okay...");
    else
        Ada.Text_IO.Put_Line("Do it now!");
    end if;
end Check_Diaper;
