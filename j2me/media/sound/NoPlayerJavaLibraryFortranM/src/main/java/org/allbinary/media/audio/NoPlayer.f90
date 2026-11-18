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
module NoPlayer_m
  use JR_m
  use StringUtil_m
  use BasicPlayer_m
  use NullControl_m
  implicit none

  type, extends(BasicPlayer) :: NoPlayer
  contains
    procedure :: jm_close_0 => NoPlayer_jm_close_0
    procedure :: jm_getContentType_0 => NoPlayer_jm_getContentType_0
    procedure :: jm_getControl_1 => NoPlayer_jm_getControl_1
    procedure :: jm_getControls_0 => NoPlayer_jm_getControls_0
  end type

  class(NoPlayer), pointer, save :: NoPlayer_jcell_NO_PLAYER => null()
  logical, save :: NoPlayer_jset_NO_PLAYER = .false.

contains

  function NoPlayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoPlayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoPlayer)
      jresult => object
    end select
  end function

  function NoPlayer_jstatic_NO_PLAYER() result(jresult)
    class(NoPlayer), pointer :: jresult
    if (.not. NoPlayer_jset_NO_PLAYER) then
      NoPlayer_jset_NO_PLAYER = .true.
      NoPlayer_jcell_NO_PLAYER => NoPlayer_jnew_0()
    end if
    jresult => NoPlayer_jcell_NO_PLAYER
  end function

  subroutine NoPlayer_jsetstatic_NO_PLAYER(jvalue)
    class(NoPlayer), target, optional :: jvalue
    NoPlayer_jset_NO_PLAYER = .true.
    if (present(jvalue)) then
      NoPlayer_jcell_NO_PLAYER => jvalue
    else
      NoPlayer_jcell_NO_PLAYER => null()
    end if
  end subroutine

  recursive function NoPlayer_jnew_0() result(this)
    class(NoPlayer), pointer :: this
    allocate(this)
    this%jclass = 'NoPlayer'
        continue
  end function

  recursive subroutine NoPlayer_jm_close_0(this)
    class(NoPlayer), target :: this
    continue
  end subroutine

  recursive function NoPlayer_jm_getContentType_0(this) result(jresult)
    class(NoPlayer), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_NULL_STRING
        return
  end function

  recursive function NoPlayer_jm_getControl_1(this, j_controlType) result(jresult)
    class(NoPlayer), target :: this
    character(len=*), intent(in) :: j_controlType
    class(Control), pointer :: jresult
        jresult => NullControl_jnew_0()
        return
  end function

  recursive function NoPlayer_jm_getControls_0(this) result(jresult)
    class(NoPlayer), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = JR_newRefArray(0)
        return
  end function
end module NoPlayer_m

function NoPlayer_jnew_0_jext() result(this)
  use NoPlayer_m, only: JObject, NoPlayer_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoPlayer_jnew_0()
end function

