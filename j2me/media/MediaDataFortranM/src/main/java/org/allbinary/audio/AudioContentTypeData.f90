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
! package org.allbinary.audio
module AudioContentTypeData_m
  use JR_m
  implicit none

  type, extends(JObject) :: AudioContentTypeData
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_getName_0 => AudioContentTypeData_jm_getName_0
  end type


contains

  function AudioContentTypeData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AudioContentTypeData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AudioContentTypeData)
      jresult => object
    end select
  end function

  recursive function AudioContentTypeData_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(AudioContentTypeData), pointer :: this
    allocate(this)
    this%jclass = 'AudioContentTypeData'
    this%f_name = ''
    
        this%f_name = j_name
  end function

  recursive function AudioContentTypeData_jm_getName_0(this) result(jresult)
    class(AudioContentTypeData), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module AudioContentTypeData_m

