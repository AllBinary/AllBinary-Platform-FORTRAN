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
! package org.allbinary.emulator.device
module TrueTypeFontUtil_m
  use JR_m
  use GL10_m
  use BasicColor_m
  use OpenGLESImage_m
  use TrueTypeFontUtilBase_m
  implicit none

  type, extends(TrueTypeFontUtilBase) :: TrueTypeFontUtil
    class(OpenGLESImage), pointer :: f_fontImage => null()
  contains
    procedure :: jm_getAsTextureSize_1 => TrueTypeFontUtil_jm_getAsTextureSize_1
    procedure :: jm_getCellSize_1 => TrueTypeFontUtil_jm_getCellSize_1
    procedure :: jm_getFontBitmap_4 => TrueTypeFontUtil_jm_getFontBitmap_4
    procedure :: jm_saveFontAtlasAsFile_0 => TrueTypeFontUtil_jm_saveFontAtlasAsFile_0
    procedure :: jm_getFontBitmapGL_4 => TrueTypeFontUtil_jm_getFontBitmapGL_4
    procedure :: jm_getFontWidths_2 => TrueTypeFontUtil_jm_getFontWidths_2
  end type

  class(TrueTypeFontUtil), pointer, save :: TrueTypeFontUtil_jcell_instance => null()
  logical, save :: TrueTypeFontUtil_jset_instance = .false.

contains

  function TrueTypeFontUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TrueTypeFontUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TrueTypeFontUtil)
      jresult => object
    end select
  end function

  function TrueTypeFontUtil_jstatic_instance() result(jresult)
    class(TrueTypeFontUtil), pointer :: jresult
    if (.not. TrueTypeFontUtil_jset_instance) then
      TrueTypeFontUtil_jset_instance = .true.
      TrueTypeFontUtil_jcell_instance => TrueTypeFontUtil_jnew_0()
    end if
    jresult => TrueTypeFontUtil_jcell_instance
  end function

  subroutine TrueTypeFontUtil_jsetstatic_instance(jvalue)
    class(TrueTypeFontUtil), target, optional :: jvalue
    TrueTypeFontUtil_jset_instance = .true.
    if (present(jvalue)) then
      TrueTypeFontUtil_jcell_instance => jvalue
    else
      TrueTypeFontUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function TrueTypeFontUtil_jnew_0() result(this)
    class(TrueTypeFontUtil), pointer :: this
    allocate(this)
    this%jclass = 'TrueTypeFontUtil'
    this%f_fontImage => OpenGLESImage_jstatic_NULL_OPENGL_IMAGE()
        continue ! super()
  end function

  recursive function TrueTypeFontUtil_jm_getInstance_0() result(jresult)
    class(TrueTypeFontUtil), pointer :: jresult
        jresult => TrueTypeFontUtil_jstatic_instance()
        return
  end function

  recursive function TrueTypeFontUtil_jm_getAsTextureSize_1(this, j_textureSize) result(jresult)
    class(TrueTypeFontUtil), target :: this
    integer(4), value :: j_textureSize
    integer(4) :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function TrueTypeFontUtil_jm_getCellSize_1(this, j_cellSize) result(jresult)
    class(TrueTypeFontUtil), target :: this
    integer(4), value :: j_cellSize
    integer(4) :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function TrueTypeFontUtil_jm_getFontBitmap_4(this, j_filename, j_fontSize, j_cellSize, j_basicColor) result(jresult)
    class(TrueTypeFontUtil), target :: this
    character(len=*), intent(in) :: j_filename
    integer(4), value :: j_fontSize
    integer(4), value :: j_cellSize
    class(BasicColor), target, optional :: j_basicColor
    class(Image), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive subroutine TrueTypeFontUtil_jm_saveFontAtlasAsFile_0(this)
    class(TrueTypeFontUtil), target :: this
    continue
  end subroutine

  recursive function TrueTypeFontUtil_jm_getFontBitmapGL_4(this, j_gl, j_filename, j_cellSize, j_basicColor) result(jresult)
    class(TrueTypeFontUtil), target :: this
    class(GL10), target, optional :: j_gl
    character(len=*), intent(in) :: j_filename
    integer(4), value :: j_cellSize
    class(BasicColor), target, optional :: j_basicColor
    class(Image), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function TrueTypeFontUtil_jm_getFontWidths_2(this, j_filename, j_fontSize) result(jresult)
    class(TrueTypeFontUtil), target :: this
    character(len=*), intent(in) :: j_filename
    integer(4), value :: j_fontSize
    integer(4), allocatable :: jresult(:)
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function
end module TrueTypeFontUtil_m

function TrueTypeFontUtil_jnew_0_jext() result(this)
  use TrueTypeFontUtil_m, only: JObject, TrueTypeFontUtil_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TrueTypeFontUtil_jnew_0()
end function

