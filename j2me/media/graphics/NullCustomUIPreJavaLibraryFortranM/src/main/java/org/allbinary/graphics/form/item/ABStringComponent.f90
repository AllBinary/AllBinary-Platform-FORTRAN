! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module ABStringComponent_m
  use JR_m
  use BasicColor_m
  use BasicColorFactory_m
  implicit none

  type, extends(JObject) :: ABStringComponent
  contains
    procedure :: jm_getBackgroundBasicColor_0 => ABStringComponent_jm_getBackgroundBasicColor_0
    procedure :: jm_getForegroundBasicColor_0 => ABStringComponent_jm_getForegroundBasicColor_0
    procedure :: jm_setForegroundBasicColor_1 => ABStringComponent_jm_setForegroundBasicColor_1
  end type

  class(ABStringComponent), pointer, save :: ABStringComponent_jcell_NULL_STRING_COMPONENT => null()
  logical, save :: ABStringComponent_jset_NULL_STRING_COMPONENT = .false.

contains

  function ABStringComponent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABStringComponent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABStringComponent)
      jresult => object
    end select
  end function

  function ABStringComponent_jstatic_NULL_STRING_COMPONENT() result(jresult)
    class(ABStringComponent), pointer :: jresult
    class(BasicColorFactory), pointer :: jtemp1
    class(BasicColorFactory), pointer :: jtemp2
    if (.not. ABStringComponent_jset_NULL_STRING_COMPONENT) then
      ABStringComponent_jset_NULL_STRING_COMPONENT = .true.
      jtemp1 => BasicColorFactory_jm_getInstance_0()
    jtemp2 => BasicColorFactory_jm_getInstance_0()
    ABStringComponent_jcell_NULL_STRING_COMPONENT => ABStringComponent_jnew_2(jtemp1%f_BLACK, jtemp2%f_WHITE)
    end if
    jresult => ABStringComponent_jcell_NULL_STRING_COMPONENT
  end function

  subroutine ABStringComponent_jsetstatic_NULL_STRING_COMPONENT(jvalue)
    class(ABStringComponent), target, optional :: jvalue
    ABStringComponent_jset_NULL_STRING_COMPONENT = .true.
    if (present(jvalue)) then
      ABStringComponent_jcell_NULL_STRING_COMPONENT => jvalue
    else
      ABStringComponent_jcell_NULL_STRING_COMPONENT => null()
    end if
  end subroutine

  recursive function ABStringComponent_jnew_2(j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(ABStringComponent), pointer :: this
    allocate(this)
    this%jclass = 'ABStringComponent'
        continue
  end function

  recursive function ABStringComponent_jm_getBackgroundBasicColor_0(this) result(jresult)
    class(ABStringComponent), target :: this
    class(BasicColor), pointer :: jresult
    class(BasicColorFactory), pointer :: jtemp3
        jtemp3 => BasicColorFactory_jm_getInstance_0()
        jresult => jtemp3%f_WHITE
        return
  end function

  recursive function ABStringComponent_jm_getForegroundBasicColor_0(this) result(jresult)
    class(ABStringComponent), target :: this
    class(BasicColor), pointer :: jresult
    class(BasicColorFactory), pointer :: jtemp4
        jtemp4 => BasicColorFactory_jm_getInstance_0()
        jresult => jtemp4%f_WHITE
        return
  end function

  recursive subroutine ABStringComponent_jm_setForegroundBasicColor_1(this, j_foregroundBasicColor)
    class(ABStringComponent), target :: this
    class(BasicColor), target, optional :: j_foregroundBasicColor
    continue
  end subroutine
end module ABStringComponent_m

