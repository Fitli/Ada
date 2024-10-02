with Ada.Text_IO; use Ada.Text_IO;
with Increment;

procedure Show_Increment is
    A, B, C : Integer;
    procedure Print_Result is
    begin
        Put_Line ("Increment of " & Integer'Image (A) & " with " & Integer'Image (B) 
                  & " is " & Integer'Image (C));
    end Print_Result;
begin        
    C := Increment;
    Put_Line("Using defaults the output of Increment is " & Integer'Image(C));

    A := 8;
    C := Increment(A);
    Put_Line ("Increment of " & Integer'Image (A) & " with default is " & Integer'Image (C));
    
    A := 5;
    B := 2;
    C := Increment(A, B);
    Print_Result;

    A := 20;
    B := 5;
    C := Increment (I    => A,
                    Incr => B);
    --                 ^ Named parameter passing

    Print_Result;
end Show_Increment;
