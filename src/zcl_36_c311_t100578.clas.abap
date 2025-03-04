class zcl_36_c311_t100578 definition        "clase que LANZA la excepcion.
  public
  final
  create public .

  public section.

    methods: check_user importing iv_user type syuname raising zcx_35_c311_t100578. "definiendo el método a fin de que
                                                                                    "LANCE una Excepción.


  protected section.
  private section.
endclass.



class zcl_36_c311_t100578 implementation.

  method check_user.
    if sy-uname = 'CB9980000168'.   "verificando el ID a fin que sea el usuario autorizado. Si el usuario
                                    "indicado que se LANCE la excepción
        raise exception type zcx_35_c311_t100578
          exporting
            textid   = zcx_35_c311_t100578=>no_auth
*            previous =
            mv_msgv1 = |{ sy-uname }|
            mv_msgv2 = 'Edit Invoice'
*            mv_msgv3 =
*            mv_msgv4 =
        .

    endif.

  endmethod.

endclass.
