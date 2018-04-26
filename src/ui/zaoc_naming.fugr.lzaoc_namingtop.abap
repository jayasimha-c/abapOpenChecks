FUNCTION-POOL zaoc_naming.                  "MESSAGE-ID ..

* INCLUDE LZAOC_NAMINGD...                   " Local class definition

SELECTION-SCREEN BEGIN OF SCREEN 2000 TITLE TEXT-001 AS WINDOW.
SELECTION-SCREEN:
  BEGIN OF TABBED BLOCK main_tab FOR 28 LINES,
    TAB (30) button_1 USER-COMMAND to_3000 DEFAULT SCREEN 3000,
    TAB (30) button_2 USER-COMMAND to_4000 DEFAULT SCREEN 4000,
    TAB (30) button_3 USER-COMMAND to_5000 DEFAULT SCREEN 5000,
    TAB (30) button_4 USER-COMMAND to_6000 DEFAULT SCREEN 6000,
    TAB (30) button_5 USER-COMMAND to_7000 DEFAULT SCREEN 7000,
  END OF BLOCK main_tab.
SELECTION-SCREEN END OF SCREEN 2000.

* Prefixes
SELECTION-SCREEN BEGIN OF SCREEN 3000 AS SUBSCREEN.
PARAMETERS:
  p_elemen TYPE c LENGTH 40 MODIF ID ro,
  p_generi TYPE c LENGTH 40 MODIF ID ro,
  p_struct TYPE c LENGTH 40 MODIF ID ro,
  p_tany   TYPE c LENGTH 40 MODIF ID ro,
  p_thash  TYPE c LENGTH 40 MODIF ID ro,
  p_tindex TYPE c LENGTH 40 MODIF ID ro,
  p_tstand TYPE c LENGTH 40 MODIF ID ro,
  p_tsort  TYPE c LENGTH 40 MODIF ID ro,
  p_rdata  TYPE c LENGTH 40 MODIF ID ro,
  p_rclass TYPE c LENGTH 40 MODIF ID ro,
  p_rbadi  TYPE c LENGTH 40 MODIF ID ro,
  p_rexcep TYPE c LENGTH 40 MODIF ID ro,
  p_rinter TYPE c LENGTH 40 MODIF ID ro.
SELECTION-SCREEN END OF SCREEN 3000.

SELECTION-SCREEN BEGIN OF SCREEN 4000 AS SUBSCREEN.
PARAMETERS:
  p_foo TYPE c LENGTH 40 MODIF ID ro.
SELECTION-SCREEN END OF SCREEN 4000.

SELECTION-SCREEN BEGIN OF SCREEN 5000 AS SUBSCREEN.
PARAMETERS:
  p_bar TYPE c LENGTH 40 MODIF ID ro.
SELECTION-SCREEN END OF SCREEN 5000.

SELECTION-SCREEN BEGIN OF SCREEN 6000 AS SUBSCREEN.
PARAMETERS:
  p_moo TYPE c LENGTH 40 MODIF ID ro.
SELECTION-SCREEN END OF SCREEN 6000.

SELECTION-SCREEN BEGIN OF SCREEN 7000 AS SUBSCREEN.
PARAMETERS:
  p_loo TYPE c LENGTH 40 MODIF ID ro.
SELECTION-SCREEN END OF SCREEN 7000.

************************

CLASS lcl_screen2000 DEFINITION FINAL.

  PUBLIC SECTION.
    CLASS-METHODS:
      at_output,
      at_selection_screen.

  PRIVATE SECTION.
    CLASS-METHODS:
      set_texts.

ENDCLASS.