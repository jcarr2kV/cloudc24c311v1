class zcl_ejec_t100578 definition
  public
  final
  create public .

  public section.
    interfaces: if_oo_adt_classrun.

  protected section.
  private section.
endclass.



class zcl_ejec_t100578 implementation.

  method if_oo_adt_classrun~main.

*    "Event from Interface
*
*    data(lo_bank) = new zcl_32_c311_t100578( ). "<-- quien hace la TRANSFERENCIA, crea el evento
*    data(lo_client) = new zcl_33_c311_t100578( ). "<-- quien esta a la espera de la TRANSFERENCIA,
*                                                    "quien recibe la notificación,
*                                                    "a la escucha del evento
*
*    "el oyente es el CLIENTE por cuanto esta a la espera de que ocurra el evento de la TRANSFERENCIA
*    "qué acción (METODO) va a detonar cuando el evento se DISPARE?->on_new_transfer
*    "de quién espera la Transferencia?->de la clase "bank"
*    set handler lo_client->on_new_transfer for lo_bank activation abap_true.
*
*
*    do 5 times.
*        wait up to 1 seconds.
*        out->write( lo_bank->create_notification( ) ).  "hace la TRANSFERENCIA, crea el evento
*        out->write( lo_client->notification ).          "recibe la NOTIFICACION
*
*        if sy-index = 3.
*            set handler lo_client->on_new_transfer for lo_bank activation abap_false.
*            lo_client->notification = 'No handler for event new transfer'.
*        endif.
*
*
*    enddo.

*    "EXCEPTION
*    data: lo_excep type ref to zcl_36_c311_t100578.
*    data: lx_auth type ref to zcx_35_c311_t100578.      "creando un objeto EXCEPTION a fin de gestionar un tipo de
*                                                        "excepción
*
*    lo_excep = new zcl_36_c311_t100578(  ).
*
*    "es importante acotar la excepción dentro de un TRY para un objeto que puede LANZAR una EXCEPCION
*    "de esta manera se evita los DUMPS
*    try.
*        lo_excep->check_user( sy-uname  ).      "invocando al METODO desde la instancia (objeto)
*    catch zcx_35_c311_t100578 into lx_auth.
*        out->write( lx_auth->get_text( ) ).
*        "out->write( 'handle exception' ).
*    endtry.

    "PATRON SINGLETON
    data: lo_sing1 type ref to zcl_37_c311_t100578,
            lo_sing2 type ref to zcl_37_c311_t100578.

    lo_sing1 = zcl_37_c311_t100578=>get_instance( ).
    wait up to 2 seconds.
    lo_sing2 = zcl_37_c311_t100578=>get_instance( ).

    out->write( lo_sing1->mv_time ).
    out->write( lo_sing2->mv_time ).



  endmethod.

endclass.
