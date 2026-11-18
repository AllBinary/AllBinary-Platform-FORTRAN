! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
module TextInterface_m
  use JR_m
  use TextChangeListener_m
  implicit none

  type, extends(JObject) :: TextInterface
  contains
    procedure :: jm_setTextWithOnMeasure_2 => TextInterface_jm_setTextWithOnMeasure_2
    procedure :: jm_getText_0 => TextInterface_jm_getText_0
    procedure :: jm_setText_1 => TextInterface_jm_setText_1
    procedure :: jm_getFontHeight_0 => TextInterface_jm_getFontHeight_0
    procedure :: jm_getWidth_0 => TextInterface_jm_getWidth_0
  end type


contains

  function TextInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TextInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TextInterface)
      jresult => object
    end select
  end function

  function TextInterface_jnew_0() result(this)
    class(TextInterface), pointer :: this
    allocate(this)
    this%jclass = 'TextInterface'
  end function

  recursive subroutine TextInterface_jm_setTextWithOnMeasure_2(this, j_text, j_textChangeListener)
    class(TextInterface), target :: this
    character(len=*), intent(in) :: j_text
    class(TextChangeListener), target, optional :: j_textChangeListener
    error stop 'AbstractMethodError: TextInterface.setTextWithOnMeasure'
  end subroutine

  recursive function TextInterface_jm_getText_0(this) result(jresult)
    class(TextInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: TextInterface.getText'
  end function

  recursive subroutine TextInterface_jm_setText_1(this, j_text)
    class(TextInterface), target :: this
    character(len=*), intent(in) :: j_text
    error stop 'AbstractMethodError: TextInterface.setText'
  end subroutine

  recursive function TextInterface_jm_getFontHeight_0(this) result(jresult)
    class(TextInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: TextInterface.getFontHeight'
  end function

  recursive function TextInterface_jm_getWidth_0(this) result(jresult)
    class(TextInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: TextInterface.getWidth'
  end function
end module TextInterface_m

