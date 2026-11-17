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
module PointFactory_m
  use JR_m
  use GPoint_m
  implicit none

  type, extends(JObject) :: PointFactory
    class(GPoint), pointer :: f_ZERO_ZERO => null()
  contains
    procedure :: jm_init_0 => PointFactory_jm_init_0
    procedure :: jm_createXY_2 => PointFactory_jm_createXY_2
    procedure :: jm_createXYZ_3 => PointFactory_jm_createXYZ_3
  end type

  class(PointFactory), pointer, save :: PointFactory_jcell_instance => null()
  logical, save :: PointFactory_jset_instance = .false.

contains

  function PointFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PointFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PointFactory)
      jresult => object
    end select
  end function

  function PointFactory_jstatic_instance() result(jresult)
    class(PointFactory), pointer :: jresult
    if (.not. PointFactory_jset_instance) then
      PointFactory_jset_instance = .true.
      PointFactory_jcell_instance => PointFactory_jnew_0()
    end if
    jresult => PointFactory_jcell_instance
  end function

  recursive function PointFactory_jnew_0() result(this)
    class(PointFactory), pointer :: this
    allocate(this)
    this%jclass = 'PointFactory'
    this%f_ZERO_ZERO => this%jm_createXYZ_3(0, 0, 0)
        continue
  end function

  recursive function PointFactory_jm_getInstance_0() result(jresult)
    class(PointFactory), pointer :: jresult
        jresult => PointFactory_jstatic_instance()
        return
  end function

  recursive subroutine PointFactory_jm_init_0(this)
    class(PointFactory), target :: this
    continue
  end subroutine

  recursive function PointFactory_jm_createXY_2(this, j_x, j_y) result(jresult)
    class(PointFactory), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(GPoint), pointer :: jresult
        jresult => GPoint_jnew_3(j_x, j_y, 0)
        return
  end function

  recursive function PointFactory_jm_createXYZ_3(this, j_x, j_y, j_z) result(jresult)
    class(PointFactory), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(GPoint), pointer :: jresult
        jresult => GPoint_jnew_3(j_x, j_y, j_z)
        return
  end function
end module PointFactory_m

