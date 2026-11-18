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
module OpenGLCapabilities_m
  use JR_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: OpenGLCapabilities
    logical :: f_CUSTOM_GL_SURFACE_VIEW = .false.
    character(len=:), allocatable :: f_VERSION_1_0
    character(len=:), allocatable :: f_VERSION_1_1
    character(len=:), allocatable :: f_VERSION_2_0
    character(len=:), allocatable :: f_VERSION_3_0
    character(len=:), allocatable :: f_VERSION_3_1
    character(len=:), allocatable :: f_VERSION_3_2
    character(len=:), allocatable :: f_VERSION_HIGHER_THAN_EXISTS
    character(len=:), allocatable :: f_glVersion
    integer(4) :: f_shaderVersion = 0
    character(len=:), allocatable :: f_glInstanceVersion
    integer(4) :: f_maxTextureSize = 0
  contains
    procedure :: jm_isInitialized_0 => OpenGLCapabilities_jm_isInitialized_0
    procedure :: jm_initCapabilities_1 => OpenGLCapabilities_jm_initCapabilities_1
    procedure :: jm_isGlExtensionDrawTexture_0 => OpenGLCapabilities_jm_isGlExtensionDrawTexture_0
    procedure :: jm_getGlVersion_0 => OpenGLCapabilities_jm_getGlVersion_0
    procedure :: jm_isVertexBufferObjectSupport_0 => OpenGLCapabilities_jm_isVertexBufferObjectSupport_0
    procedure :: jm_isTextureSizeValid_1 => OpenGLCapabilities_jm_isTextureSizeValid_1
  end type

  class(OpenGLCapabilities), pointer, save :: OpenGLCapabilities_jcell_instance => null()
  logical, save :: OpenGLCapabilities_jset_instance = .false.

contains

  function OpenGLCapabilities_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLCapabilities), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLCapabilities)
      jresult => object
    end select
  end function

  function OpenGLCapabilities_jstatic_instance() result(jresult)
    class(OpenGLCapabilities), pointer :: jresult
    if (.not. OpenGLCapabilities_jset_instance) then
      OpenGLCapabilities_jset_instance = .true.
      OpenGLCapabilities_jcell_instance => OpenGLCapabilities_jnew_0()
    end if
    jresult => OpenGLCapabilities_jcell_instance
  end function

  subroutine OpenGLCapabilities_jsetstatic_instance(jvalue)
    class(OpenGLCapabilities), target, optional :: jvalue
    OpenGLCapabilities_jset_instance = .true.
    if (present(jvalue)) then
      OpenGLCapabilities_jcell_instance => jvalue
    else
      OpenGLCapabilities_jcell_instance => null()
    end if
  end subroutine

  recursive function OpenGLCapabilities_jnew_0() result(this)
    class(OpenGLCapabilities), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    allocate(this)
    this%jclass = 'OpenGLCapabilities'
    this%f_VERSION_1_0 = ''
    this%f_VERSION_1_1 = ''
    this%f_VERSION_2_0 = ''
    this%f_VERSION_3_0 = ''
    this%f_VERSION_3_1 = ''
    this%f_VERSION_3_2 = ''
    this%f_VERSION_HIGHER_THAN_EXISTS = ''
    this%f_glVersion = ''
    this%f_glInstanceVersion = ''
    this%f_CUSTOM_GL_SURFACE_VIEW = .true.
    this%f_VERSION_1_0 = '1.0'
    this%f_VERSION_1_1 = '1.1'
    this%f_VERSION_2_0 = '2.0'
    this%f_VERSION_3_0 = '3.0'
    this%f_VERSION_3_1 = '3.1'
    this%f_VERSION_3_2 = '3.2'
    this%f_VERSION_HIGHER_THAN_EXISTS = '999.999'
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_glVersion = jtemp1%f_EMPTY_STRING
    this%f_shaderVersion = 0
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_glInstanceVersion = jtemp2%f_EMPTY_STRING
    this%f_maxTextureSize = 64
        continue
  end function

  recursive function OpenGLCapabilities_jm_getInstance_0() result(jresult)
    class(OpenGLCapabilities), pointer :: jresult
        jresult => OpenGLCapabilities_jstatic_instance()
        return
  end function

  recursive function OpenGLCapabilities_jm_isInitialized_0(this) result(jresult)
    class(OpenGLCapabilities), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive subroutine OpenGLCapabilities_jm_initCapabilities_1(this, j_gl)
    class(OpenGLCapabilities), target :: this
    class(JObject), target, optional :: j_gl
    continue
  end subroutine

  recursive function OpenGLCapabilities_jm_isGlExtensionDrawTexture_0(this) result(jresult)
    class(OpenGLCapabilities), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function OpenGLCapabilities_jm_getGlVersion_0(this) result(jresult)
    class(OpenGLCapabilities), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_glVersion
        return
  end function

  recursive function OpenGLCapabilities_jm_isVertexBufferObjectSupport_0(this) result(jresult)
    class(OpenGLCapabilities), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function OpenGLCapabilities_jm_isTextureSizeValid_1(this, j_widthAndHeight) result(jresult)
    class(OpenGLCapabilities), target :: this
    integer(4), value :: j_widthAndHeight
    logical :: jresult
        jresult = .true.
        return
  end function
end module OpenGLCapabilities_m

