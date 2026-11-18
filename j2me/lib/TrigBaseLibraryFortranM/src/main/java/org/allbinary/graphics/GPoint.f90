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
module GPoint_m
  use JR_m
  use StringMaker_m
  use PositionStrings_m
  use CommonSeps_m
  implicit none

  type, extends(JObject) :: GPoint
    integer(4) :: f_x = 0
    integer(4) :: f_y = 0
    integer(4) :: f_z = 0
  contains
    procedure :: jm_getX_0 => GPoint_jm_getX_0
    procedure :: jm_getY_0 => GPoint_jm_getY_0
    procedure :: jm_getZ_0 => GPoint_jm_getZ_0
    procedure :: jm_getRawX_0 => GPoint_jm_getRawX_0
    procedure :: jm_getRawY_0 => GPoint_jm_getRawY_0
    procedure :: jm_getRawZ_0 => GPoint_jm_getRawZ_0
    procedure :: jm_toString_0 => GPoint_jm_toString_0
  end type

  character(len=:), allocatable, save :: GPoint_jcell_POINT_LABEL
  logical, save :: GPoint_jset_POINT_LABEL = .false.

contains

  function GPoint_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GPoint), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GPoint)
      jresult => object
    end select
  end function

  function GPoint_jstatic_POINT_LABEL() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. GPoint_jset_POINT_LABEL) then
      GPoint_jset_POINT_LABEL = .true.
      GPoint_jcell_POINT_LABEL = 'Point: '
    end if
    jresult = GPoint_jcell_POINT_LABEL
  end function

  subroutine GPoint_jsetstatic_POINT_LABEL(jvalue)
    character(len=*), intent(in) :: jvalue
    GPoint_jset_POINT_LABEL = .true.
    GPoint_jcell_POINT_LABEL = jvalue
  end subroutine

  recursive function GPoint_jnew_3(j_x, j_y, j_z) result(this)
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(GPoint), pointer :: this
    allocate(this)
    this%jclass = 'GPoint'
    
    
    
        this%f_x = j_x
        this%f_y = j_y
        this%f_z = j_z
  end function

  recursive function GPoint_jm_getInstance_1(j_point) result(jresult)
    class(GPoint), target, optional :: j_point
    class(GPoint), pointer :: jresult
        jresult => GPoint_jnew_3(j_point%jm_getX_0(), j_point%jm_getY_0(), j_point%jm_getZ_0())
        return
  end function

  recursive function GPoint_jm_getX_0(this) result(jresult)
    class(GPoint), target :: this
    integer(4) :: jresult
        jresult = this%f_x
        return
  end function

  recursive function GPoint_jm_getY_0(this) result(jresult)
    class(GPoint), target :: this
    integer(4) :: jresult
        jresult = this%f_y
        return
  end function

  recursive function GPoint_jm_getZ_0(this) result(jresult)
    class(GPoint), target :: this
    integer(4) :: jresult
        jresult = this%f_z
        return
  end function

  recursive function GPoint_jm_getRawX_0(this) result(jresult)
    class(GPoint), target :: this
    integer(4) :: jresult
        jresult = this%f_x
        return
  end function

  recursive function GPoint_jm_getRawY_0(this) result(jresult)
    class(GPoint), target :: this
    integer(4) :: jresult
        jresult = this%f_y
        return
  end function

  recursive function GPoint_jm_getRawZ_0(this) result(jresult)
    class(GPoint), target :: this
    integer(4) :: jresult
        jresult = this%f_z
        return
  end function

  recursive function GPoint_jm_toString_0(this) result(jresult)
    class(GPoint), target :: this
    character(len=:), allocatable :: jresult
        jresult = GPoint_jm_toStringStatic_3(this%jm_getX_0(), this%jm_getY_0(), this%jm_getZ_0())
        return
  end function

  recursive function GPoint_jm_toStringStatic_3(j_x, j_y, j_z) result(jresult)
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(PositionStrings), pointer :: j_positionStrings
    class(CommonSeps), pointer :: jtemp1
    class(CommonSeps), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_positionStrings => PositionStrings_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(GPoint_jstatic_POINT_LABEL())
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_X_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_x)
        jtemp1 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_Y_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_y)
        jtemp2 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp2%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_Z_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_z)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module GPoint_m

