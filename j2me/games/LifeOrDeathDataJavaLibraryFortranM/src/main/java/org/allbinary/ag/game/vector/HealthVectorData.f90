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
! package org.allbinary.ag.game.vector
module HealthVectorData_m
  use JR_m
  implicit none

  type, extends(JObject) :: HealthVectorData
  end type

  integer(4), allocatable, save :: HealthVectorData_jcell_points(:,:,:)
  logical, save :: HealthVectorData_jset_points = .false.

contains

  function HealthVectorData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealthVectorData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealthVectorData)
      jresult => object
    end select
  end function

  function HealthVectorData_jstatic_points() result(jresult)
    integer(4), allocatable :: jresult(:,:,:)
    if (.not. HealthVectorData_jset_points) then
      HealthVectorData_jset_points = .true.
      HealthVectorData_jcell_points = reshape([integer(4) :: [integer(4) :: 2, 1], [integer(4) :: 3, 2], [integer(4) :: 3, 2], [integer(4) :: 4, 1], [integer(4) :: 4, 1], [integer(4) :: 5, 1], [integer(4) :: 5, 1], [integer(4) :: 6, 2], [integer(4) :: 6, 2], [integer(4) :: 6, 3], [integer(4) :: 6, 3], [integer(4) :: 3, 6], [integer(4) :: 3, 6], [integer(4) :: 0, 3], [integer(4) :: 0, 3], [integer(4) :: 0, 2], [integer(4) :: 0, 2], [integer(4) :: 1, 1], [integer(4) :: 1, 1], [integer(4) :: 2, 1], [integer(4) :: 1000, 1000]], [1, 21], order=[2, 1])
    end if
    jresult = HealthVectorData_jcell_points
  end function

  subroutine HealthVectorData_jsetstatic_points(jvalue)
    integer(4) :: jvalue(:,:,:)
    HealthVectorData_jset_points = .true.
    HealthVectorData_jcell_points = jvalue
  end subroutine

  function HealthVectorData_jnew_0() result(this)
    class(HealthVectorData), pointer :: this
    allocate(this)
    this%jclass = 'HealthVectorData'
  end function
end module HealthVectorData_m

