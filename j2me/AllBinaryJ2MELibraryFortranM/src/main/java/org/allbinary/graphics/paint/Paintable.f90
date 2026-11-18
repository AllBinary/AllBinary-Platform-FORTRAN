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
module Paintable_m
  use JR_m
  use BasicColor_m
  use PaintableInterface_m
  implicit none

  type, extends(PaintableInterface) :: Paintable
  contains
    procedure :: jm_setBasicColorP_1 => Paintable_jm_setBasicColorP_1
    procedure :: jm_paint_1 => Paintable_jm_paint_1
    procedure :: jm_paintThreed_1 => Paintable_jm_paintThreed_1
  end type


contains

  function Paintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Paintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Paintable)
      jresult => object
    end select
  end function

  function Paintable_jnew_0() result(this)
    class(Paintable), pointer :: this
    allocate(this)
    this%jclass = 'Paintable'
  end function

  recursive subroutine Paintable_jm_setBasicColorP_1(this, j_basicColor)
    class(Paintable), target :: this
    class(BasicColor), target, optional :: j_basicColor
    continue
  end subroutine

  recursive subroutine Paintable_jm_paint_1(this, j_graphics)
    class(Paintable), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine Paintable_jm_paintThreed_1(this, j_graphics)
    class(Paintable), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module Paintable_m

