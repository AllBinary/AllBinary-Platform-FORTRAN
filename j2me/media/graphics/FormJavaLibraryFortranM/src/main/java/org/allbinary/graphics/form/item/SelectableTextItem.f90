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
! package org.allbinary.graphics.form.item
module SelectableTextItem_m
  use JR_m
  use BasicColor_m
  use ABTextItem_m
  use ABStringComponent_m
  implicit none

  type, extends(ABTextItem) :: SelectableTextItem
  contains
    procedure :: jm_isFocusable_0 => SelectableTextItem_jm_isFocusable_0
    procedure :: jm_paintXY_3 => SelectableTextItem_jm_paintXY_3
  end type


contains

  function SelectableTextItem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SelectableTextItem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SelectableTextItem)
      jresult => object
    end select
  end function

  recursive function SelectableTextItem_jnew_5(j_label, j_layout, j_altText, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    character(len=*), intent(in) :: j_label
    integer(4), value :: j_layout
    character(len=*), intent(in) :: j_altText
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(SelectableTextItem), pointer :: this
    allocate(this)
    this%jclass = 'SelectableTextItem'
        continue ! super()
  end function

  recursive function SelectableTextItem_jm_isFocusable_0(this) result(jresult)
    class(SelectableTextItem), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive subroutine SelectableTextItem_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(SelectableTextItem), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(ABStringComponent), pointer :: j_stringComponent
    class(BasicColor), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        j_stringComponent => this%jm_getLabelStringComponent_0()
        if (associated(j_stringComponent)) then
            jtemp1 => j_stringComponent%jm_getForegroundBasicColor_0()
            call j_graphics%jm_setColor_1(jtemp1%jm_intValue_0())
        end if
        call j_graphics%jm_drawString_4(this%jm_getLabel_0(), (j_x + 2), j_y, 0)
  end subroutine
end module SelectableTextItem_m

