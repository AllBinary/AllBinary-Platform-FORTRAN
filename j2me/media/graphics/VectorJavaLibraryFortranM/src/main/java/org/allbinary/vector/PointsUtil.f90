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
! package org.allbinary.vector
module PointsUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: PointsUtil
  contains
    procedure :: jm_adjustXY_3 => PointsUtil_jm_adjustXY_3
    procedure :: jm_adjust_2 => PointsUtil_jm_adjust_2
    procedure :: jm_adjust_3 => PointsUtil_jm_adjust_3
  end type

  class(PointsUtil), pointer, save :: PointsUtil_jcell_instance => null()
  logical, save :: PointsUtil_jset_instance = .false.

contains

  function PointsUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PointsUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PointsUtil)
      jresult => object
    end select
  end function

  function PointsUtil_jstatic_instance() result(jresult)
    class(PointsUtil), pointer :: jresult
    if (.not. PointsUtil_jset_instance) then
      PointsUtil_jset_instance = .true.
      PointsUtil_jcell_instance => PointsUtil_jnew_0()
    end if
    jresult => PointsUtil_jcell_instance
  end function

  subroutine PointsUtil_jsetstatic_instance(jvalue)
    class(PointsUtil), target, optional :: jvalue
    PointsUtil_jset_instance = .true.
    if (present(jvalue)) then
      PointsUtil_jcell_instance => jvalue
    else
      PointsUtil_jcell_instance => null()
    end if
  end subroutine

  function PointsUtil_jnew_0() result(this)
    class(PointsUtil), pointer :: this
    allocate(this)
    this%jclass = 'PointsUtil'
  end function

  recursive function PointsUtil_jm_getInstance_0() result(jresult)
    class(PointsUtil), pointer :: jresult
        jresult => PointsUtil_jstatic_instance()
        return
  end function

  recursive function PointsUtil_jm_adjustXY_3(this, j_points, j_x, j_y) result(jresult)
    class(PointsUtil), target :: this
    integer(4) :: j_points(:,:,:)
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), allocatable :: jresult(:,:,:)
    integer(4) :: j_size
    integer(4), allocatable :: j_newPoints(:,:,:)
    integer(4) :: j_size2
    integer(4) :: j_index2
    integer(4) :: j_index
        j_size = size(j_points, 1)
        j_newPoints = JR_newIntArray3(j_size, 0, 0)
        j_index = 0
        do while ((j_index < j_size))
            j_size2 = size(j_points((j_index) + 1, :), 1)
            j_newPoints((j_index) + 1, :) = JR_newIntArray2(j_size2, 2)
            j_index2 = 0
            do while ((j_index2 < j_size2))
                if ((j_points((j_index) + 1, (j_index2) + 1)((0) + 1) /= 1000)) then
                    j_newPoints((j_index) + 1, (j_index2) + 1)((0) + 1) = (j_points((j_index) + 1, (j_index2) + 1)((0) + 1) + j_x)
                    j_newPoints((j_index) + 1, (j_index2) + 1)((1) + 1) = (j_points((j_index) + 1, (j_index2) + 1)((1) + 1) + j_y)
                else
                    j_newPoints((j_index) + 1, (j_index2) + 1)((0) + 1) = 1000
                    j_newPoints((j_index) + 1, (j_index2) + 1)((1) + 1) = 1000
                end if
                j_index2 = j_index2 + 1
            end do
            j_index = j_index + 1
        end do
        jresult = j_newPoints
        return
  end function

  recursive function PointsUtil_jm_adjust_2(this, j_points, j_both) result(jresult)
    class(PointsUtil), target :: this
    integer(4) :: j_points(:,:)
    integer(4), value :: j_both
    integer(4), allocatable :: jresult(:,:)
        jresult = this%jm_adjust_3(j_points, j_both, j_both)
        return
  end function

  recursive function PointsUtil_jm_adjust_3(this, j_points, j_x, j_y) result(jresult)
    class(PointsUtil), target :: this
    integer(4) :: j_points(:,:)
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), allocatable :: jresult(:,:)
    integer(4), allocatable :: j_newPoints(:,:)
    integer(4) :: j_index2
        j_newPoints = JR_newIntArray2(size(j_points, 1), 2)
        j_index2 = 0
        do while ((j_index2 < size(j_points, 1)))
            if ((j_points((j_index2) + 1, (0) + 1) /= 1000)) then
                j_newPoints((j_index2) + 1, (0) + 1) = (j_points((j_index2) + 1, (0) + 1) + j_x)
                j_newPoints((j_index2) + 1, (1) + 1) = (j_points((j_index2) + 1, (1) + 1) + j_y)
            else
                j_newPoints((j_index2) + 1, (0) + 1) = 1000
                j_newPoints((j_index2) + 1, (1) + 1) = 1000
            end if
            j_index2 = j_index2 + 1
        end do
        jresult = j_newPoints
        return
  end function
end module PointsUtil_m

