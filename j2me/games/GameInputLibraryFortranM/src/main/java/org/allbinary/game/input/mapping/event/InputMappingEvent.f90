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
! package org.allbinary.game.input.mapping.event
module InputMappingEvent_m
  use JR_m
  use InputToGameKeyMapping_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(AllBinaryEventObject) :: InputMappingEvent
    class(InputToGameKeyMapping), pointer :: f_inputToGameKeyMapping => null()
  contains
    procedure :: jm_setInputToGameKeyMapping_1 => InputMappingEvent_jm_setInputToGameKeyMapping_1
    procedure :: jm_getInputToGameKeyMapping_0 => InputMappingEvent_jm_getInputToGameKeyMapping_0
  end type


contains

  function InputMappingEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputMappingEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputMappingEvent)
      jresult => object
    end select
  end function

  recursive function InputMappingEvent_jnew_1(j_anyType) result(this)
    class(JObject), target, optional :: j_anyType
    class(InputMappingEvent), pointer :: this
    allocate(this)
    this%jclass = 'InputMappingEvent'
    this%f_inputToGameKeyMapping => InputToGameKeyMapping_jm_getNullInstance_0()
        continue ! super()
  end function

  recursive subroutine InputMappingEvent_jm_setInputToGameKeyMapping_1(this, j_inputToGameKeyMapping)
    class(InputMappingEvent), target :: this
    class(InputToGameKeyMapping), target, optional :: j_inputToGameKeyMapping
        this%f_inputToGameKeyMapping => j_inputToGameKeyMapping
  end subroutine

  recursive function InputMappingEvent_jm_getInputToGameKeyMapping_0(this) result(jresult)
    class(InputMappingEvent), target :: this
    class(InputToGameKeyMapping), pointer :: jresult
        jresult => this%f_inputToGameKeyMapping
        return
  end function
end module InputMappingEvent_m

