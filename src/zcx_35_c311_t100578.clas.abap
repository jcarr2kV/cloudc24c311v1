class zcx_35_c311_t100578 definition
  public
  inheriting from cx_static_check
  final
  create public .

  public section.

    interfaces if_t100_message .    "implementa manejo de mensajes
    interfaces if_t100_dyn_msg .    "implementa manejo de mensajes dinamico

    constants:
    begin of no_auth,
      msgid type symsgid value 'ZMC_C311_T100578',
      msgno type symsgno value '001',
      attr1 type scx_attrname value 'MV_MSGV1',
      attr2 type scx_attrname value 'MV_MSGV2',
      attr3 type scx_attrname value 'MV_MSGV3',
      attr4 type scx_attrname value 'MV_MSGV4',
    end of no_auth.

    data: mv_msgv1 type string, mv_msgv2 type string, mv_msgv3 type string, mv_msgv4 type string.

    methods constructor
      importing
        !textid   like if_t100_message=>t100key optional
        !previous like previous optional
        mv_msgv1 type string optional
        mv_msgv2 type string optional
        mv_msgv3 type string optional
        mv_msgv4 type string optional.

  protected section.
  private section.
endclass.



class zcx_35_c311_t100578 implementation.


  method constructor ##ADT_SUPPRESS_GENERATION.
    call method super->constructor
      exporting
        previous = previous.

    clear me->textid.
    if textid is initial.
      if_t100_message~t100key = if_t100_message=>default_textid.
    else.
      if_t100_message~t100key = textid.
    endif.

    me->mv_msgv1 = mv_msgv1.
    me->mv_msgv2 = mv_msgv2.
    me->mv_msgv3 = mv_msgv3.
    me->mv_msgv4 = mv_msgv4.





  endmethod.
endclass.
