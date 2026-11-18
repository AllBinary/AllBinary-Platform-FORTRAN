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
module BasicGameDemoPaintable_m
  use JR_m
  use NullPaintable_m
  use Paintable_m
  use StatePaintable_m
  implicit none

  type, extends(StatePaintable) :: BasicGameDemoPaintable
    class(Paintable), pointer :: f_mainDemoStatePaintable => null()
    class(Paintable), pointer :: f_ownershipPaintable => null()
    class(Paintable), pointer :: f_helpPaintableInterface => null()
    class(Paintable), pointer :: f_currentStatePaintable => null()
  contains
    procedure :: jm_setState_1 => BasicGameDemoPaintable_jm_setState_1
    procedure :: jm_paint_1 => BasicGameDemoPaintable_jm_paint_1
    procedure :: jm_getHelpPaintableInterface_0 => BasicGameDemoPaintable_jm_getHelpPaintableInterface_0
    procedure :: jm_setCurrentStatePaintable_1 => BasicGameDemoPaintable_jm_setCurrentStatePaintable_1
    procedure :: jm_getCurrentStatePaintable_0 => BasicGameDemoPaintable_jm_getCurrentStatePaintable_0
    procedure :: jm_getMainDemoStatePaintable_0 => BasicGameDemoPaintable_jm_getMainDemoStatePaintable_0
  end type


contains

  function BasicGameDemoPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicGameDemoPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicGameDemoPaintable)
      jresult => object
    end select
  end function

  recursive function BasicGameDemoPaintable_jnew_3(j_mainDemoStatePaintable, j_ownershipPaintable, j_helpPaintableInterface) result(this)
    class(Paintable), target, optional :: j_mainDemoStatePaintable
    class(Paintable), target, optional :: j_ownershipPaintable
    class(Paintable), target, optional :: j_helpPaintableInterface
    class(BasicGameDemoPaintable), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'BasicGameDemoPaintable'
    
    
    
    this%f_currentStatePaintable => NullPaintable_jm_getInstance_0()
        this%f_mainDemoStatePaintable => j_mainDemoStatePaintable
        call this%jm_setCurrentStatePaintable_1(NullPaintable_jm_getInstance_0())
        this%f_ownershipPaintable => j_ownershipPaintable
        this%f_helpPaintableInterface => j_helpPaintableInterface
  end function

  recursive subroutine BasicGameDemoPaintable_jm_setState_1(this, j_state)
    class(BasicGameDemoPaintable), target :: this
    integer(4), value :: j_state
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((j_state == 0)) then
            call this%jm_setCurrentStatePaintable_1(this%jm_getMainDemoStatePaintable_0())
        else if ((j_state == 1)) then
            call this%jm_setCurrentStatePaintable_1(this%f_helpPaintableInterface)
        else
            call this%jm_setCurrentStatePaintable_1(this%f_ownershipPaintable)
        end if
  end subroutine

  recursive subroutine BasicGameDemoPaintable_jm_paint_1(this, j_graphics)
    class(BasicGameDemoPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Paintable), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => this%jm_getCurrentStatePaintable_0()
        call jtemp1%jm_paint_1(j_graphics)
  end subroutine

  recursive function BasicGameDemoPaintable_jm_getHelpPaintableInterface_0(this) result(jresult)
    class(BasicGameDemoPaintable), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_helpPaintableInterface
        return
  end function

  recursive subroutine BasicGameDemoPaintable_jm_setCurrentStatePaintable_1(this, j_currentStatePaintable)
    class(BasicGameDemoPaintable), target :: this
    class(Paintable), target, optional :: j_currentStatePaintable
        this%f_currentStatePaintable => j_currentStatePaintable
  end subroutine

  recursive function BasicGameDemoPaintable_jm_getCurrentStatePaintable_0(this) result(jresult)
    class(BasicGameDemoPaintable), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_currentStatePaintable
        return
  end function

  recursive function BasicGameDemoPaintable_jm_getMainDemoStatePaintable_0(this) result(jresult)
    class(BasicGameDemoPaintable), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_mainDemoStatePaintable
        return
  end function
end module BasicGameDemoPaintable_m

