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
! package org.allbinary.logic.system.hardware.components
module Component_m
  use JR_m
  implicit none

  type, extends(JObject) :: Component
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_toString_0 => Component_jm_toString_0
  end type


contains

  function Component_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Component), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Component)
      jresult => object
    end select
  end function

  recursive function Component_jnew_1(j_componentName) result(this)
    character(len=*), intent(in) :: j_componentName
    class(Component), pointer :: this
    allocate(this)
    this%jclass = 'Component'
    this%f_name = ''
    
        this%f_name = j_componentName
  end function

  recursive function Component_jm_toString_0(this) result(jresult)
    class(Component), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module Component_m

