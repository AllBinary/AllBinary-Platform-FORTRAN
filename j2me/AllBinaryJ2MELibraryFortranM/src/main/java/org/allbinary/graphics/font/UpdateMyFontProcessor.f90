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
module UpdateMyFontProcessor_m
  use JR_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  implicit none

  type, extends(MyFontProcessor) :: UpdateMyFontProcessor
    class(UpdateMyFontInterface), pointer :: f_updateMeasurementProcessor => null()
  contains
    procedure :: jm_process_1 => UpdateMyFontProcessor_jm_process_1
  end type


contains

  function UpdateMyFontProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpdateMyFontProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpdateMyFontProcessor)
      jresult => object
    end select
  end function

  recursive function UpdateMyFontProcessor_jnew_1(j_keyValueDrawCharArray) result(this)
    class(UpdateMyFontInterface), target, optional :: j_keyValueDrawCharArray
    class(UpdateMyFontProcessor), pointer :: this
    allocate(this)
    this%jclass = 'UpdateMyFontProcessor'
    
        this%f_updateMeasurementProcessor => j_keyValueDrawCharArray
  end function

  recursive subroutine UpdateMyFontProcessor_jm_process_1(this, j_graphics)
    class(UpdateMyFontProcessor), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_updateMeasurementProcessor%jm_updateMeasurement_1(j_graphics)
  end subroutine
end module UpdateMyFontProcessor_m

