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
module ViewPositionBase_m
  use JR_m
  use GPoint_m
  implicit none

  type, extends(GPoint) :: ViewPositionBase
  contains
    procedure :: jm_getX2_0 => ViewPositionBase_jm_getX2_0
    procedure :: jm_getY2_0 => ViewPositionBase_jm_getY2_0
    procedure :: jm_getZ2_0 => ViewPositionBase_jm_getZ2_0
    procedure :: jm_setAllbinaryLayer_1 => ViewPositionBase_jm_setAllbinaryLayer_1
  end type

  class(ViewPositionBase), pointer, save :: ViewPositionBase_jcell_NULL_VIEW_POSITION => null()
  logical, save :: ViewPositionBase_jset_NULL_VIEW_POSITION = .false.

contains

  function ViewPositionBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ViewPositionBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ViewPositionBase)
      jresult => object
    end select
  end function

  function ViewPositionBase_jstatic_NULL_VIEW_POSITION() result(jresult)
    class(ViewPositionBase), pointer :: jresult
    if (.not. ViewPositionBase_jset_NULL_VIEW_POSITION) then
      ViewPositionBase_jset_NULL_VIEW_POSITION = .true.
      ViewPositionBase_jcell_NULL_VIEW_POSITION => ViewPositionBase_jnew_3(0, 0, 0)
    end if
    jresult => ViewPositionBase_jcell_NULL_VIEW_POSITION
  end function

  subroutine ViewPositionBase_jsetstatic_NULL_VIEW_POSITION(jvalue)
    class(ViewPositionBase), target, optional :: jvalue
    ViewPositionBase_jset_NULL_VIEW_POSITION = .true.
    if (present(jvalue)) then
      ViewPositionBase_jcell_NULL_VIEW_POSITION => jvalue
    else
      ViewPositionBase_jcell_NULL_VIEW_POSITION => null()
    end if
  end subroutine

  recursive function ViewPositionBase_jnew_3(j_x, j_y, j_z) result(this)
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(ViewPositionBase), pointer :: this
    allocate(this)
    this%jclass = 'ViewPositionBase'
        continue ! super()
  end function

  recursive function ViewPositionBase_jm_getX2_0(this) result(jresult)
    class(ViewPositionBase), target :: this
    integer(4) :: jresult
        jresult = this%jm_getX_0()
        return
  end function

  recursive function ViewPositionBase_jm_getY2_0(this) result(jresult)
    class(ViewPositionBase), target :: this
    integer(4) :: jresult
        jresult = this%jm_getY_0()
        return
  end function

  recursive function ViewPositionBase_jm_getZ2_0(this) result(jresult)
    class(ViewPositionBase), target :: this
    integer(4) :: jresult
        jresult = this%jm_getZ_0()
        return
  end function

  recursive subroutine ViewPositionBase_jm_setAllbinaryLayer_1(this, j_allbinaryLayer)
    class(ViewPositionBase), target :: this
    class(JObject), target, optional :: j_allbinaryLayer
    continue
  end subroutine
end module ViewPositionBase_m

function ViewPositionBase_jnew_3_jext(p1, p2, p3) result(this)
  use ViewPositionBase_m, only: JObject, ViewPositionBase_jnew_3
  implicit none
      integer(4), value :: p1
      integer(4), value :: p2
      integer(4), value :: p3
  class(JObject), pointer :: this
  this => ViewPositionBase_jnew_3(p1, p2, p3)
end function

