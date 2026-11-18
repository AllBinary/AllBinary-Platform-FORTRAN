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
module TouchButtonsBuilderFactory_m
  use JR_m
  use NoButtonsTouchInputFactory_m
  use BaseTouchInput_m
  implicit none

  type, extends(JObject) :: TouchButtonsBuilderFactory
  contains
    procedure :: jm_getInstance_0 => TouchButtonsBuilderFactory_jm_getInstance_0
  end type

  class(TouchButtonsBuilderFactory), pointer, save :: TouchButtonsBuilderFactory_jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY => null()
  logical, save :: TouchButtonsBuilderFactory_jset_NO_TOUCH_BUTTON_BUILDER_FACTORY = .false.

contains

  function TouchButtonsBuilderFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonsBuilderFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonsBuilderFactory)
      jresult => object
    end select
  end function

  function TouchButtonsBuilderFactory_jstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY() result(jresult)
    class(TouchButtonsBuilderFactory), pointer :: jresult
    if (.not. TouchButtonsBuilderFactory_jset_NO_TOUCH_BUTTON_BUILDER_FACTORY) then
      TouchButtonsBuilderFactory_jset_NO_TOUCH_BUTTON_BUILDER_FACTORY = .true.
      TouchButtonsBuilderFactory_jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY => TouchButtonsBuilderFactory_jnew_0()
    end if
    jresult => TouchButtonsBuilderFactory_jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY
  end function

  subroutine TouchButtonsBuilderFactory_jsetstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY(jvalue)
    class(TouchButtonsBuilderFactory), target, optional :: jvalue
    TouchButtonsBuilderFactory_jset_NO_TOUCH_BUTTON_BUILDER_FACTORY = .true.
    if (present(jvalue)) then
      TouchButtonsBuilderFactory_jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY => jvalue
    else
      TouchButtonsBuilderFactory_jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY => null()
    end if
  end subroutine

  function TouchButtonsBuilderFactory_jnew_0() result(this)
    class(TouchButtonsBuilderFactory), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonsBuilderFactory'
  end function

  recursive function TouchButtonsBuilderFactory_jm_getInstance_0(this) result(jresult)
    class(TouchButtonsBuilderFactory), target :: this
    class(BaseTouchInput), pointer :: jresult
        jresult => NoButtonsTouchInputFactory_jm_getInstance_0()
        return
  end function
end module TouchButtonsBuilderFactory_m

