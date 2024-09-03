CLASS zcl_demo_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES tt_airlines TYPE STANDARD TABLE OF zscm_people=>tys_airline with EMPTY KEY.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS get_data RETURNING VALUE(rt_airlines) TYPE tt_airlines.
ENDCLASS.



CLASS zcl_demo_class IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( get_data( ) ).
  ENDMETHOD.

  METHOD get_data.

    DATA:
      lt_business_data TYPE TABLE OF zscm_people=>tys_airline,
      lo_http_client   TYPE REF TO if_web_http_client,
      lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy,
      lo_request       TYPE REF TO /iwbep/if_cp_request_read_list,
      lo_response      TYPE REF TO /iwbep/if_cp_response_read_lst.

*DATA:
* lo_filter_factory   TYPE REF TO /iwbep/if_cp_filter_factory,
* lo_filter_node_1    TYPE REF TO /iwbep/if_cp_filter_node,
* lo_filter_node_2    TYPE REF TO /iwbep/if_cp_filter_node,
* lo_filter_node_root TYPE REF TO /iwbep/if_cp_filter_node,
* lt_range_AIRLINE_CODE TYPE RANGE OF <element_name>,
* lt_range_NAME TYPE RANGE OF <element_name>.



    TRY.
        TRY.
            lo_http_client = cl_web_http_client_manager=>create_by_http_destination( cl_http_destination_provider=>create_by_url( 'https://services.odata.org/' ) ).
          CATCH cx_http_dest_provider_error.
        ENDTRY.
        lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v4_remote_proxy(
          EXPORTING
             is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                 proxy_model_id      = 'ZSCM_PEOPLE'
                                                 proxy_model_version = '0001' )
            io_http_client             = lo_http_client
            iv_relative_service_root   = 'TripPinRESTierService/' ).

        ASSERT lo_http_client IS BOUND.


        " Navigate to the resource and create a request for the read operation
        lo_request = lo_client_proxy->create_resource_for_entity_set( 'AIRLINES' )->create_request_for_read( ).

        " Create the filter tree
*lo_filter_factory = lo_request->create_filter_factory( ).
*
*lo_filter_node_1  = lo_filter_factory->create_by_range( iv_property_path     = 'AIRLINE_CODE'
*                                                        it_range             = lt_range_AIRLINE_CODE ).
*lo_filter_node_2  = lo_filter_factory->create_by_range( iv_property_path     = 'NAME'
*                                                        it_range             = lt_range_NAME ).

*lo_filter_node_root = lo_filter_node_1->and( lo_filter_node_2 ).
*lo_request->set_filter( lo_filter_node_root ).

        lo_request->set_top( 50 )->set_skip( 0 ).

        " Execute the request and retrieve the business data
        lo_response = lo_request->execute( ).
        lo_response->get_business_data( IMPORTING et_business_data = lt_business_data ).
        rt_airlines = lt_business_data.
        return.

      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
        " Handle remote Exception
        " It contains details about the problems of your http(s) connection

      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
        " Handle Exception

      CATCH cx_web_http_client_error INTO DATA(lx_web_http_client_error).
        " Handle Exception
        RAISE SHORTDUMP lx_web_http_client_error.


    ENDTRY.
  ENDMETHOD.

ENDCLASS.
