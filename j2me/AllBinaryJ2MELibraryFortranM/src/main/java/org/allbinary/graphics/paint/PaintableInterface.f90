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
module PaintableInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: PaintableInterface
  contains
    procedure :: jm_paint_1 => PaintableInterface_jm_paint_1
    procedure :: jm_paintThreed_1 => PaintableInterface_jm_paintThreed_1
  end type


contains

  function PaintableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PaintableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PaintableInterface)
      jresult => object
    end select
  end function

  function PaintableInterface_jnew_0() result(this)
    class(PaintableInterface), pointer :: this
    allocate(this)
    this%jclass = 'PaintableInterface'
  end function

  recursive subroutine PaintableInterface_jm_paint_1(this, j_graphics)
    class(PaintableInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    error stop 'AbstractMethodError: PaintableInterface.paint'
  end subroutine

  recursive subroutine PaintableInterface_jm_paintThreed_1(this, j_graphics)
    class(PaintableInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    error stop 'AbstractMethodError: PaintableInterface.paintThreed'
  end subroutine
end module PaintableInterface_m

