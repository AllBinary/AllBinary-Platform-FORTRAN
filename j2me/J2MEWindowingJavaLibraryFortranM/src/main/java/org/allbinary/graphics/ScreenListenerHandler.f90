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
! package org.allbinary.graphics
module ScreenListenerHandler_m
  use JR_m
  use ScreenEmptyListener_m
  use ScreenListenerInterface_m
  implicit none

  type, extends(JObject) :: ScreenListenerHandler
    class(ScreenListenerInterface), pointer :: f_screenListenerInterface => null()
  contains
    procedure :: jm_setListener_1 => ScreenListenerHandler_jm_setListener_1
    procedure :: jm_fireWithState_1 => ScreenListenerHandler_jm_fireWithState_1
    procedure :: jm_fire_0 => ScreenListenerHandler_jm_fire_0
  end type

  class(ScreenListenerHandler), pointer, save :: ScreenListenerHandler_jcell_instance => null()
  logical, save :: ScreenListenerHandler_jset_instance = .false.

contains

  function ScreenListenerHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScreenListenerHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScreenListenerHandler)
      jresult => object
    end select
  end function

  function ScreenListenerHandler_jstatic_instance() result(jresult)
    class(ScreenListenerHandler), pointer :: jresult
    if (.not. ScreenListenerHandler_jset_instance) then
      ScreenListenerHandler_jset_instance = .true.
      ScreenListenerHandler_jcell_instance => ScreenListenerHandler_jnew_0()
    end if
    jresult => ScreenListenerHandler_jcell_instance
  end function

  function ScreenListenerHandler_jnew_0() result(this)
    class(ScreenListenerHandler), pointer :: this
    allocate(this)
    this%jclass = 'ScreenListenerHandler'
    this%f_screenListenerInterface => ScreenEmptyListener_jnew_0()
  end function

  recursive function ScreenListenerHandler_jm_getInstance_0() result(jresult)
    class(ScreenListenerHandler), pointer :: jresult
        jresult => ScreenListenerHandler_jstatic_instance()
        return
  end function

  recursive subroutine ScreenListenerHandler_jm_setListener_1(this, j_screenListenerInterface)
    class(ScreenListenerHandler), target :: this
    class(ScreenListenerInterface), target, optional :: j_screenListenerInterface
        this%f_screenListenerInterface => j_screenListenerInterface
  end subroutine

  recursive subroutine ScreenListenerHandler_jm_fireWithState_1(this, j_isFullScreen)
    class(ScreenListenerHandler), target :: this
    logical, value :: j_isFullScreen
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_screenListenerInterface%jm_onFullScreen_1(j_isFullScreen)
  end subroutine

  recursive subroutine ScreenListenerHandler_jm_fire_0(this)
    class(ScreenListenerHandler), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_screenListenerInterface%jm_onFullScreenDisplay_0()
  end subroutine
end module ScreenListenerHandler_m

