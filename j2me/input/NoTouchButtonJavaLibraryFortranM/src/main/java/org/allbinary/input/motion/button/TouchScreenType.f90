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
! package org.allbinary.input.motion.button
module TouchScreenType_m
  use JR_m
  implicit none

  type, extends(JObject) :: TouchScreenType
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_getName_0 => TouchScreenType_jm_getName_0
    procedure :: jm_toString_0 => TouchScreenType_jm_toString_0
  end type


contains

  function TouchScreenType_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchScreenType), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchScreenType)
      jresult => object
    end select
  end function

  recursive function TouchScreenType_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(TouchScreenType), pointer :: this
    allocate(this)
    this%jclass = 'TouchScreenType'
    this%f_name = ''
    
        this%f_name = j_name
  end function

  recursive function TouchScreenType_jm_getName_0(this) result(jresult)
    class(TouchScreenType), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive function TouchScreenType_jm_toString_0(this) result(jresult)
    class(TouchScreenType), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%jm_getName_0()
        return
  end function
end module TouchScreenType_m

