! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.emulator.swt
module SWTProcessorUtil_m
  use JR_m
  use SWTProcessor_m
  implicit none

  type, extends(JObject) :: SWTProcessorUtil
    class(SWTProcessor), pointer :: f_swtProcessor => null()
  end type

  class(SWTProcessorUtil), pointer, save :: SWTProcessorUtil_jcell_instance => null()
  logical, save :: SWTProcessorUtil_jset_instance = .false.

contains

  function SWTProcessorUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SWTProcessorUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SWTProcessorUtil)
      jresult => object
    end select
  end function

  function SWTProcessorUtil_jstatic_instance() result(jresult)
    class(SWTProcessorUtil), pointer :: jresult
    if (.not. SWTProcessorUtil_jset_instance) then
      SWTProcessorUtil_jset_instance = .true.
      SWTProcessorUtil_jcell_instance => SWTProcessorUtil_jnew_0()
    end if
    jresult => SWTProcessorUtil_jcell_instance
  end function

  subroutine SWTProcessorUtil_jsetstatic_instance(jvalue)
    class(SWTProcessorUtil), target, optional :: jvalue
    SWTProcessorUtil_jset_instance = .true.
    if (present(jvalue)) then
      SWTProcessorUtil_jcell_instance => jvalue
    else
      SWTProcessorUtil_jcell_instance => null()
    end if
  end subroutine

  function SWTProcessorUtil_jnew_0() result(this)
    class(SWTProcessorUtil), pointer :: this
    allocate(this)
    this%jclass = 'SWTProcessorUtil'
    this%f_swtProcessor => SWTProcessor_jm_getInstance_0()
  end function

  recursive function SWTProcessorUtil_jm_getInstance_0() result(jresult)
    class(SWTProcessorUtil), pointer :: jresult
        jresult => SWTProcessorUtil_jstatic_instance()
        return
  end function
end module SWTProcessorUtil_m

