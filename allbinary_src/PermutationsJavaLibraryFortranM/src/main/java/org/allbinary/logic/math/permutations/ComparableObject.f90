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
! package org.allbinary.logic.math.permutations
module ComparableObject_m
  use JR_m
  use TsUtil_m
  implicit none

  type, extends(JObject) :: ComparableObject
  contains
    procedure :: jm_compareTo_1 => ComparableObject_jm_compareTo_1
  end type


contains

  function ComparableObject_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ComparableObject), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ComparableObject)
      jresult => object
    end select
  end function

  function ComparableObject_jnew_0() result(this)
    class(ComparableObject), pointer :: this
    allocate(this)
    this%jclass = 'ComparableObject'
  end function

  recursive function ComparableObject_jm_compareTo_1(this, j_anyType) result(jresult)
    class(ComparableObject), target :: this
    class(JObject), target, optional :: j_anyType
    integer(4) :: jresult
    class(TsUtil), pointer :: jtemp1
    class(TsUtil), pointer :: jtemp2
    class(TsUtil), pointer :: jtemp3
    class(TsUtil), pointer :: jtemp4
        jtemp1 => TsUtil_jm_getInstance_0()
        jtemp2 => TsUtil_jm_getInstance_0()
        if ((jtemp1%jm_hashCode_1(this) < jtemp2%jm_hashCode_1(j_anyType))) then
            jresult = (-1)
            return
        else if ((jtemp3%jm_hashCode_1(this) > jtemp4%jm_hashCode_1(j_anyType))) then
            jresult = 1
            return
        end if
        jresult = 0
        return
  end function
end module ComparableObject_m

