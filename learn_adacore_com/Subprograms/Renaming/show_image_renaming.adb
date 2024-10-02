with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Image_Renaming is
    function Img (I : Integer := 1) return String
        renames Integer'Image;

begin
    Put_Line(Img);
    Put_Line(Img(2));
end Show_Image_Renaming;
