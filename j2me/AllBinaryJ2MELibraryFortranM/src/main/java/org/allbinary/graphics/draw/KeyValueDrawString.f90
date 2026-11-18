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
! package org.allbinary.graphics.draw
module KeyValueDrawString_m
  use JR_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use StringUtil_m
  implicit none

  type, extends(UpdateMyFontInterface) :: KeyValueDrawString
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    character(len=:), allocatable :: f_LABEL
    integer(4) :: f_labelX = 0
    integer(4) :: f_valueX = 0
    character(len=:), allocatable :: f_value
  contains
    procedure :: jm_updateMeasurement_1 => KeyValueDrawString_jm_updateMeasurement_1
    procedure :: jm_paint_2 => KeyValueDrawString_jm_paint_2
    procedure :: jm_update_1 => KeyValueDrawString_jm_update_1
  end type


contains

  function KeyValueDrawString_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(KeyValueDrawString), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (KeyValueDrawString)
      jresult => object
    end select
  end function

  recursive function KeyValueDrawString_jnew_2(j_label, j_x) result(this)
    character(len=*), intent(in) :: j_label
    integer(4), value :: j_x
    class(KeyValueDrawString), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'KeyValueDrawString'
    this%f_LABEL = ''
    this%f_value = ''
    this%f_myFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    
    
    
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_value = jtemp1%f_EMPTY_STRING
        this%f_LABEL = j_label
        this%f_labelX = j_x
  end function

  recursive subroutine KeyValueDrawString_jm_updateMeasurement_1(this, j_graphics)
    class(KeyValueDrawString), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_labelWidth
    class(JObject), pointer :: jtemp2
        jtemp2 => j_graphics%jm_getFont_0()
        j_labelWidth = (jtemp2%jm_stringWidth_1(this%f_LABEL) - len(this%f_LABEL))
        this%f_valueX = (j_labelWidth + this%f_labelX)
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine KeyValueDrawString_jm_paint_2(this, j_graphics, j_y)
    class(KeyValueDrawString), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call j_graphics%jm_drawString_4(this%f_LABEL, this%f_labelX, j_y, 0)
        call j_graphics%jm_drawString_4(this%f_value, this%f_valueX, j_y, 0)
  end subroutine

  recursive subroutine KeyValueDrawString_jm_update_1(this, j_value)
    class(KeyValueDrawString), target :: this
    character(len=*), intent(in) :: j_value
        this%f_value = j_value
  end subroutine
end module KeyValueDrawString_m

