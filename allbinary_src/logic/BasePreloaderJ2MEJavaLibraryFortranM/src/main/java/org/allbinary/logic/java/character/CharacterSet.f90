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
! package org.allbinary.logic.java.character
module CharacterSet_m
  use JR_m
  implicit none

  type, extends(JObject) :: CharacterSet
  contains
    procedure :: jm_toString_0 => CharacterSet_jm_toString_0
  end type


contains

  function CharacterSet_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CharacterSet), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CharacterSet)
      jresult => object
    end select
  end function

  recursive function CharacterSet_jnew_0() result(this)
    class(CharacterSet), pointer :: this
    allocate(this)
    this%jclass = 'CharacterSet'
        continue
  end function

  recursive function CharacterSet_jm_toString_0(this) result(jresult)
    class(CharacterSet), target :: this
    character(len=:), allocatable :: jresult
        jresult = 'Default Character Set: Empty Implementation'
        return
  end function
end module CharacterSet_m

