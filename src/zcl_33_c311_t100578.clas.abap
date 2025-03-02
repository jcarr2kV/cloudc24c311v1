class zcl_33_c311_t100578 definition        "del CLIENTE, el que esta a la espera de la TRANSFERENCIA
  public
  final
  create public .

  public section.

    data: notification type string.

    methods:
        on_new_transfer for event new_transfer of zif_05_c311_t100578 importing sender.

  protected section.
  private section.
endclass.



class zcl_33_c311_t100578 implementation.

  method on_new_transfer.
    me->notification = |{ sender->office }-{ cl_abap_context_info=>get_system_date( ) }|.

  endmethod.

endclass.
