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
module VectorExplosionGenerator_m
  use JR_m
  use GPoint_m
  use PointFactory_m
  use RandomRotationFactory_m
  use RandomTranslation_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicArrayListS_m
  use VectorExplosionType_m
  use VectorAnimationUtil_m
  implicit none

  type, extends(JObject) :: VectorExplosionGenerator
    class(VectorExplosionType), pointer :: f_RANDOM => null()
    class(VectorExplosionType), pointer :: f_ROTATION => null()
    class(VectorAnimationUtil), pointer :: f_vectorAnimationUtil => null()
    class(RandomRotationFactory), pointer :: f_randomRotationFactory => null()
  contains
    procedure :: jm_createList_3 => VectorExplosionGenerator_jm_createList_3
    procedure :: jm_getInstance_3 => VectorExplosionGenerator_jm_getInstance_3
    procedure :: jm_getInstanceStartFrame_4 => VectorExplosionGenerator_jm_getInstanceStartFrame_4
    procedure :: jm_createListFromPoints_4 => VectorExplosionGenerator_jm_createListFromPoints_4
    procedure :: jm_createPointsBasicArrayList_1 => VectorExplosionGenerator_jm_createPointsBasicArrayList_1
  end type

  class(VectorExplosionGenerator), pointer, save :: VectorExplosionGenerator_jcell_instance => null()
  logical, save :: VectorExplosionGenerator_jset_instance = .false.

