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
! package org.allbinary.logic.communication.log.config.type
module LogConfigType_m
  use JR_m
  implicit none

  type, extends(JObject) :: LogConfigType
    character(len=:), allocatable :: f_name
    character(len=:), allocatable :: f_description
  contains
    procedure :: jm_getName_0 => LogConfigType_jm_getName_0
    procedure :: jm_getDescription_0 => LogConfigType_jm_getDescription_0
    procedure :: jm_setName_1 => LogConfigType_jm_setName_1
    procedure :: jm_setDescription_1 => LogConfigType_jm_setDescription_1
  end type


contains

  function LogConfigType_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LogConfigType), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LogConfigType)
      jresult => object
    end select
  end function

  recursive function LogConfigType_jnew_2(j_name, j_description) result(this)
    character(len=*), intent(in) :: j_name
    character(len=*), intent(in) :: j_description
    class(LogConfigType), pointer :: this
    allocate(this)
    this%jclass = 'LogConfigType'
    this%f_name = ''
    this%f_description = ''
    
    
        this%f_name = j_name
        this%f_description = j_description
  end function

  recursive function LogConfigType_jm_getName_0(this) result(jresult)
    class(LogConfigType), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive function LogConfigType_jm_getDescription_0(this) result(jresult)
    class(LogConfigType), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_description
        return
  end function

  recursive subroutine LogConfigType_jm_setName_1(this, j_value)
    class(LogConfigType), target :: this
    character(len=*), intent(in) :: j_value
        this%f_name = j_value
  end subroutine

  recursive subroutine LogConfigType_jm_setDescription_1(this, j_value)
    class(LogConfigType), target :: this
    character(len=*), intent(in) :: j_value
        this%f_description = j_value
  end subroutine
end module LogConfigType_m

