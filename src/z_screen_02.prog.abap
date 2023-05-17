*&---------------------------------------------------------------------*
*& Report Z_SCREEN_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_screen_02.

DATA: gv_ad    TYPE char20,
      gv_soyad TYPE char30.

DATA: gv_rad1 TYPE char1,
      gv_rad2 TYPE xfeld.

DATA: gv_cbox TYPE xfeld.

DATA: gv_yas TYPE i.


START-OF-SELECTION.
  gv_cbox = abap_true.
  CALL SCREEN 0100.
*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0100 OUTPUT.
  SET PF-STATUS '0100'.
* SET TITLEBAR 'xxx'.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.
  CASE sy-ucomm.
    WHEN '&BACK' .
      IF gv_cbox EQ abap_true.
        MESSAGE 'Checkbox Seçili.' TYPE 'I'.
      ELSE.
        MESSAGE 'Checkbox Seçili Değil.' TYPE 'I'.
      ENDIF.
      LEAVE TO SCREEN 0.
  ENDCASE.
ENDMODULE.
