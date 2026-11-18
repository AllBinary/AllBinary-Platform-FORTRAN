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
! package org.allbinary.game.displayable.canvas
module RunnableCanvasSingleThreadStartRunnable_m
  use JR_m
  use RunnableCanvas_m
  use LogUtil_m
  use CommonStrings_m
  use GameRunnable_m
  implicit none

  type, extends(GameRunnable) :: RunnableCanvasSingleThreadStartRunnable
    class(LogUtil), pointer :: f_logUtil => null()
    class(RunnableCanvas), pointer :: f_runnableCanvas => null()
  contains
    procedure :: jm_run_0 => RunnableCanvasSingleThreadStartRunnable_jm_run_0
    procedure :: jm_processLoopSleep_0 => RunnableCanvasSingleThreadStartRunnable_jm_processLoopSleep_0
  end type


contains

  function RunnableCanvasSingleThreadStartRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RunnableCanvasSingleThreadStartRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RunnableCanvasSingleThreadStartRunnable)
      jresult => object
    end select
  end function

  recursive function RunnableCanvasSingleThreadStartRunnable_jnew_1(j_demoCanvas) result(this)
    class(RunnableCanvas), target, optional :: j_demoCanvas
    class(RunnableCanvasSingleThreadStartRunnable), pointer :: this
    allocate(this)
    this%jclass = 'RunnableCanvasSingleThreadStartRunnable'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
        this%f_runnableCanvas => j_demoCanvas
  end function

  recursive subroutine RunnableCanvasSingleThreadStartRunnable_jm_run_0(this)
    class(RunnableCanvasSingleThreadStartRunnable), target :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_runnableCanvas%jm_run_0()
  end subroutine

  recursive subroutine RunnableCanvasSingleThreadStartRunnable_jm_processLoopSleep_0(this)
    class(RunnableCanvasSingleThreadStartRunnable), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_runnableCanvas%jm_processLoopSleep_0()
  end subroutine
end module RunnableCanvasSingleThreadStartRunnable_m

