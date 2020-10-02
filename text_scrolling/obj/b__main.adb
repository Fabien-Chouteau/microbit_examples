pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E14 : Short_Integer; pragma Import (Ada, E14, "ada__text_io_E");
   E22 : Short_Integer; pragma Import (Ada, E22, "command_line_E");
   E33 : Short_Integer; pragma Import (Ada, E33, "filesystem__fat_E");
   E41 : Short_Integer; pragma Import (Ada, E41, "filesystem__fat__files_E");
   E35 : Short_Integer; pragma Import (Ada, E35, "filesystem__fat__directories_E");
   E28 : Short_Integer; pragma Import (Ada, E28, "file_io_E");
   E45 : Short_Integer; pragma Import (Ada, E45, "filesystem__mbr_E");
   E24 : Short_Integer; pragma Import (Ada, E24, "command_line__filesystem_E");
   E53 : Short_Integer; pragma Import (Ada, E53, "command_line__filesystem__touch_E");
   E51 : Short_Integer; pragma Import (Ada, E51, "command_line__filesystem__remove_directory_E");
   E49 : Short_Integer; pragma Import (Ada, E49, "command_line__filesystem__list_directory_E");
   E26 : Short_Integer; pragma Import (Ada, E26, "command_line__filesystem__cat_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);


   procedure adainit is
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");

      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      null;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;


      Ada.Text_Io'Elab_Body;
      E14 := E14 + 1;
      Command_Line'Elab_Body;
      E22 := E22 + 1;
      E35 := E35 + 1;
      E41 := E41 + 1;
      Filesystem.Fat'Elab_Body;
      E33 := E33 + 1;
      FILE_IO'ELAB_BODY;
      E28 := E28 + 1;
      E45 := E45 + 1;
      Command_Line.Filesystem.Touch'Elab_Body;
      E53 := E53 + 1;
      Command_Line.Filesystem.Remove_Directory'Elab_Body;
      E51 := E51 + 1;
      Command_Line.Filesystem.List_Directory'Elab_Body;
      E49 := E49 + 1;
      Command_Line.Filesystem.Cat'Elab_Body;
      E26 := E26 + 1;
      Command_Line.Filesystem'Elab_Body;
      E24 := E24 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   procedure main is
      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      adainit;
      Ada_Main_Program;
   end;

--  BEGIN Object file/option list
   --   /home/chouteau/src/github/Ada_Drivers_Library/examples/MicroBit/text_scrolling/obj/main.o
   --   -L/home/chouteau/src/github/Ada_Drivers_Library/examples/MicroBit/text_scrolling/obj/
   --   -L/home/chouteau/src/github/Ada_Drivers_Library/examples/MicroBit/text_scrolling/obj/
   --   -L/home/chouteau/src/github/Ada_Drivers_Library/boards/MicroBit/obj/zfp_lib_Debug/
   --   -L/home/chouteau/src/GNAT_GPL/2018-arm-elf/arm-eabi/lib/gnat/zfp-microbit/adalib/
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;
