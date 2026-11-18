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
module VectorMirrorGenerator_m
  use JR_m
  use PointFactory_m
  use BasicGraphicsPipeline_m
  use NullUtil_m
  use LogUtil_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListS_m
  use VectorAnimationUtil_m
  implicit none

  type, extends(JObject) :: VectorMirrorGenerator
    class(LogUtil), pointer :: f_logUtil => null()
    class(VectorAnimationUtil), pointer :: f_vectorAnimationUtil => null()
  contains
    procedure :: jm_getInstance_2 => VectorMirrorGenerator_jm_getInstance_2
    procedure :: jm_getInstance_2b => VectorMirrorGenerator_jm_getInstance_2b
  end type

  class(VectorMirrorGenerator), pointer, save :: VectorMirrorGenerator_jcell_instance => null()
  logical, save :: VectorMirrorGenerator_jset_instance = .false.

contains

  function VectorMirrorGenerator_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorMirrorGenerator), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorMirrorGenerator)
      jresult => object
    end select
  end function

  function VectorMirrorGenerator_jstatic_instance() result(jresult)
    class(VectorMirrorGenerator), pointer :: jresult
    if (.not. VectorMirrorGenerator_jset_instance) then
      VectorMirrorGenerator_jset_instance = .true.
      VectorMirrorGenerator_jcell_instance => VectorMirrorGenerator_jnew_0()
    end if
    jresult => VectorMirrorGenerator_jcell_instance
  end function

  subroutine VectorMirrorGenerator_jsetstatic_instance(jvalue)
    class(VectorMirrorGenerator), target, optional :: jvalue
    VectorMirrorGenerator_jset_instance = .true.
    if (present(jvalue)) then
      VectorMirrorGenerator_jcell_instance => jvalue
    else
      VectorMirrorGenerator_jcell_instance => null()
    end if
  end subroutine

  recursive function VectorMirrorGenerator_jnew_0() result(this)
    class(VectorMirrorGenerator), pointer :: this
    allocate(this)
    this%jclass = 'VectorMirrorGenerator'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_vectorAnimationUtil => VectorAnimationUtil_jm_getInstance_0()
        continue
  end function

  recursive function VectorMirrorGenerator_jm_getInstance_0() result(jresult)
    class(VectorMirrorGenerator), pointer :: jresult
        jresult => VectorMirrorGenerator_jstatic_instance()
        return
  end function

  recursive function VectorMirrorGenerator_jm_getInstance_2(this, j_points, j_width) result(jresult)
    class(VectorMirrorGenerator), target :: this
    integer(4) :: j_points(:,:,:)
    integer(4), value :: j_width
    integer(4), allocatable :: jresult(:,:,:)
    class(PointFactory), pointer :: j_pointFactory
    class(BasicArrayList), pointer :: j_pointBasicArrayList
    integer(4), allocatable :: j_nextPoints(:,:)
    integer(4) :: j_size2
    integer(4) :: j_size
    class(BasicArrayList), pointer :: j_pointsBasicArrayList
    integer(4) :: j_index
    integer(4) :: j_frame
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
            j_pointFactory => PointFactory_jm_getInstance_0()
            continue
            continue
            continue
            j_size = size(j_points, 1)
            j_pointsBasicArrayList => BasicArrayListS_jnew_1(j_size)
            j_frame = 0
            do while ((j_frame < j_size))
                j_nextPoints = j_points((j_frame) + 1, :)
                j_size2 = size(j_nextPoints, 1)
                j_pointBasicArrayList => BasicArrayListS_jnew_1(j_size2)
                j_index = 0
                do while ((j_index < j_size2))
                    jdiscardBoolean = j_pointBasicArrayList%jm_add_1(j_pointFactory%jm_createXY_2(j_nextPoints((j_index) + 1, (0) + 1), j_nextPoints((j_index) + 1, (1) + 1)))
                    j_index = j_index + 1
                end do
                jdiscardBoolean = j_pointsBasicArrayList%jm_add_1(j_pointBasicArrayList)
                j_frame = j_frame + 1
            end do
            j_index = 0
            do while ((j_index < size(j_points, 1)))
                jdiscardBoolean = j_pointsBasicArrayList%jm_add_1(this%jm_getInstance_2b(BasicArrayList_jcast(j_pointsBasicArrayList%f_objectArray((j_index) + 1)%v), j_width))
                j_index = j_index + 1
            end do
            j_newPoints = this%f_vectorAnimationUtil%jm_toAnimationArrayFromListOfPointList_1(j_pointsBasicArrayList)
            jresult = j_newPoints
            return
  end function

  recursive function VectorMirrorGenerator_jm_getInstance_2b(this, j_pointBasicArrayList, j_width) result(jresult)
    class(VectorMirrorGenerator), target :: this
    class(BasicArrayList), target, optional :: j_pointBasicArrayList
    integer(4), value :: j_width
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
        call j_graphicsPipe%jm_mirror_1(j_width)
        jresult => j_graphicsPipe%jm_getMatrix_0()
        return
  end function
end module VectorMirrorGenerator_m

