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
! package org.allbinary.math
module DistanceUtil_m
  use JR_m
  use MathUtil_m
  implicit none

  type, extends(JObject) :: DistanceUtil
    class(MathUtil), pointer :: f_mathUtil => null()
  contains
    procedure :: jm_getDistance_4 => DistanceUtil_jm_getDistance_4
  end type

  class(DistanceUtil), pointer, save :: DistanceUtil_jcell_instance => null()
  logical, save :: DistanceUtil_jset_instance = .false.

contains

  function DistanceUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DistanceUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DistanceUtil)
      jresult => object
    end select
  end function

  function DistanceUtil_jstatic_instance() result(jresult)
    class(DistanceUtil), pointer :: jresult
    if (.not. DistanceUtil_jset_instance) then
      DistanceUtil_jset_instance = .true.
      DistanceUtil_jcell_instance => DistanceUtil_jnew_0()
    end if
    jresult => DistanceUtil_jcell_instance
  end function

  function DistanceUtil_jnew_0() result(this)
    class(DistanceUtil), pointer :: this
    allocate(this)
    this%jclass = 'DistanceUtil'
    this%f_mathUtil => MathUtil_jm_getInstance_0()
  end function

  recursive function DistanceUtil_jm_getInstance_0() result(jresult)
    class(DistanceUtil), pointer :: jresult
        jresult => DistanceUtil_jstatic_instance()
        return
  end function

  recursive function DistanceUtil_jm_getDistance_4(this, j_x1, j_y1, j_x2, j_y2) result(jresult)
    class(DistanceUtil), target :: this
    integer(4), value :: j_x1
    integer(4), value :: j_y1
    integer(4), value :: j_x2
    integer(4), value :: j_y2
    integer(4) :: jresult
    integer(4) :: j_dx
    integer(4) :: j_dy
        j_dx = (j_x1 - j_x2)
        j_dy = (j_y1 - j_y2)
        jresult = this%f_mathUtil%jm_sqrt_1((((j_dx * j_dx)) + ((j_dy * j_dy))))
        return
  end function
end module DistanceUtil_m

