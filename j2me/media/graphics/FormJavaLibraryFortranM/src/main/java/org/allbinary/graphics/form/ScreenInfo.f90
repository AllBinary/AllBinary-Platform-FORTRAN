! Generated Code Do Not Modify
! package org.allbinary.graphics.form
module ScreenInfo_m
  use JR_m
  implicit none

  type, extends(JObject) :: ScreenInfo
    integer(4) :: f_SMALL_WIDTH = 0
    integer(4) :: f_SMALL_HEIGHT = 0
    integer(4) :: f_MEDIUM_WIDTH = 0
    integer(4) :: f_MEDIUM_HEIGHT = 0
  end type

  class(ScreenInfo), pointer, save :: ScreenInfo_jcell_instance => null()
  logical, save :: ScreenInfo_jset_instance = .false.

contains

  function ScreenInfo_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScreenInfo), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScreenInfo)
      jresult => object
    end select
  end function

  function ScreenInfo_jstatic_instance() result(jresult)
    class(ScreenInfo), pointer :: jresult
    if (.not. ScreenInfo_jset_instance) then
      ScreenInfo_jset_instance = .true.
      ScreenInfo_jcell_instance => ScreenInfo_jnew_0()
    end if
    jresult => ScreenInfo_jcell_instance
  end function

  subroutine ScreenInfo_jsetstatic_instance(jvalue)
    class(ScreenInfo), target, optional :: jvalue
    ScreenInfo_jset_instance = .true.
    if (present(jvalue)) then
      ScreenInfo_jcell_instance => jvalue
    else
      ScreenInfo_jcell_instance => null()
    end if
  end subroutine

  function ScreenInfo_jnew_0() result(this)
    class(ScreenInfo), pointer :: this
    allocate(this)
    this%jclass = 'ScreenInfo'
    this%f_SMALL_WIDTH = 320
    this%f_SMALL_HEIGHT = 240
    this%f_MEDIUM_WIDTH = 800
    this%f_MEDIUM_HEIGHT = 600
  end function

  recursive function ScreenInfo_jm_getInstance_0() result(jresult)
    class(ScreenInfo), pointer :: jresult
        jresult => ScreenInfo_jstatic_instance()
        return
  end function
end module ScreenInfo_m

