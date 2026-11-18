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
! package org.allbinary.system
module Memory_m
  use JR_m
  use StringMaker_m
  use Runtime_m
  implicit none

  type, extends(JObject) :: Memory
  end type


contains

  function Memory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Memory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Memory)
      jresult => object
    end select
  end function

  function Memory_jnew_0() result(this)
    class(Memory), pointer :: this
    allocate(this)
    this%jclass = 'Memory'
  end function

  recursive function Memory_jm_getInfo_0() result(jresult)
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(Runtime), pointer :: jtemp1
    class(Runtime), pointer :: jtemp2
    class(Runtime), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('Memory: Free: ')
        jtemp1 => Runtime_jm_getRuntime_0()
        jdiscardRef => j_stringBuffer%jm_appendlong_1(jtemp1%jm_freeMemory_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' Max: ')
        jtemp2 => Runtime_jm_getRuntime_0()
        jdiscardRef => j_stringBuffer%jm_appendlong_1(jtemp2%jm_maxMemory_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' Total: ')
        jtemp3 => Runtime_jm_getRuntime_0()
        jdiscardRef => j_stringBuffer%jm_appendlong_1(jtemp3%jm_totalMemory_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module Memory_m

