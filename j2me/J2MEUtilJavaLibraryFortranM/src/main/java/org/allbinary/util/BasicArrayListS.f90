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
! package org.allbinary.util
module BasicArrayListS_m
  use JR_m
  use NullUtil_m
  use StringMaker_m
  use BasicArrayList_m
  implicit none

  type, extends(BasicArrayList) :: BasicArrayListS
  end type


contains

  function BasicArrayListS_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicArrayListS), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicArrayListS)
      jresult => object
    end select
  end function

  recursive function BasicArrayListS_jnew_1(j_size) result(this)
    integer(4), value :: j_size
    class(BasicArrayListS), pointer :: this
    class(NullUtil), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    allocate(this)
    this%jclass = 'BasicArrayListS'
        jtemp1 => NullUtil_jm_getInstance_0()
        continue ! super()
        if ((j_size < 0)) then
            jtemp4 => StringMaker_jnew_0()
            jtemp3 => jtemp4%jm_append_1('Init Size Exception: ')
            jtemp2 => jtemp3%jm_appendint_1(j_size)
            error stop JR_toString(JR_newJObject('IllegalArgumentException'))
        end if
        this%f_objectArray = JR_newRefArray(j_size)
  end function
end module BasicArrayListS_m

function BasicArrayListS_jnew_1_jext(p1) result(this)
  use BasicArrayListS_m, only: JObject, BasicArrayListS_jnew_1
  implicit none
      integer(4), value :: p1
  class(JObject), pointer :: this
  this => BasicArrayListS_jnew_1(p1)
end function

