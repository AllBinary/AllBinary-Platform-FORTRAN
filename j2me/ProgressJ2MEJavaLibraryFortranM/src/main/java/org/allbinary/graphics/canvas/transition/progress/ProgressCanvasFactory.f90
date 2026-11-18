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
! package org.allbinary.graphics.canvas.transition.progress
module ProgressCanvasFactory_m
  use JR_m
  use BasicColorFactory_m
  use NullPaintable_m
  use PaintableInterface_m
  use NullUtil_m
  use StringUtil_m
  use ProgressCanvas_m
  implicit none

  type, extends(JObject) :: ProgressCanvasFactory
  end type

  class(JObject), pointer, save :: ProgressCanvasFactory_jcell_PROGRESS_FORM_SCREEN => null()
  logical, save :: ProgressCanvasFactory_jset_PROGRESS_FORM_SCREEN = .false.

contains

  function ProgressCanvasFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ProgressCanvasFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ProgressCanvasFactory)
      jresult => object
    end select
  end function

  function ProgressCanvasFactory_jstatic_PROGRESS_FORM_SCREEN() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. ProgressCanvasFactory_jset_PROGRESS_FORM_SCREEN) then
      ProgressCanvasFactory_jset_PROGRESS_FORM_SCREEN = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    ProgressCanvasFactory_jcell_PROGRESS_FORM_SCREEN => jtemp1%f_NULL_OBJECT
    end if
    jresult => ProgressCanvasFactory_jcell_PROGRESS_FORM_SCREEN
  end function

  subroutine ProgressCanvasFactory_jsetstatic_PROGRESS_FORM_SCREEN(jvalue)
    class(JObject), target, optional :: jvalue
    ProgressCanvasFactory_jset_PROGRESS_FORM_SCREEN = .true.
    if (present(jvalue)) then
      ProgressCanvasFactory_jcell_PROGRESS_FORM_SCREEN => jvalue
    else
      ProgressCanvasFactory_jcell_PROGRESS_FORM_SCREEN => null()
    end if
  end subroutine

  function ProgressCanvasFactory_jnew_0() result(this)
    class(ProgressCanvasFactory), pointer :: this
    allocate(this)
    this%jclass = 'ProgressCanvasFactory'
  end function

  recursive function ProgressCanvasFactory_jm_getInstance_0() result(jresult)
    class(ProgressCanvas), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(BasicColorFactory), pointer :: jtemp4
    class(BasicColorFactory), pointer :: jtemp5
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(ProgressCanvasFactory_jstatic_PROGRESS_FORM_SCREEN(), jtemp2%f_NULL_OBJECT)) then
            jtemp3 => StringUtil_jm_getInstance_0()
            jtemp4 => BasicColorFactory_jm_getInstance_0()
            jtemp5 => BasicColorFactory_jm_getInstance_0()
            call ProgressCanvasFactory_jsetstatic_PROGRESS_FORM_SCREEN(ProgressCanvas_jnew_3(jtemp3%f_EMPTY_STRING, jtemp4%f_BLACK, jtemp5%f_WHITE))
        end if
        jresult => ProgressCanvas_jcast(ProgressCanvasFactory_jstatic_PROGRESS_FORM_SCREEN())
        return
  end function

  recursive function ProgressCanvasFactory_jm_getLazyInstance_0() result(jresult)
    class(PaintableInterface), pointer :: jresult
        jresult => NullPaintable_jm_getInstance_0()
        return
  end function
end module ProgressCanvasFactory_m

