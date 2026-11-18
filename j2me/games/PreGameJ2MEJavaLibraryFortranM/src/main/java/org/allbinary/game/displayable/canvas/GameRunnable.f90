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
module GameRunnable_m
  use JR_m
  use DisplayInfoSingleton_m
  use Thread_m
  implicit none

  type, extends(JObject) :: GameRunnable
    integer(4) :: f_WAIT = 0
    integer(4) :: f_FAST = 0
    integer(8) :: f_waitInMillis = 0_8
  contains
    procedure :: jm_run_0 => GameRunnable_jm_run_0
    procedure :: jm_processLoopSleep_0 => GameRunnable_jm_processLoopSleep_0
  end type


contains

  function GameRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameRunnable)
      jresult => object
    end select
  end function

  recursive function GameRunnable_jnew_0() result(this)
    class(GameRunnable), pointer :: this
    allocate(this)
    this%jclass = 'GameRunnable'
    this%f_WAIT = 240
    this%f_FAST = 60
    this%f_waitInMillis = int(this%f_WAIT, 8)
        continue
  end function

  recursive subroutine GameRunnable_jm_run_0(this)
    class(GameRunnable), target :: this
    class(DisplayInfoSingleton), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => DisplayInfoSingleton_jm_getInstance_0()
        call jtemp1%jm_process_0()
  end subroutine

  recursive subroutine GameRunnable_jm_processLoopSleep_0(this)
    class(GameRunnable), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call Thread_jm_sleep_1(this%f_waitInMillis)
  end subroutine
end module GameRunnable_m

