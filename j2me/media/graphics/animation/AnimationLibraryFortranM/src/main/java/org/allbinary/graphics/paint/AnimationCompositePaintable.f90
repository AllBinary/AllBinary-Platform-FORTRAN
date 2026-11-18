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
! package org.allbinary.graphics.paint
module AnimationCompositePaintable_m
  use JR_m
  use Animation_m
  use InitUpdatePaintable_m
  implicit none

  type, extends(InitUpdatePaintable) :: AnimationCompositePaintable
    class(Animation), pointer :: f_animationInterface => null()
  contains
    procedure :: jm_paint_1 => AnimationCompositePaintable_jm_paint_1
    procedure :: jm_paintThreed_1 => AnimationCompositePaintable_jm_paintThreed_1
  end type


contains

  function AnimationCompositePaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationCompositePaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationCompositePaintable)
      jresult => object
    end select
  end function

  recursive function AnimationCompositePaintable_jnew_1(j_animationInterface) result(this)
    class(Animation), target, optional :: j_animationInterface
    class(AnimationCompositePaintable), pointer :: this
    allocate(this)
    this%jclass = 'AnimationCompositePaintable'
    
        this%f_animationInterface => j_animationInterface
  end function

  recursive subroutine AnimationCompositePaintable_jm_paint_1(this, j_graphics)
    class(AnimationCompositePaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_animationInterface%jm_paintXY_3(j_graphics, 0, 0)
  end subroutine

  recursive subroutine AnimationCompositePaintable_jm_paintThreed_1(this, j_graphics)
    class(AnimationCompositePaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_animationInterface%jm_paintThreedXYZ_4(j_graphics, 0, 0, 0)
  end subroutine
end module AnimationCompositePaintable_m

