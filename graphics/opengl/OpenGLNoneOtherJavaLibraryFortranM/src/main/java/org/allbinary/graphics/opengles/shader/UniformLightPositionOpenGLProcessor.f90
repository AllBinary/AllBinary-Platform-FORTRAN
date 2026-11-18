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
module UniformLightPositionOpenGLProcessor_m
  use JR_m
  use GL10_m
  use OpenGLObject3dProcessor_m
  use ShaderComposite_m
  implicit none

  type, extends(OpenGLObject3dProcessor) :: UniformLightPositionOpenGLProcessor
  contains
    procedure :: jm_process_2 => UniformLightPositionOpenGLProcessor_jm_process_2
  end type


contains

  function UniformLightPositionOpenGLProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UniformLightPositionOpenGLProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UniformLightPositionOpenGLProcessor)
      jresult => object
    end select
  end function

  recursive function UniformLightPositionOpenGLProcessor_jnew_2(j_shaderComposite, j_handleIndex) result(this)
    class(ShaderComposite), target, optional :: j_shaderComposite
    integer(4), value :: j_handleIndex
    class(UniformLightPositionOpenGLProcessor), pointer :: this
    allocate(this)
    this%jclass = 'UniformLightPositionOpenGLProcessor'
        continue
  end function

  recursive subroutine UniformLightPositionOpenGLProcessor_jm_process_2(this, j_gl, j_object3d)
    class(UniformLightPositionOpenGLProcessor), target :: this
    class(GL10), target, optional :: j_gl
    class(JObject), target, optional :: j_object3d
    continue
  end subroutine
end module UniformLightPositionOpenGLProcessor_m

