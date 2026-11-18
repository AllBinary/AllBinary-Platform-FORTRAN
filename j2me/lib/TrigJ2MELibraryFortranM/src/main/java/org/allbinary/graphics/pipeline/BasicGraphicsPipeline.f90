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
! package org.allbinary.graphics.pipeline
module BasicGraphicsPipeline_m
  use JR_m
  use GPoint_m
  use PointFactory_m
  use Angle_m
  use NoDecimalTrigTable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: BasicGraphicsPipeline
    class(BasicArrayList), pointer :: f_pointBasicArrayList => null()
    class(NoDecimalTrigTable), pointer :: f_noDecimalTrigTable => null()
  contains
    procedure :: jm_setInitMatrix_1 => BasicGraphicsPipeline_jm_setInitMatrix_1
    procedure :: jm_createMatrix_0 => BasicGraphicsPipeline_jm_createMatrix_0
    procedure :: jm_translate_2 => BasicGraphicsPipeline_jm_translate_2
    procedure :: jm_rotateToAngle_1 => BasicGraphicsPipeline_jm_rotateToAngle_1
    procedure :: jm_rotate_1 => BasicGraphicsPipeline_jm_rotate_1
    procedure :: jm_mirror_1 => BasicGraphicsPipeline_jm_mirror_1
    procedure :: jm_getMatrix_0 => BasicGraphicsPipeline_jm_getMatrix_0
  end type


