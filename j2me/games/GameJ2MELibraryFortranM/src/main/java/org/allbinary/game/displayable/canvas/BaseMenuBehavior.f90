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
module BaseMenuBehavior_m
  use JR_m
  use DisplayChangeEvent_m
  use NullPaintable_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(JObject) :: BaseMenuBehavior
  contains
    procedure :: jm_onDisplayChangeEvent_2 => BaseMenuBehavior_jm_onDisplayChangeEvent_2
    procedure :: jm_initSpecialPaint_1 => BaseMenuBehavior_jm_initSpecialPaint_1
    procedure :: jm_initMenu_1 => BaseMenuBehavior_jm_initMenu_1
    procedure :: jm_updateMenu_1 => BaseMenuBehavior_jm_updateMenu_1
    procedure :: jm_popupMenu_1 => BaseMenuBehavior_jm_popupMenu_1
    procedure :: jm_closeMenu_1 => BaseMenuBehavior_jm_closeMenu_1
  end type

  class(BaseMenuBehavior), pointer, save :: BaseMenuBehavior_jcell_instance => null()
  logical, save :: BaseMenuBehavior_jset_instance = .false.

contains

  function BaseMenuBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseMenuBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseMenuBehavior)
      jresult => object
    end select
  end function

  function BaseMenuBehavior_jstatic_instance() result(jresult)
    class(BaseMenuBehavior), pointer :: jresult
    if (.not. BaseMenuBehavior_jset_instance) then
      BaseMenuBehavior_jset_instance = .true.
      BaseMenuBehavior_jcell_instance => BaseMenuBehavior_jnew_0()
    end if
    jresult => BaseMenuBehavior_jcell_instance
  end function

  subroutine BaseMenuBehavior_jsetstatic_instance(jvalue)
    class(BaseMenuBehavior), target, optional :: jvalue
    BaseMenuBehavior_jset_instance = .true.
    if (present(jvalue)) then
      BaseMenuBehavior_jcell_instance => jvalue
    else
      BaseMenuBehavior_jcell_instance => null()
    end if
  end subroutine

  function BaseMenuBehavior_jnew_0() result(this)
    class(BaseMenuBehavior), pointer :: this
    allocate(this)
    this%jclass = 'BaseMenuBehavior'
  end function

  recursive function BaseMenuBehavior_jm_getInstance_0() result(jresult)
    class(BaseMenuBehavior), pointer :: jresult
        jresult => BaseMenuBehavior_jstatic_instance()
        return
  end function

  recursive subroutine BaseMenuBehavior_jm_onDisplayChangeEvent_2(this, j_allBinaryGameCanvas, j_displayChangeEvent)
    class(BaseMenuBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
    continue
  end subroutine

  recursive subroutine BaseMenuBehavior_jm_initSpecialPaint_1(this, j_allBinaryGameCanvas)
    class(BaseMenuBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_setNonBotPaintableP_1(NullPaintable_jm_getInstance_0())
  end subroutine

  recursive subroutine BaseMenuBehavior_jm_initMenu_1(this, j_allBinaryGameCanvas)
    class(BaseMenuBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    continue
  end subroutine

  recursive subroutine BaseMenuBehavior_jm_updateMenu_1(this, j_allBinaryGameCanvas)
    class(BaseMenuBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    continue
  end subroutine

  recursive subroutine BaseMenuBehavior_jm_popupMenu_1(this, j_allBinaryGameCanvas)
    class(BaseMenuBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    continue
  end subroutine

  recursive subroutine BaseMenuBehavior_jm_closeMenu_1(this, j_allBinaryGameCanvas)
    class(BaseMenuBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    continue
  end subroutine
end module BaseMenuBehavior_m

