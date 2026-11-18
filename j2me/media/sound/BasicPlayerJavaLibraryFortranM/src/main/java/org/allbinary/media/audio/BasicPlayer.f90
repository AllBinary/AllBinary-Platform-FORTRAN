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
! package org.allbinary.media.audio
module BasicPlayer_m
  use JR_m
  use StringUtil_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Controllable2_m
  use NullControl_m
  implicit none

  type, extends(Player) :: BasicPlayer
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(BasicArrayList), pointer :: f_listenersList => null()
    integer(4) :: f_stateP = 0
    integer(4) :: f_loopCountP = 0
  contains
    procedure :: jm_getContentType_0 => BasicPlayer_jm_getContentType_0
    procedure :: jm_getControl_1 => BasicPlayer_jm_getControl_1
    procedure :: jm_getControls_0 => BasicPlayer_jm_getControls_0
    procedure :: jm_close_0 => BasicPlayer_jm_close_0
    procedure :: jm_addPlayerListener_1 => BasicPlayer_jm_addPlayerListener_1
    procedure :: jm_removePlayerListener_1 => BasicPlayer_jm_removePlayerListener_1
    procedure :: jm_getState_0 => BasicPlayer_jm_getState_0
    procedure :: jm_setState_1 => BasicPlayer_jm_setState_1
    procedure :: jm_getDuration_0 => BasicPlayer_jm_getDuration_0
    procedure :: jm_getMediaTime_0 => BasicPlayer_jm_getMediaTime_0
    procedure :: jm_deallocate_0 => BasicPlayer_jm_deallocate_0
    procedure :: jm_prefetch_0 => BasicPlayer_jm_prefetch_0
    procedure :: jm_realize_0 => BasicPlayer_jm_realize_0
    procedure :: jm_setLoopCount_1 => BasicPlayer_jm_setLoopCount_1
    procedure :: jm_getLoopCount_0 => BasicPlayer_jm_getLoopCount_0
    procedure :: jm_setMediaTime_1 => BasicPlayer_jm_setMediaTime_1
    procedure :: jm_start_0 => BasicPlayer_jm_start_0
    procedure :: jm_stop_0 => BasicPlayer_jm_stop_0
    procedure :: jm_setVolume_2 => BasicPlayer_jm_setVolume_2
  end type

  ! BasicPlayer used as a Controllable2
  type, extends(Controllable2) :: BasicPlayer_jas_Controllable2
    class(BasicPlayer), pointer :: jtarget => null()
  contains
    procedure :: jm_setVolume_2 => BasicPlayer_jas_Controllable2_jm_setVolume_2
  end type

  character(len=:), allocatable, save :: BasicPlayer_jcell_CONTROL_TYPE
  logical, save :: BasicPlayer_jset_CONTROL_TYPE = .false.

