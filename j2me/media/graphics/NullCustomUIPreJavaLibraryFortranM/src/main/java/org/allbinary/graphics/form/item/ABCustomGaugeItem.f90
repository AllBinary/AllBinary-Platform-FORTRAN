! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module ABCustomGaugeItem_m
  use JR_m
  use BasicColor_m
  use BasicColorFactory_m
  use StringUtil_m
  use ABCustomItem_m
  implicit none

  type, extends(ABCustomItem) :: ABCustomGaugeItem
  end type

  class(ABCustomGaugeItem), pointer, save :: ABCustomGaugeItem_jcell_NULL_GAUGE_ITEM => null()
  logical, save :: ABCustomGaugeItem_jset_NULL_GAUGE_ITEM = .false.

contains

  function ABCustomGaugeItem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABCustomGaugeItem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABCustomGaugeItem)
      jresult => object
    end select
  end function

  function ABCustomGaugeItem_jstatic_NULL_GAUGE_ITEM() result(jresult)
    class(ABCustomGaugeItem), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
    class(BasicColorFactory), pointer :: jtemp2
    class(BasicColorFactory), pointer :: jtemp3
    if (.not. ABCustomGaugeItem_jset_NULL_GAUGE_ITEM) then
      ABCustomGaugeItem_jset_NULL_GAUGE_ITEM = .true.
      jtemp1 => StringUtil_jm_getInstance_0()
    jtemp2 => BasicColorFactory_jm_getInstance_0()
    jtemp3 => BasicColorFactory_jm_getInstance_0()
    ABCustomGaugeItem_jcell_NULL_GAUGE_ITEM => ABCustomGaugeItem_jnew_5(jtemp1%f_EMPTY_STRING, 1, 0, jtemp2%f_BLACK, jtemp3%f_WHITE)
    end if
    jresult => ABCustomGaugeItem_jcell_NULL_GAUGE_ITEM
  end function

  subroutine ABCustomGaugeItem_jsetstatic_NULL_GAUGE_ITEM(jvalue)
    class(ABCustomGaugeItem), target, optional :: jvalue
    ABCustomGaugeItem_jset_NULL_GAUGE_ITEM = .true.
    if (present(jvalue)) then
      ABCustomGaugeItem_jcell_NULL_GAUGE_ITEM => jvalue
    else
      ABCustomGaugeItem_jcell_NULL_GAUGE_ITEM => null()
    end if
  end subroutine

  recursive function ABCustomGaugeItem_jnew_5(j_label, j_maxValue, j_initialValue, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    character(len=*), intent(in) :: j_label
    integer(4), value :: j_maxValue
    integer(4), value :: j_initialValue
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(ABCustomGaugeItem), pointer :: this
    allocate(this)
    this%jclass = 'ABCustomGaugeItem'
        continue ! super()
  end function
end module ABCustomGaugeItem_m

