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
! package org.allbinary.game.ag.vector
module MineVectorData_m
  use JR_m
  implicit none

  type, extends(JObject) :: MineVectorData
  end type

  integer(4), allocatable, save :: MineVectorData_jcell_points(:,:,:)
  logical, save :: MineVectorData_jset_points = .false.

contains

  function MineVectorData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MineVectorData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MineVectorData)
      jresult => object
    end select
  end function

  function MineVectorData_jstatic_points() result(jresult)
    integer(4), allocatable :: jresult(:,:,:)
    if (.not. MineVectorData_jset_points) then
      MineVectorData_jset_points = .true.
      MineVectorData_jcell_points = reshape([integer(4) :: [integer(4) :: 10, 5], [integer(4) :: 2, 6], [integer(4) :: 1000, 1000], [integer(4) :: 2, 2], [integer(4) :: 10, 9], [integer(4) :: 1000, 1000], [integer(4) :: 10, 2], [integer(4) :: 2, 9], [integer(4) :: 1000, 1000], [integer(4) :: 2, 5], [integer(4) :: 10, 6], [integer(4) :: 1000, 1000], [integer(4) :: 7, 9], [integer(4) :: 5, 2], [integer(4) :: 1000, 1000], [integer(4) :: 7, 2], [integer(4) :: 5, 9], [integer(4) :: 1000, 1000]], [1, 18], order=[2, 1])
    end if
    jresult = MineVectorData_jcell_points
  end function

  subroutine MineVectorData_jsetstatic_points(jvalue)
    integer(4) :: jvalue(:,:,:)
    MineVectorData_jset_points = .true.
    MineVectorData_jcell_points = jvalue
  end subroutine

  recursive function MineVectorData_jnew_0() result(this)
    class(MineVectorData), pointer :: this
    allocate(this)
    this%jclass = 'MineVectorData'
        continue
  end function
end module MineVectorData_m

