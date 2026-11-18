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
module SWTRunnableProcessor_m
  use JR_m
  use SwtDisplay_m
  use SWTProcessor_m
  implicit none

  type, extends(SWTProcessor) :: SWTRunnableProcessor
  contains
    procedure :: jm_process_1 => SWTRunnableProcessor_jm_process_1
  end type

  class(SWTRunnableProcessor), pointer, save :: SWTRunnableProcessor_jcell_instanceR => null()
  logical, save :: SWTRunnableProcessor_jset_instanceR = .false.

contains

  function SWTRunnableProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SWTRunnableProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SWTRunnableProcessor)
      jresult => object
    end select
  end function

  function SWTRunnableProcessor_jstatic_instanceR() result(jresult)
    class(SWTRunnableProcessor), pointer :: jresult
    if (.not. SWTRunnableProcessor_jset_instanceR) then
      SWTRunnableProcessor_jset_instanceR = .true.
      SWTRunnableProcessor_jcell_instanceR => SWTRunnableProcessor_jnew_0()
    end if
    jresult => SWTRunnableProcessor_jcell_instanceR
  end function

  subroutine SWTRunnableProcessor_jsetstatic_instanceR(jvalue)
    class(SWTRunnableProcessor), target, optional :: jvalue
    SWTRunnableProcessor_jset_instanceR = .true.
    if (present(jvalue)) then
      SWTRunnableProcessor_jcell_instanceR => jvalue
    else
      SWTRunnableProcessor_jcell_instanceR => null()
    end if
  end subroutine

  recursive function SWTRunnableProcessor_jnew_0() result(this)
    class(SWTRunnableProcessor), pointer :: this
    allocate(this)
    this%jclass = 'SWTRunnableProcessor'
        continue
  end function

  recursive function SWTRunnableProcessor_jm_getInstance_0() result(jresult)
    class(SWTRunnableProcessor), pointer :: jresult
        jresult => SWTRunnableProcessor_jstatic_instanceR()
        return
  end function

  recursive subroutine SWTRunnableProcessor_jm_process_1(this, j_display)
    class(SWTRunnableProcessor), target :: this
    class(SwtDisplay), target, optional :: j_display
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_runnable%jm_run_0()
  end subroutine
end module SWTRunnableProcessor_m

function SWTRunnableProcessor_jnew_0_jext() result(this)
  use SWTRunnableProcessor_m, only: JObject, SWTRunnableProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => SWTRunnableProcessor_jnew_0()
end function

