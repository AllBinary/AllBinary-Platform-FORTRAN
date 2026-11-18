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
module RectangleCollisionUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: RectangleCollisionUtil
  contains
    procedure :: jm_isCollision_8 => RectangleCollisionUtil_jm_isCollision_8
    procedure :: jm_isInside_6 => RectangleCollisionUtil_jm_isInside_6
  end type

  class(RectangleCollisionUtil), pointer, save :: RectangleCollisionUtil_jcell_instance => null()
  logical, save :: RectangleCollisionUtil_jset_instance = .false.

contains

  function RectangleCollisionUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RectangleCollisionUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RectangleCollisionUtil)
      jresult => object
    end select
  end function

  function RectangleCollisionUtil_jstatic_instance() result(jresult)
    class(RectangleCollisionUtil), pointer :: jresult
    if (.not. RectangleCollisionUtil_jset_instance) then
      RectangleCollisionUtil_jset_instance = .true.
      RectangleCollisionUtil_jcell_instance => RectangleCollisionUtil_jnew_0()
    end if
    jresult => RectangleCollisionUtil_jcell_instance
  end function

  subroutine RectangleCollisionUtil_jsetstatic_instance(jvalue)
    class(RectangleCollisionUtil), target, optional :: jvalue
    RectangleCollisionUtil_jset_instance = .true.
    if (present(jvalue)) then
      RectangleCollisionUtil_jcell_instance => jvalue
    else
      RectangleCollisionUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function RectangleCollisionUtil_jnew_0() result(this)
    class(RectangleCollisionUtil), pointer :: this
    allocate(this)
    this%jclass = 'RectangleCollisionUtil'
        continue
  end function

  recursive function RectangleCollisionUtil_jm_getInstance_0() result(jresult)
    class(RectangleCollisionUtil), pointer :: jresult
        jresult => RectangleCollisionUtil_jstatic_instance()
        return
  end function

  recursive function RectangleCollisionUtil_jm_isCollision_8(this, j_rectX1, j_rectY1, j_rectX2, j_rectY2, j_rect2X1, j_rect2Y1, j_rect2X2, j_rect2Y2) result(jresult)
    class(RectangleCollisionUtil), target :: this
    integer(4), value :: j_rectX1
    integer(4), value :: j_rectY1
    integer(4), value :: j_rectX2
    integer(4), value :: j_rectY2
    integer(4), value :: j_rect2X1
    integer(4), value :: j_rect2Y1
    integer(4), value :: j_rect2X2
    integer(4), value :: j_rect2Y2
    logical :: jresult
        if (((((j_rect2X1 >= j_rectX2) .or. (j_rect2Y1 >= j_rectY2)) .or. (j_rect2X2 <= j_rectX1)) .or. (j_rect2Y2 <= j_rectY1))) then
            jresult = .false.
            return
        else
            jresult = .true.
            return
        end if
  end function

  recursive function RectangleCollisionUtil_jm_isInside_6(this, j_rectX1, j_rectY1, j_rectX2, j_rectY2, j_x, j_y) result(jresult)
    class(RectangleCollisionUtil), target :: this
    integer(4), value :: j_rectX1
    integer(4), value :: j_rectY1
    integer(4), value :: j_rectX2
    integer(4), value :: j_rectY2
    integer(4), value :: j_x
    integer(4), value :: j_y
    logical :: jresult
        if (((((j_x >= j_rectX2) .or. (j_y >= j_rectY2)) .or. (j_x <= j_rectX1)) .or. (j_y <= j_rectY1))) then
            jresult = .false.
            return
        else
            jresult = .true.
            return
        end if
  end function
end module RectangleCollisionUtil_m

