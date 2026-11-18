!
! AllBinary Open License Version 1
! Copyright (c) 2011 AllBinary
! 
! By agreeing to this license you and any business entity you represent are
! legally bound to the AllBinary Open License Version 1 legal agreement.
! 
! You may obtain the AllBinary Open License Version 1 legal agreement from
! AllBinary or the root directory of AllBinary's AllBinary Platform repository.
! 
! Created By: Travis Berthelot
!  
! Generated Code Do Not Modify
! package org.allbinary.input.motion.button
module TouchButtonInput_m
  use JR_m
  use GameKey_m
  use GameKeyEventSourceInterface_m
  use Input_m
  use InputFactory_m
  use GameKeyEvent_m
  use GameKeyEventFactory_m
  use InputToGameKeyMapping_m
  use LogUtil_m
  use CommonStrings_m
  implicit none

  type, extends(Input) :: TouchButtonInput
    class(LogUtil), pointer :: f_logUtil => null()
    class(GameKeyEventFactory), pointer :: f_gameKeyEventFactory => null()
    integer(4) :: f_TOUCH_BUTTON_SOURCE_ID = 0
    class(GameKeyEvent), pointer :: f_gameKeyEvent => null()
  contains
    procedure :: jm_update_1 => TouchButtonInput_jm_update_1
    procedure :: jm_getSourceId_0 => TouchButtonInput_jm_getSourceId_0
    procedure :: jm_getGameKeyEvent_0 => TouchButtonInput_jm_getGameKeyEvent_0
  end type

  ! TouchButtonInput used as a GameKeyEventSourceInterface
  type, extends(GameKeyEventSourceInterface) :: TouchButtonInput_jas_GameKeyEventSourceInterface
    class(TouchButtonInput), pointer :: jtarget => null()
  contains
    procedure :: jm_getSourceId_0 => TouchButtonInput_jas_GameKeyEventSourceInterface_jm_getSourceId_0
  end type


contains

  function TouchButtonInput_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonInput), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonInput)
      jresult => object
    end select
  end function

  function TouchButtonInput_jas_GameKeyEventSourceInterface_jnew(object) result(jresult)
    class(TouchButtonInput), target :: object
    class(TouchButtonInput_jas_GameKeyEventSourceInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'TouchButtonInput'
    jresult%jtarget => object
  end function

  recursive function TouchButtonInput_jas_GameKeyEventSourceInterface_jm_getSourceId_0(this) result(jresult)
    class(TouchButtonInput_jas_GameKeyEventSourceInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getSourceId_0()
  end function

  recursive function TouchButtonInput_jnew_2(j_id, j_name) result(this)
    integer(4), value :: j_id
    character(len=*), intent(in) :: j_name
    class(TouchButtonInput), pointer :: this
    class(InputFactory), pointer :: j_inputFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TouchButtonInput'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_gameKeyEventFactory => GameKeyEventFactory_jm_getInstance_0()
    this%f_TOUCH_BUTTON_SOURCE_ID = this%f_gameKeyEventFactory%f_TOUCH_BUTTON_SOURCE_ID
    this%f_gameKeyEvent => GameKeyEvent_jstatic_NONE()
        continue ! super()
        j_inputFactory => InputFactory_jm_getInstance_0()
        call j_inputFactory%jm_add_2(this%jm_getId_0(), this)
  end function

  recursive subroutine TouchButtonInput_jm_update_1(this, j_inputToGameKeyMapping)
    class(TouchButtonInput), target :: this
    class(InputToGameKeyMapping), target, optional :: j_inputToGameKeyMapping
    class(GameKey), pointer :: j_gameKey
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_gameKey => j_inputToGameKeyMapping%jm_getInstance_1(this%jm_getId_0())
            this%f_gameKeyEvent => this%f_gameKeyEventFactory%jm_getInstanceForInput_2(TouchButtonInput_jas_GameKeyEventSourceInterface_jnew(this), j_gameKey)
  end subroutine

  recursive function TouchButtonInput_jm_getSourceId_0(this) result(jresult)
    class(TouchButtonInput), target :: this
    integer(4) :: jresult
        jresult = this%f_TOUCH_BUTTON_SOURCE_ID
        return
  end function

  recursive function TouchButtonInput_jm_getGameKeyEvent_0(this) result(jresult)
    class(TouchButtonInput), target :: this
    class(GameKeyEvent), pointer :: jresult
        jresult => this%f_gameKeyEvent
        return
  end function
end module TouchButtonInput_m

function TouchButtonInput_jnew_2_jext(p1, p2) result(this)
  use TouchButtonInput_m, only: JObject, TouchButtonInput_jnew_2
  implicit none
      integer(4), value :: p1
      character(len=*), intent(in) :: p2
  class(JObject), pointer :: this
  this => TouchButtonInput_jnew_2(p1, p2)
end function

