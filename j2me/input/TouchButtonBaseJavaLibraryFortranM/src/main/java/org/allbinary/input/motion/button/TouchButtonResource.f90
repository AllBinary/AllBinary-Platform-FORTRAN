! 
! To change this license header, choose License Headers in Project Properties. 
! To change this template file, choose Tools | Templates 
! and open the template in the editor.  
! Generated Code Do Not Modify
! package org.allbinary.input.motion.button
module TouchButtonResource_m
  use JR_m
  implicit none

  type, extends(JObject) :: TouchButtonResource
    character(len=:), allocatable :: f_RESOURCE
    character(len=:), allocatable :: f_HINT
  end type


contains

  function TouchButtonResource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonResource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonResource)
      jresult => object
    end select
  end function

  recursive function TouchButtonResource_jnew_2(j_resource, j_hint) result(this)
    character(len=*), intent(in) :: j_resource
    character(len=*), intent(in) :: j_hint
    class(TouchButtonResource), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonResource'
    this%f_RESOURCE = ''
    this%f_HINT = ''
    
    
        this%f_RESOURCE = j_resource
        this%f_HINT = j_hint
  end function
end module TouchButtonResource_m

