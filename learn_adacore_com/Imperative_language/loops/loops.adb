with Ada.Text_IO; use Ada.Text_IO;

procedure Loops is
    Index : Integer;
begin
    -- For loops
    -- inclusive discrete range
    -- it is illegal to modify I
    for I in 1 .. 5 loop
        -- & is concatenation of strings
        -- 'Image converts Integer to string
        Put_Line("For loop" & Integer'Image(I)); 
    end loop;

    Put_Line("");

    for I in reverse 1 .. 5 loop
        -- & is concatenation of strings
        -- 'Image converts Integer to string
        Put_Line("Reverse for loop" & Integer'Image(I)); 
    end loop;

    Put_Line("");

    -- Bare loop
    Index := 1;
    loop
        Put_Line("Bare loop" & Integer'Image(Index));
        -- exit statement
        exit when Index = 5;
        -- Assignment
        Index := Index + 1;
    end loop;
    

    Put_Line("");

    -- While loop
    Index := 1;
    while Index <= 5 loop
        Put_Line("While loop" & Integer'Image(Index));
        Index := Index + 1;
    end loop;
end Loops;
