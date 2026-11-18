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
! package org.allbinary.game.displayable.canvas
module InGameMenuBehavior_m
  use JR_m
  use DisplayChangeEvent_m
  use BaseMenuBehavior_m
  use AllBinaryGameCanvas_m
  use GameCanvasNonBotPaintable_m
  implicit none

  type, extends(BaseMenuBehavior) :: InGameMenuBehavior
  contains
    procedure :: jm_onDisplayChangeEvent_2 => InGameMenuBehavior_jm_onDisplayChangeEvent_2
    procedure :: jm_initSpecialPaint_1 => InGameMenuBehavior_jm_initSpecialPaint_1
    procedure :: jm_initMenu_1 => InGameMenuBehavior_jm_initMenu_1
    procedure :: jm_updateMenu_1 => InGameMenuBehavior_jm_updateMenu_1
    procedure :: jm_popupMenu_1 => InGameMenuBehavior_jm_popupMenu_1
    procedure :: jm_closeMenu_1 => InGameMenuBehavior_jm_closeMenu_1
  end type

  class(InGameMenuBehavior), pointer, save :: InGameMenuBehavior_jcell_instanceC => null()
  logical, save :: InGameMenuBehavior_jset_instanceC = .false.

contains

  function InGameMenuBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InGameMenuBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InGameMenuBehavior)
      jresult => object
    end select
  end function

  function InGameMenuBehavior_jstatic_instanceC() result(jresult)
    class(InGameMenuBehavior), pointer :: jresult
    if (.not. InGameMenuBehavior_jset_instanceC) then
      InGameMenuBehavior_jset_instanceC = .true.
      InGameMenuBehavior_jcell_instanceC => InGameMenuBehavior_jnew_0()
    end if
    jresult => InGameMenuBehavior_jcell_instanceC
  end function

  subroutine InGameMenuBehavior_jsetstatic_instanceC(jvalue)
    class(InGameMenuBehavior), target, optional :: jvalue
    InGameMenuBehavior_jset_instanceC = .true.
    if (present(jvalue)) then
      InGameMenuBehavior_jcell_instanceC => jvalue
    else
      InGameMenuBehavior_jcell_instanceC => null()
    end if
  end subroutine

  function InGameMenuBehavior_jnew_0() result(this)
    class(InGameMenuBehavior), pointer :: this
    allocate(this)
    this%jclass = 'InGameMenuBehavior'
  end function

  recursive function InGameMenuBehavior_jm_getInstance_0() result(jresult)
    class(InGameMenuBehavior), pointer :: jresult
        jresult => InGameMenuBehavior_jstatic_instanceC()
        return
  end function

  recursive subroutine InGameMenuBehavior_jm_onDisplayChangeEvent_2(this, j_allBinaryGameCanvas, j_displayChangeEvent)
    class(InGameMenuBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_updateMenuFromEvent_1(j_displayChangeEvent)
  end subroutine

  recursive subroutine InGameMenuBehavior_jm_initSpecialPaint_1(this, j_allBinaryGameCanvas)
    class(InGameMenuBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_setNonBotPaintableP_1(GameCanvasNonBotPaintable_jnew_1(j_allBinaryGameCanvas))
  end subroutine

  recursive subroutine InGameMenuBehavior_jm_initMenu_1(this, j_allBinaryGameCanvas)
    class(InGameMenuBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_initMenu2_0()
  end subroutine

  recursive subroutine InGameMenuBehavior_jm_updateMenu_1(this, j_allBinaryGameCanvas)
    class(InGameMenuBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_initMenu2_0()
  end subroutine

  recursive subroutine InGameMenuBehavior_jm_popupMenu_1(this, j_allBinaryGameCanvas)
    class(InGameMenuBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_popupMenu2_0()
  end subroutine

  recursive subroutine InGameMenuBehavior_jm_closeMenu_1(this, j_allBinaryGameCanvas)
    class(InGameMenuBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_closeMenu2_0()
  end subroutine
end module InGameMenuBehavior_m

function InGameMenuBehavior_jnew_0_jext() result(this)
  use InGameMenuBehavior_m, only: JObject, InGameMenuBehavior_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => InGameMenuBehavior_jnew_0()
end function

