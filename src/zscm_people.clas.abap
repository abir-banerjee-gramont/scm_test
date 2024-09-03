"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>Trippin</em>
CLASS zscm_people DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for "OData Primitive Types"</p>
      BEGIN OF tys_types_for_prim_types,
        "! Used for primitive type LAST_NAME
        last_name   TYPE string,
        "! Used for primitive type LAT
        lat         TYPE /iwbep/v4_float,
        "! Used for primitive type LON
        lon         TYPE /iwbep/v4_float,
        "! Used for primitive type RETURN
        return      TYPE abap_bool,
        "! Used for primitive type TRIP_ID
        trip_id     TYPE int4,
        "! Used for primitive type USER_NAME
        user_name   TYPE string,
        "! Used for primitive type USER_NAME_2
        user_name_2 TYPE string,
      END OF tys_types_for_prim_types.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of CITY</p>
      BEGIN OF tys_value_controls_1,
        "! NAME
        name           TYPE /iwbep/v4_value_control,
        "! COUNTRY_REGION
        country_region TYPE /iwbep/v4_value_control,
        "! REGION
        region         TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_1.

    TYPES:
      "! <p class="shorttext synchronized">City</p>
      BEGIN OF tys_city,
        "! <em>Value Control Structure</em>
        value_controls TYPE tys_value_controls_1,
        "! Name
        name           TYPE string,
        "! CountryRegion
        country_region TYPE string,
        "! Region
        region         TYPE string,
      END OF tys_city,
      "! <p class="shorttext synchronized">List of City</p>
      tyt_city TYPE STANDARD TABLE OF tys_city WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of EVENT_LOCATION</p>
      BEGIN OF tys_value_controls_2,
        "! BUILDING_INFO
        building_info TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_2.

    TYPES:
      "! <p class="shorttext synchronized">EventLocation</p>
      BEGIN OF tys_event_location,
        "! <em>Value Control Structure</em>
        value_controls TYPE tys_value_controls_2,
        "! BuildingInfo
        building_info  TYPE string,
      END OF tys_event_location,
      "! <p class="shorttext synchronized">List of EventLocation</p>
      tyt_event_location TYPE STANDARD TABLE OF tys_event_location WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of LOCATION</p>
      BEGIN OF tys_value_controls_3,
        "! ADDRESS
        address TYPE /iwbep/v4_value_control,
        "! CITY
        city    TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_3.

    TYPES:
      "! <p class="shorttext synchronized">Location</p>
      BEGIN OF tys_location,
        "! <em>Value Control Structure</em>
        value_controls TYPE tys_value_controls_3,
        "! Address
        address        TYPE string,
        "! City
        city           TYPE tys_city,
      END OF tys_location,
      "! <p class="shorttext synchronized">List of Location</p>
      tyt_location TYPE STANDARD TABLE OF tys_location WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of AIRLINE</p>
      BEGIN OF tys_value_controls_4,
        "! NAME
        name TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_4.

    TYPES:
      "! <p class="shorttext synchronized">Airline</p>
      BEGIN OF tys_airline,
        "! <em>Value Control Structure</em>
        value_controls TYPE tys_value_controls_4,
        "! <em>Key property</em> AirlineCode
        airline_code   TYPE string,
        "! Name
        name           TYPE string,
      END OF tys_airline,
      "! <p class="shorttext synchronized">List of Airline</p>
      tyt_airline TYPE STANDARD TABLE OF tys_airline WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      "! <p><strong>Missing Elements</strong></p>
      "! <p>Some elements are missing because they require features not supported by the client proxy-framework or have missing dependencies.<br/> These elements are shown in the following list:</p>
      "! <ul>
      "! <li><strong>Airports</strong>: Entity Set 'Airports'  skipped, Entity Type 'Airport' is missing
      "! <li><strong>People</strong>: Entity Set 'People'  skipped, Entity Type 'Person' is missing
      "! </ul>
      BEGIN OF gcs_entity_set,
        "! Airlines
        "! <br/> Collection of type 'Airline'
        airlines TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'AIRLINES',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the action imports</p>
      BEGIN OF gcs_action_import,
        "! ResetDataSource
        reset_data_source_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'RESET_DATA_SOURCE_2',
      END OF gcs_action_import.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the function imports</p>
      "! <p><strong>Missing Elements</strong></p>
      "! <p>Some elements are missing because they require features not supported by the client proxy-framework or have missing dependencies.<br/> These elements are shown in the following list:</p>
      "! <ul>
      "! <li><strong>GetNearestAirport</strong>: Operation Import 'GetNearestAirport'  skipped, Operation 'GetNearestAirport' is missing
      "! <li><strong>GetPersonWithMostFriends</strong>: Operation Import 'GetPersonWithMostFriends'  skipped, Operation 'GetPersonWithMostFriends' is missing
      "! </ul>
      BEGIN OF gcs_function_import,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_function_import.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound actions</p>
      "! <p><strong>Missing Elements</strong></p>
      "! <p>Some elements are missing because they require features not supported by the client proxy-framework or have missing dependencies.<br/> These elements are shown in the following list:</p>
      "! <ul>
      "! <li><strong>ShareTrip</strong>: Operation 'ShareTrip' skipped due to error: Binding parameter 'PERSON_INSTANCE'is mandatory; Nullable not allowed
      "! <li><strong>UpdateLastName</strong>: Operation 'UpdateLastName' skipped due to error: Binding parameter 'PERSON'is mandatory; Nullable not allowed
      "! </ul>
      BEGIN OF gcs_bound_action,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_bound_action.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound functions</p>
      "! <p><strong>Missing Elements</strong></p>
      "! <p>Some elements are missing because they require features not supported by the client proxy-framework or have missing dependencies.<br/> These elements are shown in the following list:</p>
      "! <ul>
      "! <li><strong>GetFavoriteAirline</strong>: Operation 'GetFavoriteAirline' skipped due to error: Binding parameter 'PERSON'is mandatory; Nullable not allowed
      "! <li><strong>GetFriendsTrips</strong>: Operation 'GetFriendsTrips' skipped due to error: Binding parameter 'PERSON'is mandatory; Nullable not allowed
      "! <li><strong>GetInvolvedPeople</strong>: Operation 'GetInvolvedPeople' skipped due to error: Binding parameter 'TRIP'is mandatory; Nullable not allowed
      "! </ul>
      BEGIN OF gcs_bound_function,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_bound_function.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      "! <p><strong>Missing Elements</strong></p>
      "! <p>Some elements are missing because they require features not supported by the client proxy-framework or have missing dependencies.<br/> These elements are shown in the following list:</p>
      "! <ul>
      "! <li><strong>AirportLocation</strong>: Element skipped. Creation of Complex Type 'AirportLocation' ended with error: Type 'GeographyPoint' is not a valid EDM type
      "! </ul>
      BEGIN OF gcs_complex_type,
        "! <p class="shorttext synchronized">Internal names for City</p>
        "! See also structure type {@link ..tys_city}
        BEGIN OF city,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF city,
        "! <p class="shorttext synchronized">Internal names for EventLocation</p>
        "! See also structure type {@link ..tys_event_location}
        BEGIN OF event_location,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF event_location,
        "! <p class="shorttext synchronized">Internal names for Location</p>
        "! See also structure type {@link ..tys_location}
        BEGIN OF location,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF location,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      "! <p><strong>Missing Elements</strong></p>
      "! <p>Some elements are missing because they require features not supported by the client proxy-framework or have missing dependencies.<br/> These elements are shown in the following list:</p>
      "! <ul>
      "! <li><strong>Airport</strong>: Complex Type 'Airport'  skipped, Structure Type 'AirportLocation' is missing
      "! <li><strong>Employee</strong>: Entity skipped, inheritance of Entity Type 'Employee' is not supported
      "! <li><strong>Event</strong>: Entity skipped, inheritance of Entity Type 'Event' is not supported
      "! <li><strong>Flight</strong>: Entity skipped, inheritance of Entity Type 'Flight' is not supported
      "! <li><strong>Manager</strong>: Entity skipped, inheritance of Entity Type 'Manager' is not supported
      "! <li><strong>Person</strong>: Entity Type skipped. Creation of Entity Type 'Person' ended with error: Enum types are not supported
      "! <li><strong>PlanItem</strong>: Complex Type 'PlanItem'  skipped, Structure Type 'AirportLocation' is missing
      "! <li><strong>PublicTransportation</strong>: Entity skipped, inheritance of Entity Type 'PublicTransportation' is not supported
      "! <li><strong>Trip</strong>: Entity type 'Trip' skipped due to error: Nullable collection not allowed in property 'TAGS'
      "! </ul>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for Airline</p>
        "! See also structure type {@link ..tys_airline}
        BEGIN OF airline,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF airline,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define City</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_city RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define EventLocation</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_event_location RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Location</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_location RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Airline</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_airline RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ResetDataSource</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_reset_data_source RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define all primitive types</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS define_primitive_types RAISING /iwbep/cx_gateway.

