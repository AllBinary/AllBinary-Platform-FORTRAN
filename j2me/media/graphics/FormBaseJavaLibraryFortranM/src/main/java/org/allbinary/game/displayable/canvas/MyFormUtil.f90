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
! package org.allbinary.game.displayable.canvas
module MyFormUtil_m
  use JR_m
  use Features_m
  use PointFactory_m
  use Rectangle_m
  use RectangleFactory_m
  use DisplayInfoSingleton_m
  use MyFontProcessor_m
  use OpenGLFeatureFactory_m
  use SWTJOGLProcessor_m
  use LogUtil_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: MyFormUtil
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(Rectangle), pointer :: f_popupMenuRectangle => null()
  contains
    procedure :: jm_updateMeasurement_1 => MyFormUtil_jm_updateMeasurement_1
    procedure :: jm_getPopupMenuRectangle_0 => MyFormUtil_jm_getPopupMenuRectangle_0
  end type

  class(MyFormUtil), pointer, save :: MyFormUtil_jcell_instance => null()
  logical, save :: MyFormUtil_jset_instance = .false.

contains

  function MyFormUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MyFormUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MyFormUtil)
      jresult => object
    end select
  end function

  function MyFormUtil_jstatic_instance() result(jresult)
    class(MyFormUtil), pointer :: jresult
    if (.not. MyFormUtil_jset_instance) then
      MyFormUtil_jset_instance = .true.
      MyFormUtil_jcell_instance => MyFormUtil_jnew_0()
    end if
    jresult => MyFormUtil_jcell_instance
  end function

  subroutine MyFormUtil_jsetstatic_instance(jvalue)
    class(MyFormUtil), target, optional :: jvalue
    MyFormUtil_jset_instance = .true.
    if (present(jvalue)) then
      MyFormUtil_jcell_instance => jvalue
    else
      MyFormUtil_jcell_instance => null()
    end if
  end subroutine

  function MyFormUtil_jnew_0() result(this)
    class(MyFormUtil), pointer :: this
    allocate(this)
    this%jclass = 'MyFormUtil'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_popupMenuRectangle => RectangleFactory_jstatic_SINGLETON()
  end function

  recursive function MyFormUtil_jm_getInstance_0() result(jresult)
    class(MyFormUtil), pointer :: jresult
        jresult => MyFormUtil_jstatic_instance()
        return
  end function

  recursive subroutine MyFormUtil_jm_updateMeasurement_1(this, j_graphics)
    class(MyFormUtil), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    class(Features), pointer :: j_features
    logical :: j_isOpenGL
    integer(4) :: j_TOTAL_CHAR_WIDTH
    integer(4) :: j_width
    class(PointFactory), pointer :: j_pointFactory
    class(OpenGLFeatureFactory), pointer :: jtemp1
    class(SWTJOGLProcessor), pointer :: jtemp2
        j_font => j_graphics%jm_getFont_0()
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        j_features => Features_jm_getInstance_0()
        jtemp1 => OpenGLFeatureFactory_jm_getInstance_0()
        j_isOpenGL = j_features%jm_isDefault_1(jtemp1%f_OPENGL)
        jtemp2 => SWTJOGLProcessor_jm_getInstance_0()
        j_TOTAL_CHAR_WIDTH = merge(2, 3, (jtemp2%jm_isJOGL_0() .and. j_isOpenGL))
        j_width = MyFontProcessor_jm_defaultStringWidth_2(j_font, j_TOTAL_CHAR_WIDTH)
        j_pointFactory => PointFactory_jm_getInstance_0()
        if ((j_displayInfo%jm_getLastHeight_0() < 320)) then
            this%f_popupMenuRectangle => Rectangle_jnew_3(j_pointFactory%jm_createXY_2(0, 25), j_width, (((j_font%jm_getHeight_0() * 4)) + 2))
        else
            this%f_popupMenuRectangle => Rectangle_jnew_3(j_pointFactory%jm_createXY_2(0, (j_displayInfo%jm_getLastHalfHeight_0() - 70)), j_width, ((j_font%jm_getHeight_0() * 5)))
        end if
  end subroutine

  recursive function MyFormUtil_jm_getPopupMenuRectangle_0(this) result(jresult)
    class(MyFormUtil), target :: this
    class(Rectangle), pointer :: jresult
        jresult => this%f_popupMenuRectangle
        return
  end function
end module MyFormUtil_m

