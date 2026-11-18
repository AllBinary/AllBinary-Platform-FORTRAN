! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.graphics.threed
module SWTJOGLProcessor_m
  use JR_m
  use GLHolder_m
  use RatioProcessor_m
  implicit none

  type, extends(JObject) :: SWTJOGLProcessor
    class(GLHolder), pointer :: f_glHolder => null()
  contains
    procedure :: jm_init_2 => SWTJOGLProcessor_jm_init_2
    procedure :: jm_isHolderCreated_0 => SWTJOGLProcessor_jm_isHolderCreated_0
    procedure :: jm_setRenderer_1 => SWTJOGLProcessor_jm_setRenderer_1
    procedure :: jm_isJOGL_0 => SWTJOGLProcessor_jm_isJOGL_0
    procedure :: jm_createSurface_0 => SWTJOGLProcessor_jm_createSurface_0
    procedure :: jm_onSurfaceCreated_0 => SWTJOGLProcessor_jm_onSurfaceCreated_0
    procedure :: jm_onSurfaceChangedForEvent_1 => SWTJOGLProcessor_jm_onSurfaceChangedForEvent_1
    procedure :: jm_onSurfaceChanged_0 => SWTJOGLProcessor_jm_onSurfaceChanged_0
    procedure :: jm_onSurfaceChangedWH_2 => SWTJOGLProcessor_jm_onSurfaceChangedWH_2
    procedure :: jm_addListener_0 => SWTJOGLProcessor_jm_addListener_0
    procedure :: jm_addListeners_1 => SWTJOGLProcessor_jm_addListeners_1
    procedure :: jm_run_0 => SWTJOGLProcessor_jm_run_0
    procedure :: jm_clear_0 => SWTJOGLProcessor_jm_clear_0
    procedure :: jm_setCustom_3 => SWTJOGLProcessor_jm_setCustom_3
    procedure :: jm_setRatioProcessor_1 => SWTJOGLProcessor_jm_setRatioProcessor_1
    procedure :: jm_charWidth_2 => SWTJOGLProcessor_jm_charWidth_2
    procedure :: jm_charsWidth_4 => SWTJOGLProcessor_jm_charsWidth_4
    procedure :: jm_stringWidth_2 => SWTJOGLProcessor_jm_stringWidth_2
    procedure :: jm_substringWidth_4 => SWTJOGLProcessor_jm_substringWidth_4
  end type

  class(SWTJOGLProcessor), pointer, save :: SWTJOGLProcessor_jcell_instance => null()
  logical, save :: SWTJOGLProcessor_jset_instance = .false.

