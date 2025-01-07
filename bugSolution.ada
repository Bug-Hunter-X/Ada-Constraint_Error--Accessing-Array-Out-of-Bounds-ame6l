```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize array
begin
   for I in My_Arr'Range loop
      My_Arr(I) := I * 2;
   end loop;
   -- Correct approach: Check the index before accessing
   if 1 <= 11 and 11 <= My_Arr'Last then
       My_Arr(11) := 100; 
   else
       Put_Line("Index out of bounds");
   end if;

   --Alternative Approach using exception handling
   begin
       My_Arr(11) := 100;  --This will still cause an error unless caught
   exception
      when Constraint_Error =>
         Put_Line("Constraint Error Occurred");
   end;
end Example;
```