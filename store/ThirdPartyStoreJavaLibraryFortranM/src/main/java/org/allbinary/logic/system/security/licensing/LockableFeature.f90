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
! package org.allbinary.logic.system.security.licensing
module LockableFeature_m
  use JR_m
  implicit none

  type, extends(JObject) :: LockableFeature
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_getName_0 => LockableFeature_jm_getName_0
  end type


contains

  function LockableFeature_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LockableFeature), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LockableFeature)
      jresult => object
    end select
  end function

  recursive function LockableFeature_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(LockableFeature), pointer :: this
    allocate(this)
    this%jclass = 'LockableFeature'
    this%f_name = ''
    
        this%f_name = j_name
  end function

  recursive function LockableFeature_jm_getName_0(this) result(jresult)
    class(LockableFeature), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module LockableFeature_m

