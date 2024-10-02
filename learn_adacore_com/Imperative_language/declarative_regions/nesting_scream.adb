with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Nesting_Scream is
    X : Integer;
    procedure Nested is
    begin
        Put("A");
    end Nested;
begin
    Put("How much do you want to scream: ");
    Get(X);
    for I in 1 .. X loop
        Nested;
    end loop;
end Nesting_Scream;
        
    
