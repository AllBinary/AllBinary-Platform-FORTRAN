! Generated Code Do Not Modify
! package org.allbinary.graphics.font
module FontDebugBase_m
  use JR_m
  use StringMaker_m
  implicit none

  type, extends(JObject) :: FontDebugBase
    character(len=:), allocatable :: f_SET_FONT
  contains
    procedure :: jm_debugMetrics_4 => FontDebugBase_jm_debugMetrics_4
    procedure :: jm_debugDpi_2 => FontDebugBase_jm_debugDpi_2
    procedure :: jm_debugDimension_4 => FontDebugBase_jm_debugDimension_4
  end type

  class(FontDebugBase), pointer, save :: FontDebugBase_jcell_instanceBase => null()
  logical, save :: FontDebugBase_jset_instanceBase = .false.

contains

  function FontDebugBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FontDebugBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FontDebugBase)
      jresult => object
    end select
  end function

  function FontDebugBase_jstatic_instanceBase() result(jresult)
    class(FontDebugBase), pointer :: jresult
    if (.not. FontDebugBase_jset_instanceBase) then
      FontDebugBase_jset_instanceBase = .true.
      FontDebugBase_jcell_instanceBase => FontDebugBase_jnew_0()
    end if
    jresult => FontDebugBase_jcell_instanceBase
  end function

  subroutine FontDebugBase_jsetstatic_instanceBase(jvalue)
    class(FontDebugBase), target, optional :: jvalue
    FontDebugBase_jset_instanceBase = .true.
    if (present(jvalue)) then
      FontDebugBase_jcell_instanceBase => jvalue
    else
      FontDebugBase_jcell_instanceBase => null()
    end if
  end subroutine

  function FontDebugBase_jnew_0() result(this)
    class(FontDebugBase), pointer :: this
    allocate(this)
    this%jclass = 'FontDebugBase'
    this%f_SET_FONT = ''
    this%f_SET_FONT = 'setFont'
  end function

  recursive function FontDebugBase_jm_getInstance_0() result(jresult)
    class(FontDebugBase), pointer :: jresult
        jresult => FontDebugBase_jstatic_instanceBase()
        return
  end function

  recursive subroutine FontDebugBase_jm_debugMetrics_4(this, j_currentFont, j_convertedTextSize, j_displayMetrics, j_stringBuffer)
    class(FontDebugBase), target :: this
    class(Font), target, optional :: j_currentFont
    real(4), value :: j_convertedTextSize
    class(JObject), target, optional :: j_displayMetrics
    class(StringMaker), target, optional :: j_stringBuffer
    continue
  end subroutine

  recursive subroutine FontDebugBase_jm_debugDpi_2(this, j_densityDpi, j_stringBuffer)
    class(FontDebugBase), target :: this
    integer(4), value :: j_densityDpi
    class(StringMaker), target, optional :: j_stringBuffer
    continue
  end subroutine

  recursive subroutine FontDebugBase_jm_debugDimension_4(this, j_currentFont, j_convertedTextSize, j_longestDimensionTotalPixels, j_stringBuffer)
    class(FontDebugBase), target :: this
    class(Font), target, optional :: j_currentFont
    real(4), value :: j_convertedTextSize
    integer(4), value :: j_longestDimensionTotalPixels
    class(StringMaker), target, optional :: j_stringBuffer
    continue
  end subroutine
end module FontDebugBase_m

