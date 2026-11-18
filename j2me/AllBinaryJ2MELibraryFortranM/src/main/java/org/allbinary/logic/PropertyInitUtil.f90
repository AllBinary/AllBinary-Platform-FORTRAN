! 
! AllBinary Open License Version 1 
! Copyright (c) 2026 AllBinary 
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
! package org.allbinary.logic
module PropertyInitUtil_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: PropertyInitUtil
  end type

  class(PropertyInitUtil), pointer, save :: PropertyInitUtil_jcell_instance => null()
  logical, save :: PropertyInitUtil_jset_instance = .false.

contains

  function PropertyInitUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PropertyInitUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PropertyInitUtil)
      jresult => object
    end select
  end function

  function PropertyInitUtil_jstatic_instance() result(jresult)
    class(PropertyInitUtil), pointer :: jresult
    if (.not. PropertyInitUtil_jset_instance) then
      PropertyInitUtil_jset_instance = .true.
      PropertyInitUtil_jcell_instance => PropertyInitUtil_jnew_0()
    end if
    jresult => PropertyInitUtil_jcell_instance
  end function

  subroutine PropertyInitUtil_jsetstatic_instance(jvalue)
    class(PropertyInitUtil), target, optional :: jvalue
    PropertyInitUtil_jset_instance = .true.
    if (present(jvalue)) then
      PropertyInitUtil_jcell_instance => jvalue
    else
      PropertyInitUtil_jcell_instance => null()
    end if
  end subroutine

  function PropertyInitUtil_jnew_0() result(this)
    class(PropertyInitUtil), pointer :: this
    allocate(this)
    this%jclass = 'PropertyInitUtil'
  end function

  recursive function PropertyInitUtil_jm_getInstance_1(j_value) result(jresult)
    integer(4), value :: j_value
    class(PropertyInitUtil), pointer :: jresult
    class(CommonStrings), pointer :: j_commonStrings
    class(LogUtil), pointer :: j_logUtil
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        j_logUtil => LogUtil_jm_getInstance_0()
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1('PropertyInitUtil: ')
        jtemp1 => jtemp2%jm_appendint_1(j_value)
        call j_logUtil%jm_putF_3(jtemp1%jm_toString_0(), j_logUtil, j_commonStrings%f_CONSTRUCTOR)
        jresult => PropertyInitUtil_jstatic_instance()
        return
  end function
end module PropertyInitUtil_m

