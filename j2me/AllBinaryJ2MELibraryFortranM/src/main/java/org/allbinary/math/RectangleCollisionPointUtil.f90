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
module RectangleCollisionPointUtil_m
  use JR_m
  use GPoint_m
  use BasicArrayList_m
  use RectangleCollisionUtil_m
  implicit none

  type, extends(JObject) :: RectangleCollisionPointUtil
  end type


contains

  function RectangleCollisionPointUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RectangleCollisionPointUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RectangleCollisionPointUtil)
      jresult => object
    end select
  end function

  recursive function RectangleCollisionPointUtil_jnew_0() result(this)
    class(RectangleCollisionPointUtil), pointer :: this
    allocate(this)
    this%jclass = 'RectangleCollisionPointUtil'
        continue
  end function

  recursive function RectangleCollisionPointUtil_jm_allPointsInside_5(j_rectX1, j_rectY1, j_rectX2, j_rectY2, j_list) result(jresult)
    integer(4), value :: j_rectX1
    integer(4), value :: j_rectY1
    integer(4), value :: j_rectX2
    integer(4), value :: j_rectY2
    class(BasicArrayList), target, optional :: j_list
    logical :: jresult
    class(RectangleCollisionUtil), pointer :: j_rectangleCollisionUtil
    class(GPoint), pointer :: j_point
    integer(4) :: j_index
    integer(4) :: jtemp1
        j_rectangleCollisionUtil => RectangleCollisionUtil_jm_getInstance_0()
        continue
        j_index = j_index - 1
        jtemp1 = j_index
        j_index = j_list%jm_size_0()
        do while ((jtemp1 >= 0))
            j_point => GPoint_jcast(j_list%f_objectArray((j_index) + 1)%v)
            if ((.not. j_rectangleCollisionUtil%jm_isInside_6(j_rectX1, j_rectY1, j_rectX2, j_rectY2, j_point%jm_getX_0(), j_point%jm_getY_0()))) then
                jresult = .false.
                return
            end if
        end do
        jresult = .true.
        return
  end function

  recursive function RectangleCollisionPointUtil_jm_allPointsInsideCell_7(j_rectX1, j_rectY1, j_rectX2, j_rectY2, j_list, j_xCellSize, j_yCellSize) result(jresult)
    integer(4), value :: j_rectX1
    integer(4), value :: j_rectY1
    integer(4), value :: j_rectX2
    integer(4), value :: j_rectY2
    class(BasicArrayList), target, optional :: j_list
    integer(4), value :: j_xCellSize
    integer(4), value :: j_yCellSize
    logical :: jresult
    class(RectangleCollisionUtil), pointer :: j_rectangleCollisionUtil
    class(GPoint), pointer :: j_point
    integer(4) :: j_index
    integer(4) :: jtemp2
        j_rectangleCollisionUtil => RectangleCollisionUtil_jm_getInstance_0()
        continue
        j_index = j_index - 1
        jtemp2 = j_index
        j_index = j_list%jm_size_0()
        do while ((jtemp2 >= 0))
            j_point => GPoint_jcast(j_list%f_objectArray((j_index) + 1)%v)
            if ((.not. j_rectangleCollisionUtil%jm_isInside_6(j_rectX1, j_rectY1, j_rectX2, j_rectY2, (j_point%jm_getX_0() * j_xCellSize), (j_point%jm_getY_0() * j_yCellSize)))) then
                jresult = .false.
                return
            end if
        end do
        jresult = .true.
        return
  end function
end module RectangleCollisionPointUtil_m

