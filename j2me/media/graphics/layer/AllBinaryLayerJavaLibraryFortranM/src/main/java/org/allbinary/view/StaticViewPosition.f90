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
! package org.allbinary.view
module StaticViewPosition_m
  use JR_m
  use ViewPosition_m
  implicit none

  type, extends(ViewPosition) :: StaticViewPosition
  contains
    procedure :: jm_getX_0 => StaticViewPosition_jm_getX_0
    procedure :: jm_getY_0 => StaticViewPosition_jm_getY_0
    procedure :: jm_getZ_0 => StaticViewPosition_jm_getZ_0
  end type


contains

  function StaticViewPosition_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StaticViewPosition), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StaticViewPosition)
      jresult => object
    end select
  end function

  recursive function StaticViewPosition_jnew_3(j_x, j_y, j_z) result(this)
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(StaticViewPosition), pointer :: this
    allocate(this)
    this%jclass = 'StaticViewPosition'
        continue ! super()
  end function

  recursive function StaticViewPosition_jm_getX_0(this) result(jresult)
    class(StaticViewPosition), target :: this
    integer(4) :: jresult
        jresult = this%jm_getRawX_0()
        return
  end function

  recursive function StaticViewPosition_jm_getY_0(this) result(jresult)
    class(StaticViewPosition), target :: this
    integer(4) :: jresult
        jresult = this%jm_getRawY_0()
        return
  end function

  recursive function StaticViewPosition_jm_getZ_0(this) result(jresult)
    class(StaticViewPosition), target :: this
    integer(4) :: jresult
        jresult = this%jm_getRawZ_0()
        return
  end function
end module StaticViewPosition_m

function StaticViewPosition_jnew_3_jext(p1, p2, p3) result(this)
  use StaticViewPosition_m, only: JObject, StaticViewPosition_jnew_3
  implicit none
      integer(4), value :: p1
      integer(4), value :: p2
      integer(4), value :: p3
  class(JObject), pointer :: this
  this => StaticViewPosition_jnew_3(p1, p2, p3)
end function