contains

  function BasicPlayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicPlayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicPlayer)
      jresult => object
    end select
  end function

  function BasicPlayer_jas_Controllable2_jnew(object) result(jresult)
    class(BasicPlayer), target :: object
    class(BasicPlayer_jas_Controllable2), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'BasicPlayer'
    jresult%jtarget => object
  end function

  recursive subroutine BasicPlayer_jas_Controllable2_jm_setVolume_2(this, j_leftVolume, j_rightVolume)
    class(BasicPlayer_jas_Controllable2), target :: this
    integer(4), value :: j_leftVolume
    integer(4), value :: j_rightVolume
    call this%jtarget%jm_setVolume_2(j_leftVolume, j_rightVolume)
  end subroutine

  function BasicPlayer_jstatic_CONTROL_TYPE() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. BasicPlayer_jset_CONTROL_TYPE) then
      BasicPlayer_jset_CONTROL_TYPE = .true.
      BasicPlayer_jcell_CONTROL_TYPE = 'ToneControl'
    end if
    jresult = BasicPlayer_jcell_CONTROL_TYPE
  end function

  subroutine BasicPlayer_jsetstatic_CONTROL_TYPE(jvalue)
    character(len=*), intent(in) :: jvalue
    BasicPlayer_jset_CONTROL_TYPE = .true.
    BasicPlayer_jcell_CONTROL_TYPE = jvalue
  end subroutine

  recursive function BasicPlayer_jnew_0() result(this)
    class(BasicPlayer), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'BasicPlayer'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_listenersList => BasicArrayListD_jnew_0()
    
    
        call this%jm_setLoopCount_1(0)
        call this%jm_setState_1(Player_jstatic_UNREALIZED())
  end function

  recursive function BasicPlayer_jm_getContentType_0(this) result(jresult)
    class(BasicPlayer), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_EMPTY_STRING
        return
  end function

  recursive function BasicPlayer_jm_getControl_1(this, j_controlType) result(jresult)
    class(BasicPlayer), target :: this
    character(len=*), intent(in) :: j_controlType
    class(Control), pointer :: jresult
        jresult => NullControl_jnew_0()
        return
  end function

  recursive function BasicPlayer_jm_getControls_0(this) result(jresult)
    class(BasicPlayer), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = JR_newRefArray(0)
        return
  end function

  recursive subroutine BasicPlayer_jm_close_0(this)
    class(BasicPlayer), target :: this
    continue
  end subroutine

  recursive subroutine BasicPlayer_jm_addPlayerListener_1(this, j_playerListener)
    class(BasicPlayer), target :: this
    class(PlayerListener), target, optional :: j_playerListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_listenersList%jm_contains_1(j_playerListener))) then
            jdiscardBoolean = this%f_listenersList%jm_add_1(j_playerListener)
        end if
  end subroutine

  recursive subroutine BasicPlayer_jm_removePlayerListener_1(this, j_playerListener)
    class(BasicPlayer), target :: this
    class(PlayerListener), target, optional :: j_playerListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_listenersList%jm_remove_1(j_playerListener)
  end subroutine

  recursive function BasicPlayer_jm_getState_0(this) result(jresult)
    class(BasicPlayer), target :: this
    integer(4) :: jresult
        jresult = this%f_stateP
        return
  end function

  recursive subroutine BasicPlayer_jm_setState_1(this, j_state)
    class(BasicPlayer), target :: this
    integer(4), value :: j_state
        this%f_stateP = j_state
  end subroutine

  recursive function BasicPlayer_jm_getDuration_0(this) result(jresult)
    class(BasicPlayer), target :: this
    integer(8) :: jresult
        jresult = 0_8
        return
  end function

  recursive function BasicPlayer_jm_getMediaTime_0(this) result(jresult)
    class(BasicPlayer), target :: this
    integer(8) :: jresult
        jresult = 0_8
        return
  end function

  recursive subroutine BasicPlayer_jm_deallocate_0(this)
    class(BasicPlayer), target :: this
    continue
  end subroutine

  recursive subroutine BasicPlayer_jm_prefetch_0(this)
    class(BasicPlayer), target :: this
    continue
  end subroutine

  recursive subroutine BasicPlayer_jm_realize_0(this)
    class(BasicPlayer), target :: this
    continue
  end subroutine

  recursive subroutine BasicPlayer_jm_setLoopCount_1(this, j_count)
    class(BasicPlayer), target :: this
    integer(4), value :: j_count
        this%f_loopCountP = j_count
  end subroutine

  recursive function BasicPlayer_jm_getLoopCount_0(this) result(jresult)
    class(BasicPlayer), target :: this
    integer(4) :: jresult
        jresult = this%f_loopCountP
        return
  end function

  recursive function BasicPlayer_jm_setMediaTime_1(this, j_now) result(jresult)
    class(BasicPlayer), target :: this
    integer(8), value :: j_now
    integer(8) :: jresult
        jresult = 0_8
        return
  end function

  recursive subroutine BasicPlayer_jm_start_0(this)
    class(BasicPlayer), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setState_1(Player_jstatic_STARTED())
  end subroutine

  recursive subroutine BasicPlayer_jm_stop_0(this)
    class(BasicPlayer), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setState_1(Player_jstatic_PREFETCHED())
  end subroutine

  recursive subroutine BasicPlayer_jm_setVolume_2(this, j_leftVolume, j_rightVolume)
    class(BasicPlayer), target :: this
    integer(4), value :: j_leftVolume
    integer(4), value :: j_rightVolume
    continue
  end subroutine
end module BasicPlayer_m

