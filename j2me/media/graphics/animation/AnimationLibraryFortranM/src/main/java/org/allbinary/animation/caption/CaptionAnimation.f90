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
! package org.allbinary.animation.caption
module CaptionAnimation_m
  use JR_m
  use Animation_m
  implicit none

  type, extends(Animation) :: CaptionAnimation
    class(Animation), pointer :: f_animationInterface => null()
    class(Animation), pointer :: f_overlayAnimationInterface => null()
    integer(4) :: f_captionDx = 0
    integer(4) :: f_captionDy = 0
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
  contains
    procedure :: jm_nextFrame_0 => CaptionAnimation_jm_nextFrame_0
    procedure :: jm_paintXY_3 => CaptionAnimation_jm_paintXY_3
    procedure :: jm_paintThreedXYZ_4 => CaptionAnimation_jm_paintThreedXYZ_4
  end type


contains

  function CaptionAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CaptionAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CaptionAnimation)
      jresult => object
    end select
  end function

  recursive function CaptionAnimation_jnew_6(j_animationInterface, j_overlayAnimationInterface, j_captionDx, j_captionDy, j_dx, j_dy) result(this)
    class(Animation), target, optional :: j_animationInterface
    class(Animation), target, optional :: j_overlayAnimationInterface
    integer(4), value :: j_captionDx
    integer(4), value :: j_captionDy
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(CaptionAnimation), pointer :: this
    allocate(this)
    this%jclass = 'CaptionAnimation'
    
    
    
    
    
    
        this%f_animationInterface => j_animationInterface
        this%f_overlayAnimationInterface => j_overlayAnimationInterface
        this%f_captionDx = j_captionDx
        this%f_captionDy = j_captionDy
        this%f_dx = j_dx
        this%f_dy = j_dy
  end function

  recursive subroutine CaptionAnimation_jm_nextFrame_0(this)
    class(CaptionAnimation), target :: this
    continue
  end subroutine

  recursive subroutine CaptionAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(CaptionAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_animationInterface%jm_paintXY_3(j_graphics, (j_x + this%f_captionDx), (j_y + this%f_captionDy))
        call this%f_overlayAnimationInterface%jm_paintXY_3(j_graphics, ((j_x + this%f_captionDx) + this%f_dx), ((j_y + this%f_captionDy) + this%f_dy))
  end subroutine

  recursive subroutine CaptionAnimation_jm_paintThreedXYZ_4(this, j_graphics, j_x, j_y, j_z)
    class(CaptionAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_animationInterface%jm_paintThreedXYZ_4(j_graphics, (j_x + this%f_captionDx), (j_y + this%f_captionDy), j_z)
        call this%f_overlayAnimationInterface%jm_paintThreedXYZ_4(j_graphics, ((j_x + this%f_captionDx) + this%f_dx), ((j_y + this%f_captionDy) + this%f_dy), j_z)
  end subroutine
end module CaptionAnimation_m

