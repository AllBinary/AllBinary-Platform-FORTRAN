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
module Rectangle_m
  use JR_m
  use StringMaker_m
  use CommonLabels_m
  use CommonSeps_m
  use GPoint_m
  implicit none

  type, extends(JObject) :: Rectangle
    class(GPoint), pointer :: f_point => null()
    integer(4) :: f_width = 0
    integer(4) :: f_height = 0
  contains
    procedure :: jm_getPoint_0 => Rectangle_jm_getPoint_0
    procedure :: jm_setPoint_1 => Rectangle_jm_setPoint_1
    procedure :: jm_getMaxX_0 => Rectangle_jm_getMaxX_0
    procedure :: jm_getMaxY_0 => Rectangle_jm_getMaxY_0
    procedure :: jm_getWidth_0 => Rectangle_jm_getWidth_0
    procedure :: jm_setWidth_1 => Rectangle_jm_setWidth_1
    procedure :: jm_getHeight_0 => Rectangle_jm_getHeight_0
    procedure :: jm_setHeight_1 => Rectangle_jm_setHeight_1
    procedure :: jm_toString_0 => Rectangle_jm_toString_0
  end type


contains

  function Rectangle_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Rectangle), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Rectangle)
      jresult => object
    end select
  end function

  recursive function Rectangle_jnew_3(j_point, j_width, j_height) result(this)
    class(GPoint), target, optional :: j_point
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Rectangle), pointer :: this
    allocate(this)
    this%jclass = 'Rectangle'
    
    
    
        this%f_point => j_point
        this%f_width = j_width
        this%f_height = j_height
  end function

  recursive function Rectangle_jm_getPoint_0(this) result(jresult)
    class(Rectangle), target :: this
    class(GPoint), pointer :: jresult
        jresult => this%f_point
        return
  end function

  recursive subroutine Rectangle_jm_setPoint_1(this, j_point)
    class(Rectangle), target :: this
    class(GPoint), target, optional :: j_point
        this%f_point => j_point
  end subroutine

  recursive function Rectangle_jm_getMaxX_0(this) result(jresult)
    class(Rectangle), target :: this
    integer(4) :: jresult
        jresult = (this%f_point%jm_getX_0() + this%f_width)
        return
  end function

  recursive function Rectangle_jm_getMaxY_0(this) result(jresult)
    class(Rectangle), target :: this
    integer(4) :: jresult
        jresult = (this%f_point%jm_getY_0() + this%f_height)
        return
  end function

  recursive function Rectangle_jm_getWidth_0(this) result(jresult)
    class(Rectangle), target :: this
    integer(4) :: jresult
        jresult = this%f_width
        return
  end function

  recursive subroutine Rectangle_jm_setWidth_1(this, j_width)
    class(Rectangle), target :: this
    integer(4), value :: j_width
        this%f_width = j_width
  end subroutine

  recursive function Rectangle_jm_getHeight_0(this) result(jresult)
    class(Rectangle), target :: this
    integer(4) :: jresult
        jresult = this%f_height
        return
  end function

  recursive subroutine Rectangle_jm_setHeight_1(this, j_height)
    class(Rectangle), target :: this
    integer(4), value :: j_height
        this%f_height = j_height
  end subroutine

  recursive function Rectangle_jm_toString_0(this) result(jresult)
    class(Rectangle), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(GPoint), pointer :: jtemp1
    class(CommonSeps), pointer :: jtemp2
    class(CommonLabels), pointer :: jtemp3
    class(CommonSeps), pointer :: jtemp4
    class(CommonLabels), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jtemp1 => this%jm_getPoint_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%jm_toString_0())
        jtemp2 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp2%f_SPACE)
        jtemp3 => CommonLabels_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp3%f_WIDTH_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getWidth_0())
        jtemp4 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp4%f_SPACE)
        jtemp5 => CommonLabels_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp5%f_HEIGHT_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getHeight_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' MaxX: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getMaxX_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' MaxY: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getMaxY_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module Rectangle_m