ENDCLASS.


CLASS zscm_people IMPLEMENTATION.

  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'Trippin' ) ##NO_TEXT.

    def_city( ).
    def_event_location( ).
    def_location( ).
    def_airline( ).
    def_reset_data_source( ).
    define_primitive_types( ).

  ENDMETHOD.


  METHOD def_city.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'CITY'
                                    is_structure              = VALUE tys_city( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'City' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'NAME' ).
    lo_primitive_property->set_edm_name( 'Name' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'COUNTRY_REGION' ).
    lo_primitive_property->set_edm_name( 'CountryRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_event_location.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'EVENT_LOCATION'
                                    is_structure              = VALUE tys_event_location( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'EventLocation' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'BUILDING_INFO' ).
    lo_primitive_property->set_edm_name( 'BuildingInfo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_location.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'LOCATION'
                                    is_structure              = VALUE tys_location( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'Location' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'ADDRESS' ).
    lo_primitive_property->set_edm_name( 'Address' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_complex_property = lo_complex_type->create_complex_property( 'CITY' ).
    lo_complex_property->set_edm_name( 'City' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'CITY' ).
    lo_complex_property->create_vcs_value_control( ).
    lo_complex_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_airline.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'AIRLINE'
                                    is_structure              = VALUE tys_airline( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Airline' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'AIRLINES' ).
    lo_entity_set->set_edm_name( 'Airlines' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'AIRLINE_CODE' ).
    lo_primitive_property->set_edm_name( 'AirlineCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NAME' ).
    lo_primitive_property->set_edm_name( 'Name' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_reset_data_source.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'RESET_DATA_SOURCE' ).
    lo_action->set_edm_name( 'ResetDataSource' ) ##NO_TEXT.

    lo_action_import = lo_action->create_action_import( 'RESET_DATA_SOURCE_2' ).
    lo_action_import->set_edm_name( 'ResetDataSource' ) ##NO_TEXT.


  ENDMETHOD.


  METHOD define_primitive_types.

    DATA lo_primitive_type TYPE REF TO /iwbep/if_v4_pm_prim_type.


    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'LAST_NAME'
                            iv_element             = VALUE tys_types_for_prim_types-last_name( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'LAT'
                            iv_element             = VALUE tys_types_for_prim_types-lat( ) ).
    lo_primitive_type->set_edm_type( 'Double' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'LON'
                            iv_element             = VALUE tys_types_for_prim_types-lon( ) ).
    lo_primitive_type->set_edm_type( 'Double' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'RETURN'
                            iv_element             = VALUE tys_types_for_prim_types-return( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'TRIP_ID'
                            iv_element             = VALUE tys_types_for_prim_types-trip_id( ) ).
    lo_primitive_type->set_edm_type( 'Int32' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'USER_NAME'
                            iv_element             = VALUE tys_types_for_prim_types-user_name( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'USER_NAME_2'
                            iv_element             = VALUE tys_types_for_prim_types-user_name_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

  ENDMETHOD.

ENDCLASS.
