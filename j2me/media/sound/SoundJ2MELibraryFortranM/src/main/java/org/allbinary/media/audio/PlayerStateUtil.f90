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
! package org.allbinary.media.audio
module PlayerStateUtil_m
  use JR_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: PlayerStateUtil
    class(CommonStrings), pointer :: f_commonStrings => null()
    character(len=:), allocatable :: f_UNREALIZED
    character(len=:), allocatable :: f_REALIZED
    character(len=:), allocatable :: f_PREFETCHED
    character(len=:), allocatable :: f_STARTED
    character(len=:), allocatable :: f_CLOSED
  contains
    procedure :: jm_convert_1 => PlayerStateUtil_jm_convert_1
  end type

  class(PlayerStateUtil), pointer, save :: PlayerStateUtil_jcell_instance => null()
  logical, save :: PlayerStateUtil_jset_instance = .false.

contains

  function PlayerStateUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlayerStateUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlayerStateUtil)
      jresult => object
    end select
  end function

  function PlayerStateUtil_jstatic_instance() result(jresult)
    class(PlayerStateUtil), pointer :: jresult
    if (.not. PlayerStateUtil_jset_instance) then
      PlayerStateUtil_jset_instance = .true.
      PlayerStateUtil_jcell_instance => PlayerStateUtil_jnew_0()
    end if
    jresult => PlayerStateUtil_jcell_instance
  end function

  subroutine PlayerStateUtil_jsetstatic_instance(jvalue)
    class(PlayerStateUtil), target, optional :: jvalue
    PlayerStateUtil_jset_instance = .true.
    if (present(jvalue)) then
      PlayerStateUtil_jcell_instance => jvalue
    else
      PlayerStateUtil_jcell_instance => null()
    end if
  end subroutine

  function PlayerStateUtil_jnew_0() result(this)
    class(PlayerStateUtil), pointer :: this
    allocate(this)
    this%jclass = 'PlayerStateUtil'
    this%f_UNREALIZED = ''
    this%f_REALIZED = ''
    this%f_PREFETCHED = ''
    this%f_STARTED = ''
    this%f_CLOSED = ''
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_UNREALIZED = 'UNREALIZED'
    this%f_REALIZED = 'REALIZED'
    this%f_PREFETCHED = 'PREFETCHED'
    this%f_STARTED = 'STARTED'
    this%f_CLOSED = 'CLOSED'
  end function

  recursive function PlayerStateUtil_jm_getInstance_0() result(jresult)
    class(PlayerStateUtil), pointer :: jresult
        jresult => PlayerStateUtil_jstatic_instance()
        return
  end function

  recursive function PlayerStateUtil_jm_convert_1(this, j_state) result(jresult)
    class(PlayerStateUtil), target :: this
    integer(4), value :: j_state
    character(len=:), allocatable :: jresult
        if ((j_state == Player_jstatic_UNREALIZED())) then
            jresult = this%f_UNREALIZED
            return
        else if ((j_state == Player_jstatic_REALIZED())) then
            jresult = this%f_REALIZED
            return
        else if ((j_state == Player_jstatic_PREFETCHED())) then
            jresult = this%f_PREFETCHED
            return
        else if ((j_state == Player_jstatic_STARTED())) then
            jresult = this%f_STARTED
            return
        else if ((j_state == Player_jstatic_CLOSED())) then
            jresult = this%f_CLOSED
            return
        end if
        jresult = this%f_commonStrings%f_UNKNOWN
        return
  end function
end module PlayerStateUtil_m

