CLASS zcl_32_c311_t100578 DEFINITION        "del BANCO, el que levanta el evento de que se realizó una nueva transferencia
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    interfaces: zif_05_c311_t100578.

    methods: create_notification returning value(rv_text) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_32_c311_t100578 IMPLEMENTATION.
  METHOD create_notification.
    rv_text = |Event raise ... new transfer-{ cl_abap_context_info=>get_system_time(  ) }|.
    raise event zif_05_c311_t100578~new_transfer.


  ENDMETHOD.

ENDCLASS.
