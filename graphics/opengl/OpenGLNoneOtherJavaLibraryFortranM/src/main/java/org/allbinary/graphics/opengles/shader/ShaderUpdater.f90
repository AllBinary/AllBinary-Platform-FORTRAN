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
module ShaderUpdater_m
  use JR_m
  use EGLConfig_m
  use GL10_m
  use RendererStrings_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: ShaderUpdater
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(RendererStrings), pointer :: f_rendererStrings => null()
  contains
    procedure :: jm_onSurfaceCreated_2 => ShaderUpdater_jm_onSurfaceCreated_2
  end type

  class(ShaderUpdater), pointer, save :: ShaderUpdater_jcell_instance => null()
  logical, save :: ShaderUpdater_jset_instance = .false.

contains

  function ShaderUpdater_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ShaderUpdater), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ShaderUpdater)
      jresult => object
    end select
  end function

  function ShaderUpdater_jstatic_instance() result(jresult)
    class(ShaderUpdater), pointer :: jresult
    if (.not. ShaderUpdater_jset_instance) then
      ShaderUpdater_jset_instance = .true.
      ShaderUpdater_jcell_instance => ShaderUpdater_jnew_0()
    end if
    jresult => ShaderUpdater_jcell_instance
  end function

  subroutine ShaderUpdater_jsetstatic_instance(jvalue)
    class(ShaderUpdater), target, optional :: jvalue
    ShaderUpdater_jset_instance = .true.
    if (present(jvalue)) then
      ShaderUpdater_jcell_instance => jvalue
    else
      ShaderUpdater_jcell_instance => null()
    end if
  end subroutine

  function ShaderUpdater_jnew_0() result(this)
    class(ShaderUpdater), pointer :: this
    allocate(this)
    this%jclass = 'ShaderUpdater'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_rendererStrings => RendererStrings_jm_getInstance_0()
  end function

  recursive function ShaderUpdater_jm_getInstance_0() result(jresult)
    class(ShaderUpdater), pointer :: jresult
        jresult => ShaderUpdater_jstatic_instance()
        return
  end function

  recursive subroutine ShaderUpdater_jm_onSurfaceCreated_2(this, j_gl, j_eglConfig)
    class(ShaderUpdater), target :: this
    class(GL10), target, optional :: j_gl
    class(EGLConfig), target, optional :: j_eglConfig
    continue
  end subroutine
end module ShaderUpdater_m

