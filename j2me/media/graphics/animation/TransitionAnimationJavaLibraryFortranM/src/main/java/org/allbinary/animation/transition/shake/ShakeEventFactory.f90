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
! package org.allbinary.animation.transition.shake
module ShakeEventFactory_m
  use JR_m
  use ShakeEvent_m
  implicit none

  type, extends(JObject) :: ShakeEventFactory
    class(ShakeEvent), pointer :: f_MICRO => null()
    class(ShakeEvent), pointer :: f_SMALL => null()
    class(ShakeEvent), pointer :: f_MEDIUM => null()
    class(ShakeEvent), pointer :: f_LARGE => null()
  contains
    procedure :: jm_init_0 => ShakeEventFactory_jm_init_0
  end type

  class(ShakeEventFactory), pointer, save :: ShakeEventFactory_jcell_instance => null()
  logical, save :: ShakeEventFactory_jset_instance = .false.

contains

  function ShakeEventFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ShakeEventFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ShakeEventFactory)
      jresult => object
    end select
  end function

  function ShakeEventFactory_jstatic_instance() result(jresult)
    class(ShakeEventFactory), pointer :: jresult
    if (.not. ShakeEventFactory_jset_instance) then
      ShakeEventFactory_jset_instance = .true.
      ShakeEventFactory_jcell_instance => ShakeEventFactory_jnew_0()
    end if
    jresult => ShakeEventFactory_jcell_instance
  end function

  subroutine ShakeEventFactory_jsetstatic_instance(jvalue)
    class(ShakeEventFactory), target, optional :: jvalue
    ShakeEventFactory_jset_instance = .true.
    if (present(jvalue)) then
      ShakeEventFactory_jcell_instance => jvalue
    else
      ShakeEventFactory_jcell_instance => null()
    end if
  end subroutine

  function ShakeEventFactory_jnew_0() result(this)
    class(ShakeEventFactory), pointer :: this
    allocate(this)
    this%jclass = 'ShakeEventFactory'
    this%f_MICRO => ShakeEvent_jnew_0()
    this%f_SMALL => ShakeEvent_jnew_0()
    this%f_MEDIUM => ShakeEvent_jnew_0()
    this%f_LARGE => ShakeEvent_jnew_0()
  end function

  recursive function ShakeEventFactory_jm_getInstance_0() result(jresult)
    class(ShakeEventFactory), pointer :: jresult
        jresult => ShakeEventFactory_jstatic_instance()
        return
  end function

  recursive subroutine ShakeEventFactory_jm_init_0(this)
    class(ShakeEventFactory), target :: this
    continue
  end subroutine
end module ShakeEventFactory_m

