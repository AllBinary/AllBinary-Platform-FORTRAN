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
! package org.allbinary.graphics.threed
module RatioProcessor_m
  use JR_m
  implicit none

  type, extends(JObject) :: RatioProcessor
  contains
    procedure :: jm_setCustom_3 => RatioProcessor_jm_setCustom_3
  end type


contains

  function RatioProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RatioProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RatioProcessor)
      jresult => object
    end select
  end function

  function RatioProcessor_jnew_0() result(this)
    class(RatioProcessor), pointer :: this
    allocate(this)
    this%jclass = 'RatioProcessor'
  end function

  recursive subroutine RatioProcessor_jm_setCustom_3(this, j_width, j_height, j_ratio)
    class(RatioProcessor), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
    real(4), value :: j_ratio
    continue
  end subroutine
end module RatioProcessor_m

