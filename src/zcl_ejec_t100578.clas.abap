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
    "Event from Interface

    data(lo_bank) = new zcl_32_c311_t100578( ). "<-- quien hace la TRANSFERENCIA, crea el evento
    data(lo_client) = new zcl_33_c311_t100578( ). "<-- quien esta a la espera de la TRANSFERENCIA,
                                                    "quien recibe la notificación,
                                                    "a la escucha del evento

    "el oyente es el CLIENTE por cuanto esta a la espera de que ocurra el evento de la TRANSFERENCIA
    "qué acción (METODO) va a detonar cuando el evento se DISPARE?->on_new_transfer
    "de quién espera la Transferencia?->de la clase "bank"
    set handler lo_client->on_new_transfer for lo_bank.


    do 5 times.
        wait up to 1 seconds.
        out->write( lo_bank->create_notification( ) ).  "hace la TRANSFERENCIA, crea el evento
        out->write( lo_client->notification ).          "recibe la NOTIFICACION

    enddo.

  endmethod.

endclass.
