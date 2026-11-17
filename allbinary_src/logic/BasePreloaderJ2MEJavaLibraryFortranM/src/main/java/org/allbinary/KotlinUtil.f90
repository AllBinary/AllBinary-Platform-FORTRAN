! Generated Code Do Not Modify
! package org.allbinary
module KotlinUtil_m
  use JR_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: KotlinUtil
  end type


contains

  function KotlinUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(KotlinUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (KotlinUtil)
      jresult => object
    end select
  end function

  function KotlinUtil_jnew_0() result(this)
    class(KotlinUtil), pointer :: this
    allocate(this)
    this%jclass = 'KotlinUtil'
  end function

  recursive function KotlinUtil_jm_isKotlin_0() result(jresult)
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function KotlinUtil_jm_getShortName_0() result(jresult)
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_EMPTY_STRING
        return
  end function
end module KotlinUtil_m

