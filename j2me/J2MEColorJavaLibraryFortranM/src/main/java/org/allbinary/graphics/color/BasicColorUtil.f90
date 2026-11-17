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
! package org.allbinary.graphics.color
module BasicColorUtil_m
  use JR_m
  use BasicColor_m
  implicit none

  type, extends(JObject) :: BasicColorUtil
    type(JRef), allocatable :: f_ZERO_ARRAY(:)
    integer(4) :: f_ALPHA = 0
    logical :: f_isAlpha = .false.
    logical :: f_ffOpaque = .false.
  contains
    procedure :: jm_getRGB_3 => BasicColorUtil_jm_getRGB_3
    procedure :: jm_getARGB_4 => BasicColorUtil_jm_getARGB_4
    procedure :: jm_get_2 => BasicColorUtil_jm_get_2
    procedure :: jm_invert_1 => BasicColorUtil_jm_invert_1
  end type

  class(BasicColorUtil), pointer, save :: BasicColorUtil_jcell_instance => null()
  logical, save :: BasicColorUtil_jset_instance = .false.

contains

  function BasicColorUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicColorUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicColorUtil)
      jresult => object
    end select
  end function

  function BasicColorUtil_jstatic_instance() result(jresult)
    class(BasicColorUtil), pointer :: jresult
    if (.not. BasicColorUtil_jset_instance) then
      BasicColorUtil_jset_instance = .true.
      BasicColorUtil_jcell_instance => BasicColorUtil_jnew_0()
    end if
    jresult => BasicColorUtil_jcell_instance
  end function

  function BasicColorUtil_jnew_0() result(this)
    class(BasicColorUtil), pointer :: this
    allocate(this)
    this%jclass = 'BasicColorUtil'
    this%f_ZERO_ARRAY = JR_newRefArray(0)
    this%f_ALPHA = int(z'FF000000', 4)
    this%f_isAlpha = .true.
    this%f_ffOpaque = .true.
  end function

  recursive function BasicColorUtil_jm_getInstance_0() result(jresult)
    class(BasicColorUtil), pointer :: jresult
        jresult => BasicColorUtil_jstatic_instance()
        return
  end function

  recursive function BasicColorUtil_jm_getRGB_3(this, j_red, j_green, j_blue) result(jresult)
    class(BasicColorUtil), target :: this
    integer(4), value :: j_red
    integer(4), value :: j_green
    integer(4), value :: j_blue
    integer(4) :: jresult
    integer(4) :: j_value
        j_value = 0
        if (this%f_isAlpha) then
            if (this%f_ffOpaque) then
                j_value = this%f_ALPHA
            end if
        end if
        j_value = ior((shiftl(j_red, iand(16, 31))), j_value)
        j_value = ior((shiftl(j_green, iand(8, 31))), j_value)
        j_value = ior(j_blue, j_value)
        jresult = j_value
        return
  end function

  recursive function BasicColorUtil_jm_getARGB_4(this, j_alphaValue, j_r, j_g, j_b) result(jresult)
    class(BasicColorUtil), target :: this
    integer(4), value :: j_alphaValue
    integer(4), value :: j_r
    integer(4), value :: j_g
    integer(4), value :: j_b
    integer(4) :: jresult
        jresult = ((((iand((shiftl(j_alphaValue, iand(24, 31))), this%f_ALPHA)) + (iand((shiftl(j_r, iand(16, 31))), int(z'00FF0000', 4)))) + (iand((shiftl(j_g, iand(8, 31))), int(z'0000FF00', 4)))) + (iand(j_b, int(z'000000FF', 4))))
        return
  end function

  recursive function BasicColorUtil_jm_get_2(this, j_alphaValue, j_color) result(jresult)
    class(BasicColorUtil), target :: this
    integer(4), value :: j_alphaValue
    integer(4), value :: j_color
    integer(4) :: jresult
        jresult = ((iand((shiftl(j_alphaValue, iand(24, 31))), this%f_ALPHA)) + j_color)
        return
  end function

  recursive function BasicColorUtil_jm_invert_1(this, j_color) result(jresult)
    class(BasicColorUtil), target :: this
    integer(4), value :: j_color
    integer(4) :: jresult
        jresult = ior(((int(z'FFFFFF', 4) - j_color)), this%f_ALPHA)
        return
  end function
end module BasicColorUtil_m

