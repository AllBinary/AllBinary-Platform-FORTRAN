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
! package org.allbinary.logic.java
module PrimitiveArrayToString_m
  use JR_m
  use StringMaker_m
  implicit none

  type, extends(JObject) :: PrimitiveArrayToString
  end type


contains

  function PrimitiveArrayToString_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PrimitiveArrayToString), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PrimitiveArrayToString)
      jresult => object
    end select
  end function

  function PrimitiveArrayToString_jnew_0() result(this)
    class(PrimitiveArrayToString), pointer :: this
    allocate(this)
    this%jclass = 'PrimitiveArrayToString'
  end function

  recursive function PrimitiveArrayToString_jm_toString_1(j_floats) result(jresult)
    real(4) :: j_floats(:)
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_index = 0
        do while ((j_index < size(j_floats, 1)))
            jdiscardRef => j_stringBuffer%jm_appendfloat_1(j_floats((j_index) + 1))
            j_index = j_index + 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module PrimitiveArrayToString_m

