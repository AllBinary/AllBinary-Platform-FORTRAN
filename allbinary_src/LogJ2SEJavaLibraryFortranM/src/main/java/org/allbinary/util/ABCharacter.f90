! 
! AllBinary Open License Version 1 
! Copyright (c) 2026 AllBinary 
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
! package org.allbinary.util
module ABCharacter_m
  use JR_m
  use Character_m
  implicit none

  type, extends(JObject) :: ABCharacter
  end type


contains

  function ABCharacter_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABCharacter), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABCharacter)
      jresult => object
    end select
  end function

  function ABCharacter_jnew_0() result(this)
    class(ABCharacter), pointer :: this
    allocate(this)
    this%jclass = 'ABCharacter'
  end function

  recursive function ABCharacter_jm_toString_1(j_ch) result(jresult)
    integer(4), value :: j_ch
    character(len=:), allocatable :: jresult
        jresult = JR_charString(j_ch)
        return
  end function
end module ABCharacter_m

