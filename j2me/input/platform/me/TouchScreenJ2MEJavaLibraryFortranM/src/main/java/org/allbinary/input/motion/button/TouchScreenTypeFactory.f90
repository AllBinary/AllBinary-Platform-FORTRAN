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
module TouchScreenTypeFactory_m
  use JR_m
  use TouchScreenFactory_m
  implicit none

  type, extends(JObject) :: TouchScreenTypeFactory
  contains
    procedure :: jm_TouchScreenTypeFactory_0 => TouchScreenTypeFactory_jm_TouchScreenTypeFactory_0
  end type

  class(TouchScreenTypeFactory), pointer, save :: TouchScreenTypeFactory_jcell_instance => null()
  logical, save :: TouchScreenTypeFactory_jset_instance = .false.

contains

  function TouchScreenTypeFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchScreenTypeFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchScreenTypeFactory)
      jresult => object
    end select
  end function

  function TouchScreenTypeFactory_jstatic_instance() result(jresult)
    class(TouchScreenTypeFactory), pointer :: jresult
    if (.not. TouchScreenTypeFactory_jset_instance) then
      TouchScreenTypeFactory_jset_instance = .true.
      TouchScreenTypeFactory_jcell_instance => TouchScreenTypeFactory_jnew_0()
    end if
    jresult => TouchScreenTypeFactory_jcell_instance
  end function

  subroutine TouchScreenTypeFactory_jsetstatic_instance(jvalue)
    class(TouchScreenTypeFactory), target, optional :: jvalue
    TouchScreenTypeFactory_jset_instance = .true.
    if (present(jvalue)) then
      TouchScreenTypeFactory_jcell_instance => jvalue
    else
      TouchScreenTypeFactory_jcell_instance => null()
    end if
  end subroutine

  function TouchScreenTypeFactory_jnew_0() result(this)
    class(TouchScreenTypeFactory), pointer :: this
    allocate(this)
    this%jclass = 'TouchScreenTypeFactory'
  end function

  recursive function TouchScreenTypeFactory_jm_getInstance_0() result(jresult)
    class(TouchScreenTypeFactory), pointer :: jresult
        jresult => TouchScreenTypeFactory_jstatic_instance()
        return
  end function

  recursive subroutine TouchScreenTypeFactory_jm_TouchScreenTypeFactory_0(this)
    class(TouchScreenTypeFactory), target :: this
    class(TouchScreenFactory), pointer :: j_touchScreenFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_touchScreenFactory => TouchScreenFactory_jm_getInstance_0()
        call j_touchScreenFactory%jm_setTouch_1(.true.)
  end subroutine
end module TouchScreenTypeFactory_m

