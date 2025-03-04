class zcl_37_c311_t100578 definition
  public
  final
  create private .      "create private: los componentes solo pueden ser accedidos desde la MISMA clase
                        "todas las INSTANCIAS de la clase solo se pueden crear dentro de la MISMA clase

  public section.
    data: mv_time type uzeit.

    methods: constructor.       "Metodo PUBLICO

    class-methods:
        get_instance returning value(ro_instance) type ref to zcl_37_c311_t100578.

  protected section.
  private section.

    class-data: mo_instance type ref to zcl_37_c311_t100578.

endclass.



class zcl_37_c311_t100578 implementation.

  method constructor.
    me->mv_time = cl_abap_context_info=>get_system_time( ).
  endmethod.

  method get_instance.
    if mo_instance is not bound.    "si la INSTACIA NO esta creada
        mo_instance = new #(  ).
    endif.

    ro_instance = mo_instance.

  endmethod.

endclass.
