! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.graphics.opengles.shader
module CompositeShaderUpdater_m
  use JR_m
  use EGLConfig_m
  use GL10_m
  use NullUtil_m
  use StringUtil_m
  use CommonSeps_m
  use ShaderUpdater_m
  implicit none

  type, extends(ShaderUpdater) :: CompositeShaderUpdater
    class(CommonSeps), pointer :: f_commonSeps => null()
  contains
    procedure :: jm_onSurfaceCreated_3 => CompositeShaderUpdater_jm_onSurfaceCreated_3
    procedure :: jm_onSurfaceDestroyed_1 => CompositeShaderUpdater_jm_onSurfaceDestroyed_1
  end type

  class(CompositeShaderUpdater), pointer, save :: CompositeShaderUpdater_jcell_instanceC => null()
  logical, save :: CompositeShaderUpdater_jset_instanceC = .false.

contains

  function CompositeShaderUpdater_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompositeShaderUpdater), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompositeShaderUpdater)
      jresult => object
    end select
  end function

  function CompositeShaderUpdater_jstatic_instanceC() result(jresult)
    class(CompositeShaderUpdater), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(NullUtil), pointer :: jtemp4
    if (.not. CompositeShaderUpdater_jset_instanceC) then
      CompositeShaderUpdater_jset_instanceC = .true.
      jtemp1 => StringUtil_jm_getInstance_0()
    jtemp2 => StringUtil_jm_getInstance_0()
    jtemp3 => StringUtil_jm_getInstance_0()
    jtemp4 => NullUtil_jm_getInstance_0()
    CompositeShaderUpdater_jcell_instanceC => CompositeShaderUpdater_jnew_4(jtemp1%jm_getArrayInstance_0(), jtemp2%jm_getArrayInstance_0(), jtemp3%jm_getArrayInstance_0(), jtemp4%f_NULL_INT_ARRAY)
    end if
    jresult => CompositeShaderUpdater_jcell_instanceC
  end function

  subroutine CompositeShaderUpdater_jsetstatic_instanceC(jvalue)
    class(CompositeShaderUpdater), target, optional :: jvalue
    CompositeShaderUpdater_jset_instanceC = .true.
    if (present(jvalue)) then
      CompositeShaderUpdater_jcell_instanceC => jvalue
    else
      CompositeShaderUpdater_jcell_instanceC => null()
    end if
  end subroutine

  recursive function CompositeShaderUpdater_jnew_4(j_uniformBlockArray, j_uniformArray, j_attributeArray, j_attributeHandleArray) result(this)
    type(JString) :: j_uniformBlockArray(:)
    type(JString) :: j_uniformArray(:)
    type(JString) :: j_attributeArray(:)
    integer(4) :: j_attributeHandleArray(:)
    class(CompositeShaderUpdater), pointer :: this
    allocate(this)
    this%jclass = 'CompositeShaderUpdater'
    this%f_commonSeps => CommonSeps_jm_getInstance_0()
        continue
  end function

  recursive function CompositeShaderUpdater_jm_getInstance_0() result(jresult)
    class(CompositeShaderUpdater), pointer :: jresult
        jresult => CompositeShaderUpdater_jstatic_instanceC()
        return
  end function

  recursive subroutine CompositeShaderUpdater_jm_onSurfaceCreated_3(this, j_gl, j_eglConfig, j_programHandle)
    class(CompositeShaderUpdater), target :: this
    class(GL10), target, optional :: j_gl
    class(EGLConfig), target, optional :: j_eglConfig
    integer(4), value :: j_programHandle
    continue
  end subroutine

  recursive subroutine CompositeShaderUpdater_jm_onSurfaceDestroyed_1(this, j_gl)
    class(CompositeShaderUpdater), target :: this
    class(GL10), target, optional :: j_gl
    continue
  end subroutine
end module CompositeShaderUpdater_m

