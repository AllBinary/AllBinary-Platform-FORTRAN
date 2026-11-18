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
module VectorRotationGenerator_m
  use JR_m
  use PointFactory_m
  use BasicGraphicsPipeline_m
  use NullUtil_m
  use LogUtil_m
  use Angle_m
  use AngleFactory_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListS_m
  use VectorInfo_m
  use VectorAnimationUtil_m
  implicit none

  type, extends(JObject) :: VectorRotationGenerator
    class(LogUtil), pointer :: f_logUtil => null()
    class(VectorAnimationUtil), pointer :: f_vectorAnimationUtil => null()
    class(AngleFactory), pointer :: f_angleFactory => null()
  contains
    procedure :: jm_getInstance_1 => VectorRotationGenerator_jm_getInstance_1
    procedure :: jm_getInstanceFrames_4 => VectorRotationGenerator_jm_getInstanceFrames_4
    procedure :: jm_getListAtAngle_4 => VectorRotationGenerator_jm_getListAtAngle_4
  end type

  class(VectorRotationGenerator), pointer, save :: VectorRotationGenerator_jcell_instance => null()
  logical, save :: VectorRotationGenerator_jset_instance = .false.

contains

  function VectorRotationGenerator_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorRotationGenerator), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorRotationGenerator)
      jresult => object
    end select
  end function

  function VectorRotationGenerator_jstatic_instance() result(jresult)
    class(VectorRotationGenerator), pointer :: jresult
    if (.not. VectorRotationGenerator_jset_instance) then
      VectorRotationGenerator_jset_instance = .true.
      VectorRotationGenerator_jcell_instance => VectorRotationGenerator_jnew_0()
    end if
    jresult => VectorRotationGenerator_jcell_instance
  end function

  subroutine VectorRotationGenerator_jsetstatic_instance(jvalue)
    class(VectorRotationGenerator), target, optional :: jvalue
    VectorRotationGenerator_jset_instance = .true.
    if (present(jvalue)) then
      VectorRotationGenerator_jcell_instance => jvalue
    else
      VectorRotationGenerator_jcell_instance => null()
    end if
  end subroutine

  recursive function VectorRotationGenerator_jnew_0() result(this)
    class(VectorRotationGenerator), pointer :: this
    allocate(this)
    this%jclass = 'VectorRotationGenerator'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_vectorAnimationUtil => VectorAnimationUtil_jm_getInstance_0()
    this%f_angleFactory => AngleFactory_jm_getInstance_0()
        continue
  end function

  recursive function VectorRotationGenerator_jm_getInstance_0() result(jresult)
    class(VectorRotationGenerator), pointer :: jresult
        jresult => VectorRotationGenerator_jstatic_instance()
        return
  end function

  recursive function VectorRotationGenerator_jm_getInstance_1(this, j_vectorRotationInfo) result(jresult)
    class(VectorRotationGenerator), target :: this
    class(VectorInfo), target, optional :: j_vectorRotationInfo
    integer(4), allocatable :: jresult(:,:,:)
        jresult = this%jm_getInstanceFrames_4(j_vectorRotationInfo%jm_getWidth_0(), j_vectorRotationInfo%jm_getHeight_0(), j_vectorRotationInfo%jm_getPoints_0(), j_vectorRotationInfo%jm_getTotalFrames_0())
        return
  end function

  recursive function VectorRotationGenerator_jm_getInstanceFrames_4(this, j_width, j_height, j_points, j_frames) result(jresult)
    class(VectorRotationGenerator), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4) :: j_points(:,:)
    integer(4), value :: j_frames
    integer(4), allocatable :: jresult(:,:,:)
    integer(4) :: j_totalAngle
    integer(4) :: j_angleIncrement
    class(BasicArrayList), pointer :: j_pointsBasicArrayList
    class(BasicArrayList), pointer :: j_pointBasicArrayList
    class(PointFactory), pointer :: j_pointFactory
    integer(4) :: j_size
    integer(4) :: j_index
    integer(4), allocatable :: j_newPoints(:,:,:)
    class(CommonStrings), pointer :: j_commonStrings
    class(NullUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_totalAngle = this%f_angleFactory%f_TOTAL_ANGLE
            j_angleIncrement = (j_totalAngle / j_frames)
            j_pointsBasicArrayList => BasicArrayListS_jnew_1((j_totalAngle / j_angleIncrement))
            j_pointBasicArrayList => BasicArrayListS_jnew_1(size(j_points, 1))
            j_pointFactory => PointFactory_jm_getInstance_0()
            j_size = size(j_points, 1)
            j_index = 0
            do while ((j_index < j_size))
                jdiscardBoolean = j_pointBasicArrayList%jm_add_1(j_pointFactory%jm_createXY_2(j_points((j_index) + 1, (0) + 1), j_points((j_index) + 1, (1) + 1)))
                j_index = j_index + 1
            end do
            j_index = 0
            do while ((j_index < j_totalAngle))
                jdiscardBoolean = j_pointsBasicArrayList%jm_add_1(this%jm_getListAtAngle_4(j_width, j_height, j_pointBasicArrayList, this%f_angleFactory%jm_getAt_1(j_index)))
                j_index = (j_index + j_angleIncrement)
            end do
            j_newPoints = this%f_vectorAnimationUtil%jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2(j_pointsBasicArrayList, j_pointBasicArrayList%jm_size_0())
            jresult = j_newPoints
            return
  end function

  recursive function VectorRotationGenerator_jm_getListAtAngle_4(this, j_width, j_height, j_pointBasicArrayList, j_angle) result(jresult)
    class(VectorRotationGenerator), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(BasicArrayList), target, optional :: j_pointBasicArrayList
    class(Angle), target, optional :: j_angle
    class(BasicArrayList), pointer :: jresult
    class(BasicGraphicsPipeline), pointer :: j_graphicsPipe
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_graphicsPipe => BasicGraphicsPipeline_jnew_1(j_pointBasicArrayList)
        call j_graphicsPipe%jm_createMatrix_0()
        call j_graphicsPipe%jm_translate_2((-(shifta(j_width, iand(1, 31)))), (-(shifta(j_height, iand(1, 31)))))
        call j_graphicsPipe%jm_rotateToAngle_1(j_angle)
        call j_graphicsPipe%jm_translate_2((shifta(j_width, iand(1, 31))), (shifta(j_height, iand(1, 31))))
        jresult => j_graphicsPipe%jm_getMatrix_0()
        return
  end function
end module VectorRotationGenerator_m

