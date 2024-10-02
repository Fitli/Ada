with Ada.Text_IO; use Ada.Text_IO;

procedure Greet is
begin
    loop
        Put_Line("Please enter the name of your baby: ");

        declare
            Name : String := Get_Line;
        begin
            exit when Name = "";
            Put_Line("Hello, " & Name & "!");
        end;

    end loop;

    -- Name is not defines here
    Put_Line("Bye!");
end Greet;
