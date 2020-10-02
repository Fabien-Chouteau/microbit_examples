pragma Warnings (Off);
pragma Ada_95;
pragma Restrictions (No_Exception_Propagation);
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is


   GNAT_Version : constant String :=
                    "GNAT Version: Community 2018 (20180524-73)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_main" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure main;
   pragma Export (C, main, "main");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  ada.exceptions%s
   --  ada.exceptions%b
   --  interfaces.nrf51%s
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.parameters%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.secondary_stack%s
   --  system.secondary_stack%b
   --  ada.tags%s
   --  ada.tags%b
   --  system.unsigned_types%s
   --  interfaces.nrf51.uart%s
   --  system.text_io%s
   --  system.text_io%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  system.assertions%s
   --  system.assertions%b
   --  hal%s
   --  adl_config%s
   --  command_line%s
   --  command_line%b
   --  filesystem%s
   --  hal.block_drivers%s
   --  hal.filesystem%s
   --  filesystem.fat%s
   --  filesystem.fat.files%s
   --  filesystem.fat.directories%s
   --  filesystem.fat.directories%b
   --  filesystem.fat.files%b
   --  filesystem.fat%b
   --  file_io%s
   --  filesystem.mbr%s
   --  file_io%b
   --  filesystem.mbr%b
   --  command_line.filesystem%s
   --  command_line.filesystem.touch%s
   --  command_line.filesystem.touch%b
   --  command_line.filesystem.remove_directory%s
   --  command_line.filesystem.remove_directory%b
   --  command_line.filesystem.list_directory%s
   --  command_line.filesystem.list_directory%b
   --  command_line.filesystem.cat%s
   --  command_line.filesystem.cat%b
   --  command_line.filesystem%b
   --  main%b
   --  END ELABORATION ORDER

end ada_main;
