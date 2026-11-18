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
! package org.allbinary.graphics.form
module FormType_m
  use JR_m
  implicit none

  type, extends(JObject) :: FormType
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_toString_0 => FormType_jm_toString_0
  end type


contains

  function FormType_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FormType), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FormType)
      jresult => object
    end select
  end function

  recursive function FormType_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(FormType), pointer :: this
    allocate(this)
    this%jclass = 'FormType'
    this%f_name = ''
    
        this%f_name = j_name
  end function

  recursive function FormType_jm_toString_0(this) result(jresult)
    class(FormType), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module FormType_m

