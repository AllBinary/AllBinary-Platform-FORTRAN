! Generated Code Do Not Modify
! package org.allbinary.game.input.analog
module AnalogLocationInput_m
  use JR_m
  use CustomGPoint_m
  implicit none

  type, extends(JObject) :: AnalogLocationInput
    integer(4) :: f_playerId = 0
    class(CustomGPoint), pointer :: f_customGPoint => null()
    integer(4) :: f_rz = 0
    integer(4) :: f_rightTrigger = 0
    integer(4) :: f_leftTrigger = 0
  contains
    procedure :: jm_getPlayerId_0 => AnalogLocationInput_jm_getPlayerId_0
    procedure :: jm_getCustomGPoint_0 => AnalogLocationInput_jm_getCustomGPoint_0
    procedure :: jm_getRz_0 => AnalogLocationInput_jm_getRz_0
    procedure :: jm_setRz_1 => AnalogLocationInput_jm_setRz_1
    procedure :: jm_getRightTrigger_0 => AnalogLocationInput_jm_getRightTrigger_0
    procedure :: jm_setRightTrigger_1 => AnalogLocationInput_jm_setRightTrigger_1
    procedure :: jm_getLeftTrigger_0 => AnalogLocationInput_jm_getLeftTrigger_0
    procedure :: jm_setLeftTrigger_1 => AnalogLocationInput_jm_setLeftTrigger_1
  end type

  class(AnalogLocationInput), pointer, save :: AnalogLocationInput_jcell_NULL_ANALOG_LOCATION_INPUT => null()
  logical, save :: AnalogLocationInput_jset_NULL_ANALOG_LOCATION_INPUT = .false.

contains

  function AnalogLocationInput_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnalogLocationInput), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnalogLocationInput)
      jresult => object
    end select
  end function

  function AnalogLocationInput_jstatic_NULL_ANALOG_LOCATION_INPUT() result(jresult)
    class(AnalogLocationInput), pointer :: jresult
    if (.not. AnalogLocationInput_jset_NULL_ANALOG_LOCATION_INPUT) then
      AnalogLocationInput_jset_NULL_ANALOG_LOCATION_INPUT = .true.
      AnalogLocationInput_jcell_NULL_ANALOG_LOCATION_INPUT => AnalogLocationInput_jnew_1((-1))
    end if
    jresult => AnalogLocationInput_jcell_NULL_ANALOG_LOCATION_INPUT
  end function

  subroutine AnalogLocationInput_jsetstatic_NULL_ANALOG_LOCATION_INPUT(jvalue)
    class(AnalogLocationInput), target, optional :: jvalue
    AnalogLocationInput_jset_NULL_ANALOG_LOCATION_INPUT = .true.
    if (present(jvalue)) then
      AnalogLocationInput_jcell_NULL_ANALOG_LOCATION_INPUT => jvalue
    else
      AnalogLocationInput_jcell_NULL_ANALOG_LOCATION_INPUT => null()
    end if
  end subroutine

  recursive function AnalogLocationInput_jnew_1(j_playerId) result(this)
    integer(4), value :: j_playerId
    class(AnalogLocationInput), pointer :: this
    allocate(this)
    this%jclass = 'AnalogLocationInput'
    
    
    
    
    
        this%f_playerId = j_playerId
        this%f_customGPoint => CustomGPoint_jnew_3(0, 0, 0)
  end function

  recursive function AnalogLocationInput_jm_getPlayerId_0(this) result(jresult)
    class(AnalogLocationInput), target :: this
    integer(4) :: jresult
        jresult = this%f_playerId
        return
  end function

  recursive function AnalogLocationInput_jm_getCustomGPoint_0(this) result(jresult)
    class(AnalogLocationInput), target :: this
    class(CustomGPoint), pointer :: jresult
        jresult => this%f_customGPoint
        return
  end function

  recursive function AnalogLocationInput_jm_getRz_0(this) result(jresult)
    class(AnalogLocationInput), target :: this
    integer(4) :: jresult
        jresult = this%f_rz
        return
  end function

  recursive subroutine AnalogLocationInput_jm_setRz_1(this, j_rz)
    class(AnalogLocationInput), target :: this
    integer(4), value :: j_rz
        this%f_rz = j_rz
  end subroutine

  recursive function AnalogLocationInput_jm_getRightTrigger_0(this) result(jresult)
    class(AnalogLocationInput), target :: this
    integer(4) :: jresult
        jresult = this%f_rightTrigger
        return
  end function

  recursive subroutine AnalogLocationInput_jm_setRightTrigger_1(this, j_rightTrigger)
    class(AnalogLocationInput), target :: this
    integer(4), value :: j_rightTrigger
        this%f_rightTrigger = j_rightTrigger
  end subroutine

  recursive function AnalogLocationInput_jm_getLeftTrigger_0(this) result(jresult)
    class(AnalogLocationInput), target :: this
    integer(4) :: jresult
        jresult = this%f_leftTrigger
        return
  end function

  recursive subroutine AnalogLocationInput_jm_setLeftTrigger_1(this, j_leftTrigger)
    class(AnalogLocationInput), target :: this
    integer(4), value :: j_leftTrigger
        this%f_leftTrigger = j_leftTrigger
  end subroutine
end module AnalogLocationInput_m

