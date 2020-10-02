pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E72 : Short_Integer; pragma Import (Ada, E72, "cortex_m__nvic_E");
   E66 : Short_Integer; pragma Import (Ada, E66, "nrf__events_E");
   E17 : Short_Integer; pragma Import (Ada, E17, "nrf__gpio_E");
   E68 : Short_Integer; pragma Import (Ada, E68, "nrf__interrupts_E");
   E27 : Short_Integer; pragma Import (Ada, E27, "nrf__rtc_E");
   E30 : Short_Integer; pragma Import (Ada, E30, "nrf__spi_master_E");
   E51 : Short_Integer; pragma Import (Ada, E51, "nrf__tasks_E");
   E49 : Short_Integer; pragma Import (Ada, E49, "nrf__clock_E");
   E34 : Short_Integer; pragma Import (Ada, E34, "nrf__timers_E");
   E37 : Short_Integer; pragma Import (Ada, E37, "nrf__twi_E");
   E41 : Short_Integer; pragma Import (Ada, E41, "nrf__uart_E");
   E05 : Short_Integer; pragma Import (Ada, E05, "nrf__device_E");
   E47 : Short_Integer; pragma Import (Ada, E47, "microbit__time_E");
   E45 : Short_Integer; pragma Import (Ada, E45, "microbit__buttons_E");
   E77 : Short_Integer; pragma Import (Ada, E77, "microbit__display_E");

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


      E72 := E72 + 1;
      E66 := E66 + 1;
      E17 := E17 + 1;
      E68 := E68 + 1;
      E27 := E27 + 1;
      E30 := E30 + 1;
      E51 := E51 + 1;
      E49 := E49 + 1;
      E34 := E34 + 1;
      E37 := E37 + 1;
      E41 := E41 + 1;
      Nrf.Device'Elab_Spec;
      E05 := E05 + 1;
      Microbit.Time'Elab_Body;
      E47 := E47 + 1;
      Microbit.Buttons'Elab_Body;
      E45 := E45 + 1;
      Microbit.Display'Elab_Body;
      E77 := E77 + 1;
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
   --   /home/chouteau/src/github/Ada_Drivers_Library/examples/MicroBit/buttons/obj/main.o
   --   -L/home/chouteau/src/github/Ada_Drivers_Library/examples/MicroBit/buttons/obj/
   --   -L/home/chouteau/src/github/Ada_Drivers_Library/examples/MicroBit/buttons/obj/
   --   -L/home/chouteau/src/github/Ada_Drivers_Library/boards/MicroBit/obj/zfp_lib_Debug/
   --   -L/home/chouteau/my_sandbox/arm-elf-linux64/gnat/install/arm-eabi/lib/gnat/zfp-cortex-m0/adalib/
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;
