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
! package org.allbinary.animation
module AnimationInterface_m
  use JR_m
  use LocationPaintableInterface_m
  implicit none

  type, extends(LocationPaintableInterface) :: AnimationInterface
  contains
    procedure :: jm_nextFrame_0 => AnimationInterface_jm_nextFrame_0
    procedure :: jm_paintThreedXYZ_4 => AnimationInterface_jm_paintThreedXYZ_4
  end type


contains

  function AnimationInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationInterface)
      jresult => object
    end select
  end function

  function AnimationInterface_jnew_0() result(this)
    class(AnimationInterface), pointer :: this
    allocate(this)
    this%jclass = 'AnimationInterface'
  end function

  recursive subroutine AnimationInterface_jm_nextFrame_0(this)
    class(AnimationInterface), target :: this
    error stop 'AbstractMethodError: AnimationInterface.nextFrame'
  end subroutine

  recursive subroutine AnimationInterface_jm_paintThreedXYZ_4(this, j_graphics, j_x, j_y, j_z)
    class(AnimationInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    error stop 'AbstractMethodError: AnimationInterface.paintThreedXYZ'
  end subroutine
end module AnimationInterface_m

