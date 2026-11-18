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
! package org.allbinary.graphics.opengles
module OpenGLOptions_m
  use JR_m
  use Features_m
  use GameFeatureChoiceGroups_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use OpenGLFeatureFactory_m
  implicit none

  type, extends(JObject) :: OpenGLOptions
  contains
    procedure :: jm_init_0 => OpenGLOptions_jm_init_0
  end type


contains

  function OpenGLOptions_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLOptions), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLOptions)
      jresult => object
    end select
  end function

  function OpenGLOptions_jnew_0() result(this)
    class(OpenGLOptions), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLOptions'
  end function

  recursive subroutine OpenGLOptions_jm_init_0(this)
    class(OpenGLOptions), target :: this
    class(OpenGLFeatureFactory), pointer :: j_openGLFeatureFactory
    class(BasicArrayList), pointer :: j_openGLMultipleList
    class(BasicArrayList), pointer :: j_openGLVersionSelectorMultipleList
    class(BasicArrayList), pointer :: j_openGLImageColorMultipleList
    class(Features), pointer :: jtemp1
    class(GameFeatureChoiceGroups), pointer :: jtemp2
    class(GameFeatureChoiceGroups), pointer :: jtemp3
    class(GameFeatureChoiceGroups), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_openGLFeatureFactory => OpenGLFeatureFactory_jm_getInstance_0()
        jtemp1 => Features_jm_getInstance_0()
        if (jtemp1%jm_isFeature_1(j_openGLFeatureFactory%f_OPENGL_OPTIONS)) then
            j_openGLMultipleList => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_openGLMultipleList%jm_add_1(j_openGLFeatureFactory%f_OPENGL)
            jtemp2 => GameFeatureChoiceGroups_jm_getMultipleInstance_0()
            call jtemp2%jm_add_2('OpenGL (Complete Restart)', j_openGLMultipleList)
            j_openGLVersionSelectorMultipleList => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_openGLVersionSelectorMultipleList%jm_add_1(j_openGLFeatureFactory%f_OPENGL_AUTO_SELECT)
            jdiscardBoolean = j_openGLVersionSelectorMultipleList%jm_add_1(j_openGLFeatureFactory%f_OPENGL_MINIMUM)
            jtemp3 => GameFeatureChoiceGroups_jm_getExclusiveInstance_0()
            call jtemp3%jm_add_2('OpenGL Version Selector', j_openGLVersionSelectorMultipleList)
            j_openGLImageColorMultipleList => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_openGLImageColorMultipleList%jm_add_1(j_openGLFeatureFactory%f_IMAGE_COLOR_DEPTH_4444)
            jdiscardBoolean = j_openGLImageColorMultipleList%jm_add_1(j_openGLFeatureFactory%f_IMAGE_COLOR_DEPTH_8888)
            jtemp4 => GameFeatureChoiceGroups_jm_getExclusiveInstance_0()
            call jtemp4%jm_add_2('OpenGL Image Color RGBA', j_openGLImageColorMultipleList)
        end if
  end subroutine
end module OpenGLOptions_m