contains

  function BasicGraphicsPipeline_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicGraphicsPipeline), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicGraphicsPipeline)
      jresult => object
    end select
  end function

  recursive function BasicGraphicsPipeline_jnew_1(j_points) result(this)
    class(BasicArrayList), target, optional :: j_points
    class(BasicGraphicsPipeline), pointer :: this
    allocate(this)
    this%jclass = 'BasicGraphicsPipeline'
    
    this%f_noDecimalTrigTable => NoDecimalTrigTable_jm_getInstance_0()
        this%f_pointBasicArrayList => j_points
  end function

  recursive subroutine BasicGraphicsPipeline_jm_setInitMatrix_1(this, j_points)
    class(BasicGraphicsPipeline), target :: this
    class(BasicArrayList), target, optional :: j_points
        this%f_pointBasicArrayList => j_points
  end subroutine

  recursive subroutine BasicGraphicsPipeline_jm_createMatrix_0(this)
    class(BasicGraphicsPipeline), target :: this
    continue
  end subroutine

  recursive subroutine BasicGraphicsPipeline_jm_translate_2(this, j_x, j_y)
    class(BasicGraphicsPipeline), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(BasicArrayList), pointer :: j_newBasicArrayList
    integer(4) :: j_size
    class(PointFactory), pointer :: j_pointFactory
    class(GPoint), pointer :: j_secondPoint
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_newBasicArrayList => BasicArrayListD_jnew_0()
        j_size = this%f_pointBasicArrayList%jm_size_0()
        j_pointFactory => PointFactory_jm_getInstance_0()
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_secondPoint => GPoint_jcast(this%f_pointBasicArrayList%f_objectArray((j_index) + 1)%v)
            if ((j_secondPoint%jm_getX_0() /= 1000)) then
                jdiscardBoolean = j_newBasicArrayList%jm_add_1(j_pointFactory%jm_createXY_2((j_secondPoint%jm_getX_0() + j_x), (j_secondPoint%jm_getY_0() + j_y)))
            else
                jdiscardBoolean = j_newBasicArrayList%jm_add_1(j_secondPoint)
            end if
            j_index = j_index + 1
        end do
        this%f_pointBasicArrayList => j_newBasicArrayList
  end subroutine

  recursive subroutine BasicGraphicsPipeline_jm_rotateToAngle_1(this, j_angle)
    class(BasicGraphicsPipeline), target :: this
    class(Angle), target, optional :: j_angle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_rotate_1(j_angle%jm_getValue_0())
  end subroutine

  recursive subroutine BasicGraphicsPipeline_jm_rotate_1(this, j_angle)
    class(BasicGraphicsPipeline), target :: this
    integer(4), value :: j_angle
    class(BasicArrayList), pointer :: j_newBasicArrayList
    class(GPoint), pointer :: j_secondPoint
    integer(8) :: j_y
    integer(8) :: j_secondX
    integer(8) :: j_secondY
    class(GPoint), pointer :: j_point
    class(PointFactory), pointer :: j_pointFactory
    integer(4) :: j_size
    integer(8) :: j_sin
    integer(8) :: j_cos
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_newBasicArrayList => BasicArrayListD_jnew_0()
        continue
        continue
        continue
        continue
        continue
        j_pointFactory => PointFactory_jm_getInstance_0()
        j_size = this%f_pointBasicArrayList%jm_size_0()
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_secondPoint => GPoint_jcast(this%f_pointBasicArrayList%f_objectArray((j_index) + 1)%v)
            if ((j_secondPoint%jm_getX_0() /= 1000)) then
                j_sin = this%f_noDecimalTrigTable%jm_sin_1(j_angle)
                j_cos = this%f_noDecimalTrigTable%jm_cos_1(j_angle)
                j_y = (int(j_secondPoint%jm_getY_0(), 8) * j_sin)
                j_secondX = (((int(j_secondPoint%jm_getX_0(), 8) * j_cos)) - j_y)
                j_secondY = (((int(j_secondPoint%jm_getX_0(), 8) * j_sin)) + ((int(j_secondPoint%jm_getY_0(), 8) * j_cos)))
                j_point => j_pointFactory%jm_createXY_2((JR_l2i(j_secondX) / 10000), (JR_l2i(j_secondY) / 10000))
                jdiscardBoolean = j_newBasicArrayList%jm_add_1(j_point)
            else
                jdiscardBoolean = j_newBasicArrayList%jm_add_1(j_secondPoint)
            end if
            j_index = j_index + 1
        end do
        this%f_pointBasicArrayList => j_newBasicArrayList
  end subroutine

  recursive subroutine BasicGraphicsPipeline_jm_mirror_1(this, j_width)
    class(BasicGraphicsPipeline), target :: this
    integer(4), value :: j_width
    class(PointFactory), pointer :: j_pointFactory
    integer(4) :: j_halfWidth
    class(BasicArrayList), pointer :: j_newBasicArrayList
    class(GPoint), pointer :: j_secondPoint
    integer(4) :: j_newX
    class(GPoint), pointer :: j_point
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_pointFactory => PointFactory_jm_getInstance_0()
        j_halfWidth = (shifta(j_width, iand(1, 31)))
        j_newBasicArrayList => BasicArrayListD_jnew_0()
        continue
        continue
        continue
        j_size = this%f_pointBasicArrayList%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_secondPoint => GPoint_jcast(this%f_pointBasicArrayList%f_objectArray((j_index) + 1)%v)
            if ((j_secondPoint%jm_getX_0() /= 1000)) then
                j_newX = 0
                if ((j_secondPoint%jm_getX_0() > j_halfWidth)) then
                    j_newX = (j_halfWidth - ((j_secondPoint%jm_getX_0() - j_halfWidth)))
                else
                    j_newX = (j_halfWidth + ((j_halfWidth - j_secondPoint%jm_getX_0())))
                end if
                j_point => j_pointFactory%jm_createXY_2(j_newX, j_secondPoint%jm_getY_0())
                jdiscardBoolean = j_newBasicArrayList%jm_add_1(j_point)
            else
                jdiscardBoolean = j_newBasicArrayList%jm_add_1(j_secondPoint)
            end if
            j_index = j_index + 1
        end do
        this%f_pointBasicArrayList => j_newBasicArrayList
  end subroutine

  recursive function BasicGraphicsPipeline_jm_getMatrix_0(this) result(jresult)
    class(BasicGraphicsPipeline), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_pointBasicArrayList
        return
  end function
end module BasicGraphicsPipeline_m

