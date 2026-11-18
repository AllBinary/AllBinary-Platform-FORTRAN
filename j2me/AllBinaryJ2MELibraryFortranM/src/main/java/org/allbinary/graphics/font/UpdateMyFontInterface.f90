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
! package org.allbinary.graphics.font
module UpdateMyFontInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: UpdateMyFontInterface
  contains
    procedure :: jm_updateMeasurement_1 => UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function UpdateMyFontInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpdateMyFontInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpdateMyFontInterface)
      jresult => object
    end select
  end function

  function UpdateMyFontInterface_jnew_0() result(this)
    class(UpdateMyFontInterface), pointer :: this
    allocate(this)
    this%jclass = 'UpdateMyFontInterface'
  end function

  recursive subroutine UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    error stop 'AbstractMethodError: UpdateMyFontInterface.updateMeasurement'
  end subroutine
end module UpdateMyFontInterface_m

