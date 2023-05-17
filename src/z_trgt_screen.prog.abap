*&---------------------------------------------------------------------*
*& Report Z_TRGT_SCREEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_trgt_screen.

START-OF-SELECTION.

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
  DATA: lv_text TYPE char200.

  CONCATENATE sy-ucomm
              'butonuna basılmıştır.'
              INTO lv_text
              SEPARATED BY space.

  MESSAGE lv_text TYPE 'I'.

  CASE sy-ucomm.
    WHEN '&BCK' .
      LEAVE TO SCREEN 0.
  ENDCASE.
ENDMODULE.
