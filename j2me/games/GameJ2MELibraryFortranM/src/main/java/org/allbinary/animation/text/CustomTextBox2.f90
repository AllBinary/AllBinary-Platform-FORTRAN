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
! package org.allbinary.animation.text
module CustomTextBox2_m
  use JR_m
  use BasicColor_m
  use CustomTextBox_m
  implicit none

  type, extends(CustomTextBox) :: CustomTextBox2
  end type


contains

  function CustomTextBox2_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CustomTextBox2), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CustomTextBox2)
      jresult => object
    end select
  end function

  recursive function CustomTextBox2_jnew_8(j_cmdListener, j_label, j_text, j_maxSize, j_constraints, j_font, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    class(CommandListener), target, optional :: j_cmdListener
    character(len=*), intent(in) :: j_label
    character(len=*), intent(in) :: j_text
    integer(4), value :: j_maxSize
    integer(4), value :: j_constraints
    class(Font), target, optional :: j_font
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(CustomTextBox2), pointer :: this
    class(ABTextFieldItem), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CustomTextBox2'
        continue ! super()
        jtemp1 => this%jm_getTextFieldItem_0()
        call jtemp1%jm_setFocus_1(.true.)
  end function
end module CustomTextBox2_m

