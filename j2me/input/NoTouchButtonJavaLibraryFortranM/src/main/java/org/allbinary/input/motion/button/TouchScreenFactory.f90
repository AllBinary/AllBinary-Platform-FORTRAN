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
module TouchScreenFactory_m
  use JR_m
  use TouchScreenTypesFactory_m
  use TouchScreenType_m
  implicit none

  type, extends(JObject) :: TouchScreenFactory
    logical :: f_multiTouch = .false.
    logical :: f_touch = .false.
    class(TouchScreenType), pointer :: f_touchScreenType => null()
  contains
    procedure :: jm_isMultiTouch_0 => TouchScreenFactory_jm_isMultiTouch_0
    procedure :: jm_setTouch_1 => TouchScreenFactory_jm_setTouch_1
    procedure :: jm_isTouch_0 => TouchScreenFactory_jm_isTouch_0
    procedure :: jm_getTouchScreenType_0 => TouchScreenFactory_jm_getTouchScreenType_0
  end type

  class(TouchScreenFactory), pointer, save :: TouchScreenFactory_jcell_SINGLETON => null()
  logical, save :: TouchScreenFactory_jset_SINGLETON = .false.

contains

  function TouchScreenFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchScreenFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchScreenFactory)
      jresult => object
    end select
  end function

  function TouchScreenFactory_jstatic_SINGLETON() result(jresult)
    class(TouchScreenFactory), pointer :: jresult
    if (.not. TouchScreenFactory_jset_SINGLETON) then
      TouchScreenFactory_jset_SINGLETON = .true.
      TouchScreenFactory_jcell_SINGLETON => TouchScreenFactory_jnew_0()
    end if
    jresult => TouchScreenFactory_jcell_SINGLETON
  end function

  subroutine TouchScreenFactory_jsetstatic_SINGLETON(jvalue)
    class(TouchScreenFactory), target, optional :: jvalue
    TouchScreenFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      TouchScreenFactory_jcell_SINGLETON => jvalue
    else
      TouchScreenFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function TouchScreenFactory_jnew_0() result(this)
    class(TouchScreenFactory), pointer :: this
    class(TouchScreenTypesFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'TouchScreenFactory'
    
    
    jtemp1 => TouchScreenTypesFactory_jm_getInstance_0()
    this%f_touchScreenType => jtemp1%f_NOTOUCH
        continue
  end function

  recursive function TouchScreenFactory_jm_getInstance_0() result(jresult)
    class(TouchScreenFactory), pointer :: jresult
        jresult => TouchScreenFactory_jstatic_SINGLETON()
        return
  end function

  recursive function TouchScreenFactory_jm_isMultiTouch_0(this) result(jresult)
    class(TouchScreenFactory), target :: this
    logical :: jresult
        jresult = this%f_multiTouch
        return
  end function

  recursive subroutine TouchScreenFactory_jm_setTouch_1(this, j_touch)
    class(TouchScreenFactory), target :: this
    logical, value :: j_touch
    continue
  end subroutine

  recursive function TouchScreenFactory_jm_isTouch_0(this) result(jresult)
    class(TouchScreenFactory), target :: this
    logical :: jresult
        jresult = this%f_touch
        return
  end function

  recursive function TouchScreenFactory_jm_getTouchScreenType_0(this) result(jresult)
    class(TouchScreenFactory), target :: this
    class(TouchScreenType), pointer :: jresult
        jresult => this%f_touchScreenType
        return
  end function
end module TouchScreenFactory_m

