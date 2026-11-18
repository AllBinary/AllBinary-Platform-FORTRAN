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
! package org.allbinary.game.paint
module MainGameDemoStatePaintable_m
  use JR_m
  use Paintable_m
  implicit none

  type, extends(Paintable) :: MainGameDemoStatePaintable
    class(Paintable), pointer :: f_ownershipPaintableInterface => null()
    class(Paintable), pointer :: f_menuPaintableInterface => null()
  contains
    procedure :: jm_paint_1 => MainGameDemoStatePaintable_jm_paint_1
    procedure :: jm_getOwnershipPaintableInterface_0 => MainGameDemoStatePaintable_jm_getOwnershipPaintableInterface_0
    procedure :: jm_getMenuPaintableInterface_0 => MainGameDemoStatePaintable_jm_getMenuPaintableInterface_0
  end type


contains

  function MainGameDemoStatePaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MainGameDemoStatePaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MainGameDemoStatePaintable)
      jresult => object
    end select
  end function

  recursive function MainGameDemoStatePaintable_jnew_2(j_ownershipPaintableInterface, j_menuPaintableInterface) result(this)
    class(Paintable), target, optional :: j_ownershipPaintableInterface
    class(Paintable), target, optional :: j_menuPaintableInterface
    class(MainGameDemoStatePaintable), pointer :: this
    allocate(this)
    this%jclass = 'MainGameDemoStatePaintable'
    
    
        this%f_ownershipPaintableInterface => j_ownershipPaintableInterface
        this%f_menuPaintableInterface => j_menuPaintableInterface
  end function

  recursive subroutine MainGameDemoStatePaintable_jm_paint_1(this, j_graphics)
    class(MainGameDemoStatePaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_menuPaintableInterface%jm_paint_1(j_graphics)
        call this%f_ownershipPaintableInterface%jm_paint_1(j_graphics)
  end subroutine

  recursive function MainGameDemoStatePaintable_jm_getOwnershipPaintableInterface_0(this) result(jresult)
    class(MainGameDemoStatePaintable), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_ownershipPaintableInterface
        return
  end function

  recursive function MainGameDemoStatePaintable_jm_getMenuPaintableInterface_0(this) result(jresult)
    class(MainGameDemoStatePaintable), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_menuPaintableInterface
        return
  end function
end module MainGameDemoStatePaintable_m

