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
! package org.allbinary.animation.caption
module CaptionAnimationHelperBase_m
  use JR_m
  use Animation_m
  use BasicColor_m
  implicit none

  type, extends(Animation) :: CaptionAnimationHelperBase
  contains
    procedure :: jm_isShowing_0 => CaptionAnimationHelperBase_jm_isShowing_0
    procedure :: jm_tick_0 => CaptionAnimationHelperBase_jm_tick_0
    procedure :: jm_update_2 => CaptionAnimationHelperBase_jm_update_2
    procedure :: jm_paintXY_3 => CaptionAnimationHelperBase_jm_paintXY_3
  end type

  class(CaptionAnimationHelperBase), pointer, save :: CaptionAnimationHelperBase_jcell_INSTANCE => null()
  logical, save :: CaptionAnimationHelperBase_jset_INSTANCE = .false.

contains

  function CaptionAnimationHelperBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CaptionAnimationHelperBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CaptionAnimationHelperBase)
      jresult => object
    end select
  end function

  function CaptionAnimationHelperBase_jstatic_INSTANCE() result(jresult)
    class(CaptionAnimationHelperBase), pointer :: jresult
    if (.not. CaptionAnimationHelperBase_jset_INSTANCE) then
      CaptionAnimationHelperBase_jset_INSTANCE = .true.
      CaptionAnimationHelperBase_jcell_INSTANCE => CaptionAnimationHelperBase_jnew_0()
    end if
    jresult => CaptionAnimationHelperBase_jcell_INSTANCE
  end function

  subroutine CaptionAnimationHelperBase_jsetstatic_INSTANCE(jvalue)
    class(CaptionAnimationHelperBase), target, optional :: jvalue
    CaptionAnimationHelperBase_jset_INSTANCE = .true.
    if (present(jvalue)) then
      CaptionAnimationHelperBase_jcell_INSTANCE => jvalue
    else
      CaptionAnimationHelperBase_jcell_INSTANCE => null()
    end if
  end subroutine

  function CaptionAnimationHelperBase_jnew_0() result(this)
    class(CaptionAnimationHelperBase), pointer :: this
    allocate(this)
    this%jclass = 'CaptionAnimationHelperBase'
  end function

  recursive function CaptionAnimationHelperBase_jm_isShowing_0(this) result(jresult)
    class(CaptionAnimationHelperBase), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine CaptionAnimationHelperBase_jm_tick_0(this)
    class(CaptionAnimationHelperBase), target :: this
    continue
  end subroutine

  recursive subroutine CaptionAnimationHelperBase_jm_update_2(this, j_message, j_basicColor)
    class(CaptionAnimationHelperBase), target :: this
    character(len=*), intent(in) :: j_message
    class(BasicColor), target, optional :: j_basicColor
    continue
  end subroutine

  recursive subroutine CaptionAnimationHelperBase_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(CaptionAnimationHelperBase), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine
end module CaptionAnimationHelperBase_m

function CaptionAnimationHelperBase_jnew_0_jext() result(this)
  use CaptionAnimationHelperBase_m, only: JObject, CaptionAnimationHelperBase_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => CaptionAnimationHelperBase_jnew_0()
end function

