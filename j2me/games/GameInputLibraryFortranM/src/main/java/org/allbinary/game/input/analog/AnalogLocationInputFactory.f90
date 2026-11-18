! Generated Code Do Not Modify
! package org.allbinary.game.input.analog
module AnalogLocationInputFactory_m
  use JR_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use AnalogLocationInput_m
  implicit none

  type, extends(JObject) :: AnalogLocationInputFactory
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_addPlayer_1 => AnalogLocationInputFactory_jm_addPlayer_1
    procedure :: jm_getInstanceForPlayer_1 => AnalogLocationInputFactory_jm_getInstanceForPlayer_1
    procedure :: jm_getList_0 => AnalogLocationInputFactory_jm_getList_0
  end type

  class(AnalogLocationInputFactory), pointer, save :: AnalogLocationInputFactory_jcell_instance => null()
  logical, save :: AnalogLocationInputFactory_jset_instance = .false.

contains

  function AnalogLocationInputFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnalogLocationInputFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnalogLocationInputFactory)
      jresult => object
    end select
  end function

  function AnalogLocationInputFactory_jstatic_instance() result(jresult)
    class(AnalogLocationInputFactory), pointer :: jresult
    if (.not. AnalogLocationInputFactory_jset_instance) then
      AnalogLocationInputFactory_jset_instance = .true.
      AnalogLocationInputFactory_jcell_instance => AnalogLocationInputFactory_jnew_0()
    end if
    jresult => AnalogLocationInputFactory_jcell_instance
  end function

  subroutine AnalogLocationInputFactory_jsetstatic_instance(jvalue)
    class(AnalogLocationInputFactory), target, optional :: jvalue
    AnalogLocationInputFactory_jset_instance = .true.
    if (present(jvalue)) then
      AnalogLocationInputFactory_jcell_instance => jvalue
    else
      AnalogLocationInputFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function AnalogLocationInputFactory_jnew_0() result(this)
    class(AnalogLocationInputFactory), pointer :: this
    allocate(this)
    this%jclass = 'AnalogLocationInputFactory'
    this%f_list => BasicArrayListD_jnew_0()
        continue
  end function

  recursive function AnalogLocationInputFactory_jm_getInstance_0() result(jresult)
    class(AnalogLocationInputFactory), pointer :: jresult
        jresult => AnalogLocationInputFactory_jstatic_instance()
        return
  end function

  recursive subroutine AnalogLocationInputFactory_jm_addPlayer_1(this, j_playerInputId)
    class(AnalogLocationInputFactory), target :: this
    integer(4), value :: j_playerInputId
    class(AnalogLocationInput), pointer :: j_analogLocationInput
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_analogLocationInput => AnalogLocationInput_jstatic_NULL_ANALOG_LOCATION_INPUT()
        if ((j_playerInputId < this%f_list%jm_size_0())) then
            j_analogLocationInput => AnalogLocationInput_jcast(this%f_list%jm_get_1(j_playerInputId))
        end if
        if (JR_same(j_analogLocationInput, AnalogLocationInput_jstatic_NULL_ANALOG_LOCATION_INPUT())) then
            j_analogLocationInput => AnalogLocationInput_jnew_1(j_playerInputId)
            jdiscardBoolean = this%f_list%jm_add_1(j_analogLocationInput)
        end if
  end subroutine

  recursive function AnalogLocationInputFactory_jm_getInstanceForPlayer_1(this, j_playerInputId) result(jresult)
    class(AnalogLocationInputFactory), target :: this
    integer(4), value :: j_playerInputId
    class(AnalogLocationInput), pointer :: jresult
        jresult => AnalogLocationInput_jcast(this%f_list%jm_get_1(j_playerInputId))
        return
  end function

  recursive function AnalogLocationInputFactory_jm_getList_0(this) result(jresult)
    class(AnalogLocationInputFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_list
        return
  end function
end module AnalogLocationInputFactory_m

