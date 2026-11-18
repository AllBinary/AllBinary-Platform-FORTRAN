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
! package org.allbinary.graphics
module CustomGPoint_m
  use JR_m
  use GPoint_m
  implicit none

  type, extends(GPoint) :: CustomGPoint
    integer(4) :: f_cx = 0
    integer(4) :: f_cy = 0
    integer(4) :: f_cz = 0
  contains
    procedure :: jm_setX_1 => CustomGPoint_jm_setX_1
    procedure :: jm_getX_0 => CustomGPoint_jm_getX_0
    procedure :: jm_setY_1 => CustomGPoint_jm_setY_1
    procedure :: jm_getY_0 => CustomGPoint_jm_getY_0
    procedure :: jm_setZ_1 => CustomGPoint_jm_setZ_1
    procedure :: jm_getZ_0 => CustomGPoint_jm_getZ_0
  end type

  class(CustomGPoint), pointer, save :: CustomGPoint_jcell_NULL_CUSTOM_POINT => null()
  logical, save :: CustomGPoint_jset_NULL_CUSTOM_POINT = .false.

contains

  function CustomGPoint_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CustomGPoint), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CustomGPoint)
      jresult => object
    end select
  end function

  function CustomGPoint_jstatic_NULL_CUSTOM_POINT() result(jresult)
    class(CustomGPoint), pointer :: jresult
    if (.not. CustomGPoint_jset_NULL_CUSTOM_POINT) then
      CustomGPoint_jset_NULL_CUSTOM_POINT = .true.
      CustomGPoint_jcell_NULL_CUSTOM_POINT => CustomGPoint_jnew_3(0, 0, 0)
    end if
    jresult => CustomGPoint_jcell_NULL_CUSTOM_POINT
  end function

  subroutine CustomGPoint_jsetstatic_NULL_CUSTOM_POINT(jvalue)
    class(CustomGPoint), target, optional :: jvalue
    CustomGPoint_jset_NULL_CUSTOM_POINT = .true.
    if (present(jvalue)) then
      CustomGPoint_jcell_NULL_CUSTOM_POINT => jvalue
    else
      CustomGPoint_jcell_NULL_CUSTOM_POINT => null()
    end if
  end subroutine

  recursive function CustomGPoint_jnew_3(j_x, j_y, j_z) result(this)
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(CustomGPoint), pointer :: this
    allocate(this)
    this%jclass = 'CustomGPoint'
    
    
    
        continue ! super()
  end function

  recursive function CustomGPoint_jm_getInstance_1(j_point) result(jresult)
    class(GPoint), target, optional :: j_point
    class(CustomGPoint), pointer :: jresult
        jresult => CustomGPoint_jnew_3(j_point%jm_getX_0(), j_point%jm_getY_0(), j_point%jm_getZ_0())
        return
  end function

  recursive function CustomGPoint_jm_getInstance3_2(j_x, j_y) result(jresult)
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(CustomGPoint), pointer :: jresult
        jresult => CustomGPoint_jnew_3(j_x, j_y, 3)
        return
  end function

  recursive subroutine CustomGPoint_jm_setX_1(this, j_x)
    class(CustomGPoint), target :: this
    integer(4), value :: j_x
        this%f_cx = j_x
  end subroutine

  recursive function CustomGPoint_jm_getX_0(this) result(jresult)
    class(CustomGPoint), target :: this
    integer(4) :: jresult
        jresult = this%f_cx
        return
  end function

  recursive subroutine CustomGPoint_jm_setY_1(this, j_y)
    class(CustomGPoint), target :: this
    integer(4), value :: j_y
        this%f_cy = j_y
  end subroutine

  recursive function CustomGPoint_jm_getY_0(this) result(jresult)
    class(CustomGPoint), target :: this
    integer(4) :: jresult
        jresult = this%f_cy
        return
  end function

  recursive subroutine CustomGPoint_jm_setZ_1(this, j_z)
    class(CustomGPoint), target :: this
    integer(4), value :: j_z
        this%f_cz = j_z
  end subroutine

  recursive function CustomGPoint_jm_getZ_0(this) result(jresult)
    class(CustomGPoint), target :: this
    integer(4) :: jresult
        jresult = this%f_cz
        return
  end function
end module CustomGPoint_m

function CustomGPoint_jnew_3_jext(p1, p2, p3) result(this)
  use CustomGPoint_m, only: JObject, CustomGPoint_jnew_3
  implicit none
      integer(4), value :: p1
      integer(4), value :: p2
      integer(4), value :: p3
  class(JObject), pointer :: this
  this => CustomGPoint_jnew_3(p1, p2, p3)
end function

