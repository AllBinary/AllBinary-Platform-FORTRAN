! Generated Code Do Not Modify
! package org.allbinary.graphics.displayable
module ScreenRelationalUtil_m
  use JR_m
  use DisplayInfoSingleton_m
  implicit none

  type, extends(JObject) :: ScreenRelationalUtil
  contains
    procedure :: jm_getScaleImage_1 => ScreenRelationalUtil_jm_getScaleImage_1
    procedure :: jm_getScaleWH_2 => ScreenRelationalUtil_jm_getScaleWH_2
    procedure :: jm_getScaleWHA_3 => ScreenRelationalUtil_jm_getScaleWHA_3
    procedure :: jm_getScaledHeight_2 => ScreenRelationalUtil_jm_getScaledHeight_2
    procedure :: jm_getScaledHeightAdd_3 => ScreenRelationalUtil_jm_getScaledHeightAdd_3
  end type

  class(ScreenRelationalUtil), pointer, save :: ScreenRelationalUtil_jcell_instance => null()
  logical, save :: ScreenRelationalUtil_jset_instance = .false.

contains

  function ScreenRelationalUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScreenRelationalUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScreenRelationalUtil)
      jresult => object
    end select
  end function

  function ScreenRelationalUtil_jstatic_instance() result(jresult)
    class(ScreenRelationalUtil), pointer :: jresult
    if (.not. ScreenRelationalUtil_jset_instance) then
      ScreenRelationalUtil_jset_instance = .true.
      ScreenRelationalUtil_jcell_instance => ScreenRelationalUtil_jnew_0()
    end if
    jresult => ScreenRelationalUtil_jcell_instance
  end function

  subroutine ScreenRelationalUtil_jsetstatic_instance(jvalue)
    class(ScreenRelationalUtil), target, optional :: jvalue
    ScreenRelationalUtil_jset_instance = .true.
    if (present(jvalue)) then
      ScreenRelationalUtil_jcell_instance => jvalue
    else
      ScreenRelationalUtil_jcell_instance => null()
    end if
  end subroutine

  function ScreenRelationalUtil_jnew_0() result(this)
    class(ScreenRelationalUtil), pointer :: this
    allocate(this)
    this%jclass = 'ScreenRelationalUtil'
  end function

  recursive function ScreenRelationalUtil_jm_getInstance_0() result(jresult)
    class(ScreenRelationalUtil), pointer :: jresult
        jresult => ScreenRelationalUtil_jstatic_instance()
        return
  end function

  recursive function ScreenRelationalUtil_jm_getScaleImage_1(this, j_image) result(jresult)
    class(ScreenRelationalUtil), target :: this
    class(Image), target, optional :: j_image
    real(4) :: jresult
        jresult = this%jm_getScaleWH_2(j_image%jm_getWidth_0(), j_image%jm_getHeight_0())
        return
  end function

  recursive function ScreenRelationalUtil_jm_getScaleWH_2(this, j_aWidth, j_aHeight) result(jresult)
    class(ScreenRelationalUtil), target :: this
    integer(4), value :: j_aWidth
    integer(4), value :: j_aHeight
    real(4) :: jresult
        jresult = this%jm_getScaleWHA_3(j_aWidth, j_aHeight, 20)
        return
  end function

  recursive function ScreenRelationalUtil_jm_getScaleWHA_3(this, j_aWidth, j_aHeight, j_add) result(jresult)
    class(ScreenRelationalUtil), target :: this
    integer(4), value :: j_aWidth
    integer(4), value :: j_aHeight
    integer(4), value :: j_add
    real(4) :: jresult
    class(DisplayInfoSingleton), pointer :: j_displayInfoSingleton
    integer(4), allocatable :: j_last(:)
    real(4) :: j_width
    real(4) :: j_height
    real(4) :: j_largestSize
    real(4) :: j_scale
        j_displayInfoSingleton => DisplayInfoSingleton_jm_getInstance_0()
        j_last = j_displayInfoSingleton%jm_getLast_0()
        j_width = real(j_last((j_displayInfoSingleton%f_WIDTH) + 1), 4)
        j_height = real(j_last((j_displayInfoSingleton%f_HEIGHT) + 1), 4)
        j_largestSize = j_width
        if ((j_largestSize < j_height)) then
            j_largestSize = j_height
        end if
        j_scale = (j_largestSize / real(j_aWidth, 4))
        jresult = j_scale
        return
  end function

  recursive function ScreenRelationalUtil_jm_getScaledHeight_2(this, j_aWidth, j_aHeight) result(jresult)
    class(ScreenRelationalUtil), target :: this
    integer(4), value :: j_aWidth
    integer(4), value :: j_aHeight
    integer(4) :: jresult
        jresult = JR_d2i(real(((this%jm_getScaleWH_2(j_aWidth, j_aHeight) * real(j_aHeight, 4))), 8))
        return
  end function

  recursive function ScreenRelationalUtil_jm_getScaledHeightAdd_3(this, j_aWidth, j_aHeight, j_add) result(jresult)
    class(ScreenRelationalUtil), target :: this
    integer(4), value :: j_aWidth
    integer(4), value :: j_aHeight
    integer(4), value :: j_add
    integer(4) :: jresult
        jresult = JR_d2i(real(((this%jm_getScaleWHA_3(j_aWidth, j_aHeight, j_add) * real(j_aHeight, 4))), 8))
        return
  end function
end module ScreenRelationalUtil_m