contains

  function VectorExplosionGenerator_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorExplosionGenerator), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorExplosionGenerator)
      jresult => object
    end select
  end function

  function VectorExplosionGenerator_jstatic_instance() result(jresult)
    class(VectorExplosionGenerator), pointer :: jresult
    if (.not. VectorExplosionGenerator_jset_instance) then
      VectorExplosionGenerator_jset_instance = .true.
      VectorExplosionGenerator_jcell_instance => VectorExplosionGenerator_jnew_0()
    end if
    jresult => VectorExplosionGenerator_jcell_instance
  end function

  subroutine VectorExplosionGenerator_jsetstatic_instance(jvalue)
    class(VectorExplosionGenerator), target, optional :: jvalue
    VectorExplosionGenerator_jset_instance = .true.
    if (present(jvalue)) then
      VectorExplosionGenerator_jcell_instance => jvalue
    else
      VectorExplosionGenerator_jcell_instance => null()
    end if
  end subroutine

  recursive function VectorExplosionGenerator_jnew_0() result(this)
    class(VectorExplosionGenerator), pointer :: this
    allocate(this)
    this%jclass = 'VectorExplosionGenerator'
    this%f_RANDOM => VectorExplosionType_jnew_0()
    this%f_ROTATION => VectorExplosionType_jnew_0()
    this%f_vectorAnimationUtil => VectorAnimationUtil_jm_getInstance_0()
    this%f_randomRotationFactory => RandomRotationFactory_jm_getInstance_0()
        continue
  end function

  recursive function VectorExplosionGenerator_jm_getInstance_0() result(jresult)
    class(VectorExplosionGenerator), pointer :: jresult
        jresult => VectorExplosionGenerator_jstatic_instance()
        return
  end function

  recursive function VectorExplosionGenerator_jm_createList_3(this, j_list, j_howMuch, j_type) result(jresult)
    class(VectorExplosionGenerator), target :: this
    class(BasicArrayList), target, optional :: j_list
    integer(4), value :: j_howMuch
    class(VectorExplosionType), target, optional :: j_type
    class(BasicArrayList), pointer :: jresult
    class(GPoint), pointer :: j_point
    integer(4) :: j_size
    integer(4), allocatable :: j_points(:,:)
    integer(4) :: j_index
        continue
        j_size = j_list%jm_size_0()
        j_points = JR_newIntArray2(j_size, 2)
        j_index = 0
        do while ((j_index < j_size))
            j_point => GPoint_jcast(j_list%f_objectArray((j_index) + 1)%v)
            j_points((j_index) + 1, (0) + 1) = j_point%jm_getX_0()
            j_points((j_index) + 1, (1) + 1) = j_point%jm_getY_0()
            j_index = j_index + 1
        end do
        jresult => this%jm_createListFromPoints_4(j_list, j_points, j_howMuch, j_type)
        return
  end function

  recursive function VectorExplosionGenerator_jm_getInstance_3(this, j_points, j_howMuch, j_type) result(jresult)
    class(VectorExplosionGenerator), target :: this
    integer(4) :: j_points(:,:)
    integer(4), value :: j_howMuch
    class(VectorExplosionType), target, optional :: j_type
    integer(4), allocatable :: jresult(:,:,:)
    class(BasicArrayList), pointer :: j_pointsBasicArrayList
    class(BasicArrayList), pointer :: j_tempBasicArrayList
    integer(4), allocatable :: j_newPoints(:,:,:)
        j_pointsBasicArrayList => this%jm_getInstanceStartFrame_4(j_points, j_howMuch, j_type, .true.)
        j_tempBasicArrayList => BasicArrayList_jcast(j_pointsBasicArrayList%f_objectArray((0) + 1)%v)
        j_newPoints = this%f_vectorAnimationUtil%jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2(j_pointsBasicArrayList, j_tempBasicArrayList%jm_size_0())
        jresult = j_newPoints
        return
  end function

  recursive function VectorExplosionGenerator_jm_getInstanceStartFrame_4(this, j_points, j_howMuch, j_type, j_startFrame) result(jresult)
    class(VectorExplosionGenerator), target :: this
    integer(4) :: j_points(:,:)
    integer(4), value :: j_howMuch
    class(VectorExplosionType), target, optional :: j_type
    logical, value :: j_startFrame
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_pointsBasicArrayList
    integer(4) :: j_frameIndex
    class(BasicArrayList), pointer :: j_tempBasicArrayList
    class(BasicArrayList), pointer :: j_pointBasicArrayList
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_pointsBasicArrayList => BasicArrayListS_jnew_1(j_howMuch)
            jdiscardBoolean = j_pointsBasicArrayList%jm_add_1(this%jm_createPointsBasicArrayList_1(j_points))
            j_frameIndex = 0
            continue
            continue
            do while ((j_frameIndex < j_howMuch))
                j_tempBasicArrayList => BasicArrayList_jcast(j_pointsBasicArrayList%f_objectArray((j_frameIndex) + 1)%v)
                j_pointBasicArrayList => this%jm_createListFromPoints_4(j_tempBasicArrayList, j_points, j_howMuch, j_type)
                jdiscardBoolean = j_pointsBasicArrayList%jm_add_1(j_pointBasicArrayList)
                j_frameIndex = j_frameIndex + 1
            end do
            if ((.not. j_startFrame)) then
                jdiscardRef => j_pointsBasicArrayList%jm_removeAt_1(0)
            end if
            jresult => j_pointsBasicArrayList
            return
  end function

  recursive function VectorExplosionGenerator_jm_createListFromPoints_4(this, j_tempBasicArrayList, j_points, j_howMuch, j_type) result(jresult)
    class(VectorExplosionGenerator), target :: this
    class(BasicArrayList), target, optional :: j_tempBasicArrayList
    integer(4) :: j_points(:,:)
    integer(4), value :: j_howMuch
    class(VectorExplosionType), target, optional :: j_type
    class(BasicArrayList), pointer :: jresult
    integer(4) :: j_index
    class(BasicArrayList), pointer :: j_pointBasicArrayList
    class(BasicArrayList), pointer :: j_sectionBasicArrayList
    integer(4) :: j_size
    integer(4) :: j_index2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = 0
        j_pointBasicArrayList => BasicArrayListD_jnew_0()
        continue
        do while ((j_index < size(j_points, 1)))
            j_sectionBasicArrayList => BasicArrayListD_jnew_0()
            do while ((j_points((j_index) + 1, (0) + 1) /= 1000))
                jdiscardBoolean = j_sectionBasicArrayList%jm_add_1(j_tempBasicArrayList%f_objectArray((j_index) + 1)%v)
                j_index = j_index + 1
                if ((j_index >= size(j_points, 1))) then
                    exit
                end if
            end do
            j_sectionBasicArrayList => RandomTranslation_jm_getInstance_2(j_sectionBasicArrayList, j_howMuch)
            if (JR_same(j_type, this%f_ROTATION)) then
                j_sectionBasicArrayList => this%f_randomRotationFactory%jm_getInstanceList_2(j_sectionBasicArrayList, j_howMuch)
            end if
            j_size = j_sectionBasicArrayList%jm_size_0()
            j_index2 = 0
            do while ((j_index2 < j_size))
                jdiscardBoolean = j_pointBasicArrayList%jm_add_1(j_sectionBasicArrayList%f_objectArray((j_index2) + 1)%v)
                j_index2 = j_index2 + 1
            end do
            if ((j_index >= size(j_points, 1))) then
                exit
            else if ((j_points((j_index) + 1, (0) + 1) == 1000)) then
                jdiscardBoolean = j_pointBasicArrayList%jm_add_1(j_tempBasicArrayList%f_objectArray((j_index) + 1)%v)
                j_index = j_index + 1
            end if
        end do
        jresult => j_pointBasicArrayList
        return
  end function

  recursive function VectorExplosionGenerator_jm_createPointsBasicArrayList_1(this, j_points) result(jresult)
    class(VectorExplosionGenerator), target :: this
    integer(4) :: j_points(:,:)
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_firstPointBasicArrayList
    class(PointFactory), pointer :: j_pointFactory
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((size(j_points, 1) == 0)) then
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        j_firstPointBasicArrayList => BasicArrayListS_jnew_1(size(j_points, 1))
        j_pointFactory => PointFactory_jm_getInstance_0()
        j_index = 0
        do while ((j_index < size(j_points, 1)))
            jdiscardBoolean = j_firstPointBasicArrayList%jm_add_1(j_pointFactory%jm_createXY_2(j_points((j_index) + 1, (0) + 1), j_points((j_index) + 1, (1) + 1)))
            j_index = j_index + 1
        end do
        jresult => j_firstPointBasicArrayList
        return
  end function
end module VectorExplosionGenerator_m

