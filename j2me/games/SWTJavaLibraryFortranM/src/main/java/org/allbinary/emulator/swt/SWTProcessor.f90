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
module SWTProcessor_m
  use JR_m
  use NullRunnable_m
  use SwtDisplay_m
  implicit none

  type, extends(JObject) :: SWTProcessor
    class(JObject), pointer :: f_runnable => null()
  contains
    procedure :: jm_process_1 => SWTProcessor_jm_process_1
  end type

  class(SWTProcessor), pointer, save :: SWTProcessor_jcell_instance => null()
  logical, save :: SWTProcessor_jset_instance = .false.

contains

  function SWTProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SWTProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SWTProcessor)
      jresult => object
    end select
  end function

  function SWTProcessor_jstatic_instance() result(jresult)
    class(SWTProcessor), pointer :: jresult
    if (.not. SWTProcessor_jset_instance) then
      SWTProcessor_jset_instance = .true.
      SWTProcessor_jcell_instance => SWTProcessor_jnew_0()
    end if
    jresult => SWTProcessor_jcell_instance
  end function

  subroutine SWTProcessor_jsetstatic_instance(jvalue)
    class(SWTProcessor), target, optional :: jvalue
    SWTProcessor_jset_instance = .true.
    if (present(jvalue)) then
      SWTProcessor_jcell_instance => jvalue
    else
      SWTProcessor_jcell_instance => null()
    end if
  end subroutine

  recursive function SWTProcessor_jnew_0() result(this)
    class(SWTProcessor), pointer :: this
    allocate(this)
    this%jclass = 'SWTProcessor'
    this%f_runnable => NullRunnable_jm_getInstance_0()
        continue
  end function

  recursive function SWTProcessor_jm_getInstance_0() result(jresult)
    class(SWTProcessor), pointer :: jresult
        jresult => SWTProcessor_jstatic_instance()
        return
  end function

  recursive subroutine SWTProcessor_jm_process_1(this, j_display)
    class(SWTProcessor), target :: this
    class(SwtDisplay), target, optional :: j_display
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_display%jm_sleep_0()
  end subroutine
end module SWTProcessor_m