contains

  function SWTJOGLProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SWTJOGLProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SWTJOGLProcessor)
      jresult => object
    end select
  end function

  function SWTJOGLProcessor_jstatic_instance() result(jresult)
    class(SWTJOGLProcessor), pointer :: jresult
    if (.not. SWTJOGLProcessor_jset_instance) then
      SWTJOGLProcessor_jset_instance = .true.
      SWTJOGLProcessor_jcell_instance => SWTJOGLProcessor_jnew_0()
    end if
    jresult => SWTJOGLProcessor_jcell_instance
  end function

  subroutine SWTJOGLProcessor_jsetstatic_instance(jvalue)
    class(SWTJOGLProcessor), target, optional :: jvalue
    SWTJOGLProcessor_jset_instance = .true.
    if (present(jvalue)) then
      SWTJOGLProcessor_jcell_instance => jvalue
    else
      SWTJOGLProcessor_jcell_instance => null()
    end if
  end subroutine

  function SWTJOGLProcessor_jnew_0() result(this)
    class(SWTJOGLProcessor), pointer :: this
    allocate(this)
    this%jclass = 'SWTJOGLProcessor'
    this%f_glHolder => GLHolder_jnew_0()
  end function

  recursive function SWTJOGLProcessor_jm_getInstance_0() result(jresult)
    class(SWTJOGLProcessor), pointer :: jresult
        jresult => SWTJOGLProcessor_jstatic_instance()
        return
  end function

  recursive subroutine SWTJOGLProcessor_jm_init_2(this, j_display, j_comp)
    class(SWTJOGLProcessor), target :: this
    class(JObject), target, optional :: j_display
    class(JObject), target, optional :: j_comp
    continue
  end subroutine

  recursive function SWTJOGLProcessor_jm_isHolderCreated_0(this) result(jresult)
    class(SWTJOGLProcessor), target :: this
    logical :: jresult
        jresult = this%f_glHolder%f_isCreated
        return
  end function

  recursive subroutine SWTJOGLProcessor_jm_setRenderer_1(this, j_renderer)
    class(SWTJOGLProcessor), target :: this
    class(JObject), target, optional :: j_renderer
    continue
  end subroutine

  recursive function SWTJOGLProcessor_jm_isJOGL_0(this) result(jresult)
    class(SWTJOGLProcessor), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine SWTJOGLProcessor_jm_createSurface_0(this)
    class(SWTJOGLProcessor), target :: this
    continue
  end subroutine

  recursive subroutine SWTJOGLProcessor_jm_onSurfaceCreated_0(this)
    class(SWTJOGLProcessor), target :: this
    continue
  end subroutine

  recursive subroutine SWTJOGLProcessor_jm_onSurfaceChangedForEvent_1(this, j_event)
    class(SWTJOGLProcessor), target :: this
    class(JObject), target, optional :: j_event
    continue
  end subroutine

  recursive subroutine SWTJOGLProcessor_jm_onSurfaceChanged_0(this)
    class(SWTJOGLProcessor), target :: this
    continue
  end subroutine

  recursive subroutine SWTJOGLProcessor_jm_onSurfaceChangedWH_2(this, j_width, j_height)
    class(SWTJOGLProcessor), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
    continue
  end subroutine

  recursive subroutine SWTJOGLProcessor_jm_addListener_0(this)
    class(SWTJOGLProcessor), target :: this
    continue
  end subroutine

  recursive subroutine SWTJOGLProcessor_jm_addListeners_1(this, j_midlet)
    class(SWTJOGLProcessor), target :: this
    class(MIDlet), target, optional :: j_midlet
    continue
  end subroutine

  recursive subroutine SWTJOGLProcessor_jm_run_0(this)
    class(SWTJOGLProcessor), target :: this
    continue
  end subroutine

  recursive subroutine SWTJOGLProcessor_jm_clear_0(this)
    class(SWTJOGLProcessor), target :: this
    continue
  end subroutine

  recursive subroutine SWTJOGLProcessor_jm_setCustom_3(this, j_width, j_height, j_ratio)
    class(SWTJOGLProcessor), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
    real(4), value :: j_ratio
    continue
  end subroutine

  recursive subroutine SWTJOGLProcessor_jm_setRatioProcessor_1(this, j_ratioProcessor)
    class(SWTJOGLProcessor), target :: this
    class(RatioProcessor), target, optional :: j_ratioProcessor
    continue
  end subroutine

  recursive function SWTJOGLProcessor_jm_charWidth_2(this, j_font, j_ch) result(jresult)
    class(SWTJOGLProcessor), target :: this
    class(Font), target, optional :: j_font
    integer(4), value :: j_ch
    integer(4) :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function SWTJOGLProcessor_jm_charsWidth_4(this, j_font, j_ch, j_offset, j_length) result(jresult)
    class(SWTJOGLProcessor), target :: this
    class(Font), target, optional :: j_font
    integer(4) :: j_ch(:)
    integer(4), value :: j_offset
    integer(4), value :: j_length
    integer(4) :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function SWTJOGLProcessor_jm_stringWidth_2(this, j_font, j_str) result(jresult)
    class(SWTJOGLProcessor), target :: this
    class(Font), target, optional :: j_font
    character(len=*), intent(in) :: j_str
    integer(4) :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function SWTJOGLProcessor_jm_substringWidth_4(this, j_font, j_str, j_offset, j_len) result(jresult)
    class(SWTJOGLProcessor), target :: this
    class(Font), target, optional :: j_font
    character(len=*), intent(in) :: j_str
    integer(4), value :: j_offset
    integer(4), value :: j_len
    integer(4) :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function
end module SWTJOGLProcessor_m

