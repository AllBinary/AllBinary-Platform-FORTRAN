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
module GameScrollMenuPaintable_m
  use JR_m
  use BasicColor_m
  use ColorChangeEventHandler_m
  use ColorChangeListener_m
  use FormPaintable_m
  use ScrollSelectionForm_m
  use ABStringComponent_m
  use ABTextItem_m
  use Paintable_m
  use AllBinaryEventObject_m
  use BasicGameDemoPaintable_m
  use MainGameDemoStatePaintable_m
  implicit none

  type, extends(BasicGameDemoPaintable) :: GameScrollMenuPaintable
  contains
    procedure :: jm_setState_1 => GameScrollMenuPaintable_jm_setState_1
    procedure :: jm_onEvent_1 => GameScrollMenuPaintable_jm_onEvent_1
    procedure :: jm_setColor_1 => GameScrollMenuPaintable_jm_setColor_1
  end type

  ! GameScrollMenuPaintable used as a ColorChangeListener
  type, extends(ColorChangeListener) :: GameScrollMenuPaintable_jas_ColorChangeListener
    class(GameScrollMenuPaintable), pointer :: jtarget => null()
  end type


contains

  function GameScrollMenuPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameScrollMenuPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameScrollMenuPaintable)
      jresult => object
    end select
  end function

  function GameScrollMenuPaintable_jas_ColorChangeListener_jnew(object) result(jresult)
    class(GameScrollMenuPaintable), target :: object
    class(GameScrollMenuPaintable_jas_ColorChangeListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'GameScrollMenuPaintable'
    jresult%jtarget => object
  end function

  recursive function GameScrollMenuPaintable_jnew_4(j_mainDemoStatePaintable, j_ownershipPaintable, j_helpPaintableInterface, j_basicColor) result(this)
    class(Paintable), target, optional :: j_mainDemoStatePaintable
    class(Paintable), target, optional :: j_ownershipPaintable
    class(Paintable), target, optional :: j_helpPaintableInterface
    class(BasicColor), target, optional :: j_basicColor
    class(GameScrollMenuPaintable), pointer :: this
    class(ColorChangeEventHandler), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameScrollMenuPaintable'
        continue ! super()
        call this%jm_setColor_1(j_basicColor)
        jtemp1 => ColorChangeEventHandler_jm_getInstance_0()
        call jtemp1%jm_addListenerInterface_1(this)
  end function

  recursive subroutine GameScrollMenuPaintable_jm_setState_1(this, j_state)
    class(GameScrollMenuPaintable), target :: this
    integer(4), value :: j_state
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setCurrentStatePaintable_1(this%jm_getMainDemoStatePaintable_0())
  end subroutine

  recursive subroutine GameScrollMenuPaintable_jm_onEvent_1(this, j_eventObject)
    class(GameScrollMenuPaintable), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    continue
  end subroutine

  recursive subroutine GameScrollMenuPaintable_jm_setColor_1(this, j_basicColor)
    class(GameScrollMenuPaintable), target :: this
    class(BasicColor), target, optional :: j_basicColor
    class(MainGameDemoStatePaintable), pointer :: j_mainGameDemoStatePaintable
    class(FormPaintable), pointer :: j_formPaintable
    class(ScrollSelectionForm), pointer :: j_scrollSelectionForm
    class(ABTextItem), pointer :: j_item
    class(ABStringComponent), pointer :: j_stringComponent
    integer(4) :: j_index
    class(Paintable), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_mainGameDemoStatePaintable => MainGameDemoStatePaintable_jcast(this%jm_getMainDemoStatePaintable_0())
        j_formPaintable => FormPaintable_jcast(j_mainGameDemoStatePaintable%jm_getMenuPaintableInterface_0())
        j_scrollSelectionForm => ScrollSelectionForm_jcast(j_formPaintable%jm_getForm_0())
        jtemp2 => j_mainGameDemoStatePaintable%jm_getOwnershipPaintableInterface_0()
        call jtemp2%jm_setBasicColorP_1(j_basicColor)
        call j_scrollSelectionForm%jm_setButtonBasicColor_1(j_basicColor)
        continue
        continue
        j_index = (j_scrollSelectionForm%jm_size_0() - 1)
        do while ((j_index >= 0))
            j_item => ABTextItem_jcast(j_scrollSelectionForm%jm_get_1(j_index))
            j_stringComponent => j_item%jm_getLabelStringComponent_0()
            if (associated(j_stringComponent)) then
                call j_stringComponent%jm_setForegroundBasicColor_1(j_basicColor)
            end if
            j_index = j_index - 1
        end do
  end subroutine
end module GameScrollMenuPaintable_m

