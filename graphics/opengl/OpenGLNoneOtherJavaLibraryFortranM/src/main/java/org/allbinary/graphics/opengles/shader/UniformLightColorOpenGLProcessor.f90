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
module UniformLightColorOpenGLProcessor_m
  use JR_m
  use GL10_m
  use OpenGLObject3dProcessor_m
  use ShaderComposite_m
  implicit none

  type, extends(OpenGLObject3dProcessor) :: UniformLightColorOpenGLProcessor
  contains
    procedure :: jm_process_2 => UniformLightColorOpenGLProcessor_jm_process_2
  end type


contains

  function UniformLightColorOpenGLProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UniformLightColorOpenGLProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UniformLightColorOpenGLProcessor)
      jresult => object
    end select
  end function

  recursive function UniformLightColorOpenGLProcessor_jnew_2(j_shaderComposite, j_handleIndex) result(this)
    class(ShaderComposite), target, optional :: j_shaderComposite
    integer(4), value :: j_handleIndex
    class(UniformLightColorOpenGLProcessor), pointer :: this
    allocate(this)
    this%jclass = 'UniformLightColorOpenGLProcessor'
        continue
  end function

  recursive subroutine UniformLightColorOpenGLProcessor_jm_process_2(this, j_gl, j_object3d)
    class(UniformLightColorOpenGLProcessor), target :: this
    class(GL10), target, optional :: j_gl
    class(JObject), target, optional :: j_object3d
    continue
  end subroutine
end module UniformLightColorOpenGLProcessor_m

