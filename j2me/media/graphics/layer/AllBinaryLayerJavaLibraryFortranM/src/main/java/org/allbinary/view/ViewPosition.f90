! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.view
module ViewPosition_m
  use JR_m
  use AllBinaryLayer_m
  use ViewPositionBase_m
  implicit none

  type, extends(ViewPositionBase) :: ViewPosition
    class(AllBinaryLayer), pointer :: f_allbinaryLayer => null()
  contains
    procedure :: jm_getX_0 => ViewPosition_jm_getX_0
    procedure :: jm_getY_0 => ViewPosition_jm_getY_0
    procedure :: jm_getZ_0 => ViewPosition_jm_getZ_0
    procedure :: jm_getX2_0 => ViewPosition_jm_getX2_0
    procedure :: jm_getY2_0 => ViewPosition_jm_getY2_0
    procedure :: jm_getZ2_0 => ViewPosition_jm_getZ2_0
    procedure :: jm_setAllbinaryLayer_1 => ViewPosition_jm_setAllbinaryLayer_1
  end type


contains

  function ViewPosition_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ViewPosition), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ViewPosition)
      jresult => object
    end select
  end function

  recursive function ViewPosition_jnew_3(j_x, j_y, j_z) result(this)
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(ViewPosition), pointer :: this
    allocate(this)
    this%jclass = 'ViewPosition'
    this%f_allbinaryLayer => AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER()
        continue ! super()
  end function

  recursive function ViewPosition_jm_getInstanceD_0() result(jresult)
    class(ViewPosition), pointer :: jresult
        jresult => ViewPosition_jnew_3(0, 0, 0)
        return
  end function

  recursive function ViewPosition_jm_getX_0(this) result(jresult)
    class(ViewPosition), target :: this
    integer(4) :: jresult
        jresult = this%f_allbinaryLayer%jm_getXP_0()
        return
  end function

  recursive function ViewPosition_jm_getY_0(this) result(jresult)
    class(ViewPosition), target :: this
    integer(4) :: jresult
        jresult = this%f_allbinaryLayer%jm_getYP_0()
        return
  end function

  recursive function ViewPosition_jm_getZ_0(this) result(jresult)
    class(ViewPosition), target :: this
    integer(4) :: jresult
        jresult = this%f_allbinaryLayer%jm_getZP_0()
        return
  end function

  recursive function ViewPosition_jm_getX2_0(this) result(jresult)
    class(ViewPosition), target :: this
    integer(4) :: jresult
        jresult = (this%jm_getX_0() + this%f_allbinaryLayer%jm_getWidth_0())
        return
  end function

  recursive function ViewPosition_jm_getY2_0(this) result(jresult)
    class(ViewPosition), target :: this
    integer(4) :: jresult
        jresult = (this%jm_getY_0() + this%f_allbinaryLayer%jm_getHeight_0())
        return
  end function

  recursive function ViewPosition_jm_getZ2_0(this) result(jresult)
    class(ViewPosition), target :: this
    integer(4) :: jresult
        jresult = JR_l2i(((int(this%jm_getZ_0(), 8) + this%f_allbinaryLayer%jm_getDepth_0())))
        return
  end function

  recursive subroutine ViewPosition_jm_setAllbinaryLayer_1(this, j_allbinaryLayer)
    class(ViewPosition), target :: this
    class(JObject), target, optional :: j_allbinaryLayer
        this%f_allbinaryLayer => AllBinaryLayer_jcast(j_allbinaryLayer)
  end subroutine
end module ViewPosition_m

function ViewPosition_jnew_3_jext(p1, p2, p3) result(this)
  use ViewPosition_m, only: JObject, ViewPosition_jnew_3
  implicit none
      integer(4), value :: p1
      integer(4), value :: p2
      integer(4), value :: p3
  class(JObject), pointer :: this
  this => ViewPosition_jnew_3(p1, p2, p3)
end function

