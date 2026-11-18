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
! package org.allbinary.animation
module VectorAnimationUtil_m
  use JR_m
  use GPoint_m
  use BasicArrayList_m
  implicit none

  type, extends(JObject) :: VectorAnimationUtil
  contains
    procedure :: jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2 => VectorAnimationUtil_jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2
    procedure :: jm_toAnimationArrayFromListOfPointList_1 => VectorAnimationUtil_jm_toAnimationArrayFromListOfPointList_1
    procedure :: jm_toFrameArrayFromPointBasicArrayList_1 => VectorAnimationUtil_jm_toFrameArrayFromPointBasicArrayList_1
  end type

  class(VectorAnimationUtil), pointer, save :: VectorAnimationUtil_jcell_instance => null()
  logical, save :: VectorAnimationUtil_jset_instance = .false.

contains

  function VectorAnimationUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorAnimationUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorAnimationUtil)
      jresult => object
    end select
  end function

  function VectorAnimationUtil_jstatic_instance() result(jresult)
    class(VectorAnimationUtil), pointer :: jresult
    if (.not. VectorAnimationUtil_jset_instance) then
      VectorAnimationUtil_jset_instance = .true.
      VectorAnimationUtil_jcell_instance => VectorAnimationUtil_jnew_0()
    end if
    jresult => VectorAnimationUtil_jcell_instance
  end function

  subroutine VectorAnimationUtil_jsetstatic_instance(jvalue)
    class(VectorAnimationUtil), target, optional :: jvalue
    VectorAnimationUtil_jset_instance = .true.
    if (present(jvalue)) then
      VectorAnimationUtil_jcell_instance => jvalue
    else
      VectorAnimationUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function VectorAnimationUtil_jnew_0() result(this)
    class(VectorAnimationUtil), pointer :: this
    allocate(this)
    this%jclass = 'VectorAnimationUtil'
        continue
  end function

  recursive function VectorAnimationUtil_jm_getInstance_0() result(jresult)
    class(VectorAnimationUtil), pointer :: jresult
        jresult => VectorAnimationUtil_jstatic_instance()
        return
  end function

  recursive function VectorAnimationUtil_jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2(this, j_vector, j_pointsPerFrame) result(jresult)
    class(VectorAnimationUtil), target :: this
    class(BasicArrayList), target, optional :: j_vector
    integer(4), value :: j_pointsPerFrame
    integer(4), allocatable :: jresult(:,:,:)
    integer(4) :: j_size
    integer(4), allocatable :: j_points(:,:,:)
    class(BasicArrayList), pointer :: j_nextBasicArrayList
    integer(4), allocatable :: j_framePoints(:,:)
    integer(4) :: j_pointIndex
    integer(4) :: j_index
        j_size = j_vector%jm_size_0()
        j_points = JR_newIntArray3(j_size, j_pointsPerFrame, 2)
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_nextBasicArrayList => BasicArrayList_jcast(j_vector%f_objectArray((j_index) + 1)%v)
            j_framePoints = this%jm_toFrameArrayFromPointBasicArrayList_1(j_nextBasicArrayList)
            j_pointIndex = 0
            do while ((j_pointIndex < size(j_framePoints, 1)))
                j_points((j_index) + 1, (j_pointIndex) + 1)((0) + 1) = j_framePoints((j_pointIndex) + 1, (0) + 1)
                j_points((j_index) + 1, (j_pointIndex) + 1)((1) + 1) = j_framePoints((j_pointIndex) + 1, (1) + 1)
                j_pointIndex = j_pointIndex + 1
            end do
            j_index = j_index + 1
        end do
        jresult = j_points
        return
  end function

  recursive function VectorAnimationUtil_jm_toAnimationArrayFromListOfPointList_1(this, j_vector) result(jresult)
    class(VectorAnimationUtil), target :: this
    class(BasicArrayList), target, optional :: j_vector
    integer(4), allocatable :: jresult(:,:,:)
    integer(4) :: j_size
    integer(4), allocatable :: j_points(:,:,:)
    class(BasicArrayList), pointer :: j_nextBasicArrayList
    integer(4), allocatable :: j_framePoints(:,:)
    integer(4) :: j_pointIndex
    integer(4) :: j_index
        j_size = j_vector%jm_size_0()
        j_points = JR_newIntArray3(j_size, 0, 0)
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_nextBasicArrayList => BasicArrayList_jcast(j_vector%f_objectArray((j_index) + 1)%v)
            j_framePoints = this%jm_toFrameArrayFromPointBasicArrayList_1(j_nextBasicArrayList)
            j_points((j_index) + 1, :) = JR_newIntArray2(size(j_framePoints, 1), 2)
            j_pointIndex = 0
            do while ((j_pointIndex < size(j_framePoints, 1)))
                j_points((j_index) + 1, (j_pointIndex) + 1)((0) + 1) = j_framePoints((j_pointIndex) + 1, (0) + 1)
                j_points((j_index) + 1, (j_pointIndex) + 1)((1) + 1) = j_framePoints((j_pointIndex) + 1, (1) + 1)
                j_pointIndex = j_pointIndex + 1
            end do
            j_index = j_index + 1
        end do
        jresult = j_points
        return
  end function

  recursive function VectorAnimationUtil_jm_toFrameArrayFromPointBasicArrayList_1(this, j_list) result(jresult)
    class(VectorAnimationUtil), target :: this
    class(BasicArrayList), target, optional :: j_list
    integer(4), allocatable :: jresult(:,:)
    integer(4), allocatable :: j_points(:,:)
    integer(4) :: j_size
    class(GPoint), pointer :: j_nextPoint
    integer(4) :: j_index
        j_points = JR_newIntArray2(j_list%jm_size_0(), 2)
        j_size = j_list%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_nextPoint => GPoint_jcast(j_list%f_objectArray((j_index) + 1)%v)
            j_points((j_index) + 1, (0) + 1) = j_nextPoint%jm_getX_0()
            j_points((j_index) + 1, (1) + 1) = j_nextPoint%jm_getY_0()
            j_index = j_index + 1
        end do
        jresult = j_points
        return
  end function
end module VectorAnimationUtil_m

