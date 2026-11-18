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
! package org.allbinary.game.displayable
module RepaintRunnable_m
  use JR_m
  use DisplayInfoSingleton_m
  use LogUtil_m
  use CommonStrings_m
  use ARunnable_m
  implicit none

  type, extends(ARunnable) :: RepaintRunnable
    class(Canvas), pointer :: f_canvas => null()
  contains
    procedure :: jm_run_0 => RepaintRunnable_jm_run_0
  end type


contains

  function RepaintRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RepaintRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RepaintRunnable)
      jresult => object
    end select
  end function

  recursive function RepaintRunnable_jnew_1(j_canvas) result(this)
    class(Canvas), target, optional :: j_canvas
    class(RepaintRunnable), pointer :: this
    allocate(this)
    this%jclass = 'RepaintRunnable'
    
        this%f_canvas => j_canvas
  end function

  recursive subroutine RepaintRunnable_jm_run_0(this)
    class(RepaintRunnable), target :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(LogUtil), pointer :: j_logUtil
    class(DisplayInfoSingleton), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_canvas%jm_repaint_0()
            jtemp1 => DisplayInfoSingleton_jm_getInstance_0()
            call jtemp1%jm_process_0()
  end subroutine
end module RepaintRunnable_m

