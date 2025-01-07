```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize array
begin
   for I in My_Arr'Range loop
      My_Arr(I) := I * 2;
   end loop;
   -- Incorrect access to an array element outside its bounds
   My_Arr(11) := 100; --Causes Constraint_Error at runtime
end Example;
```