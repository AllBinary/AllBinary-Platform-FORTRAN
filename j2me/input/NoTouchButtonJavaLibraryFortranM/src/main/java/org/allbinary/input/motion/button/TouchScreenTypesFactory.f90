! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
module TouchScreenTypesFactory_m
  use JR_m
  use TouchScreenType_m
  implicit none

  type, extends(JObject) :: TouchScreenTypesFactory
    class(TouchScreenType), pointer :: f_FINGER => null()
    class(TouchScreenType), pointer :: f_NOTOUCH => null()
    class(TouchScreenType), pointer :: f_STYLUS => null()
    class(TouchScreenType), pointer :: f_UNDEFINED => null()
  end type

  class(TouchScreenTypesFactory), pointer, save :: TouchScreenTypesFactory_jcell_instance => null()
  logical, save :: TouchScreenTypesFactory_jset_instance = .false.

contains

  function TouchScreenTypesFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchScreenTypesFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchScreenTypesFactory)
      jresult => object
    end select
  end function

  function TouchScreenTypesFactory_jstatic_instance() result(jresult)
    class(TouchScreenTypesFactory), pointer :: jresult
    if (.not. TouchScreenTypesFactory_jset_instance) then
      TouchScreenTypesFactory_jset_instance = .true.
      TouchScreenTypesFactory_jcell_instance => TouchScreenTypesFactory_jnew_0()
    end if
    jresult => TouchScreenTypesFactory_jcell_instance
  end function

  subroutine TouchScreenTypesFactory_jsetstatic_instance(jvalue)
    class(TouchScreenTypesFactory), target, optional :: jvalue
    TouchScreenTypesFactory_jset_instance = .true.
    if (present(jvalue)) then
      TouchScreenTypesFactory_jcell_instance => jvalue
    else
      TouchScreenTypesFactory_jcell_instance => null()
    end if
  end subroutine

  function TouchScreenTypesFactory_jnew_0() result(this)
    class(TouchScreenTypesFactory), pointer :: this
    allocate(this)
    this%jclass = 'TouchScreenTypesFactory'
    this%f_FINGER => TouchScreenType_jnew_1('Finger')
    this%f_NOTOUCH => TouchScreenType_jnew_1('No Touch')
    this%f_STYLUS => TouchScreenType_jnew_1('Stylus')
    this%f_UNDEFINED => TouchScreenType_jnew_1('Undefined')
  end function

  recursive function TouchScreenTypesFactory_jm_getInstance_0() result(jresult)
    class(TouchScreenTypesFactory), pointer :: jresult
        jresult => TouchScreenTypesFactory_jstatic_instance()
        return
  end function
end module TouchScreenTypesFactory_m

