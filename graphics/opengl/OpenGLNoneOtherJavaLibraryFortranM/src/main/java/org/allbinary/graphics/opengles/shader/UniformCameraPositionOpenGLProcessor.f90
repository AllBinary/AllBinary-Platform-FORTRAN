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
module UniformCameraPositionOpenGLProcessor_m
  use JR_m
  use GL10_m
  use OpenGLObject3dProcessor_m
  use ShaderComposite_m
  implicit none

  type, extends(OpenGLObject3dProcessor) :: UniformCameraPositionOpenGLProcessor
  contains
    procedure :: jm_process_2 => UniformCameraPositionOpenGLProcessor_jm_process_2
  end type


contains

  function UniformCameraPositionOpenGLProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UniformCameraPositionOpenGLProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UniformCameraPositionOpenGLProcessor)
      jresult => object
    end select
  end function

  recursive function UniformCameraPositionOpenGLProcessor_jnew_2(j_shaderComposite, j_handleIndex) result(this)
    class(ShaderComposite), target, optional :: j_shaderComposite
    integer(4), value :: j_handleIndex
    class(UniformCameraPositionOpenGLProcessor), pointer :: this
    allocate(this)
    this%jclass = 'UniformCameraPositionOpenGLProcessor'
        continue
  end function

  recursive subroutine UniformCameraPositionOpenGLProcessor_jm_process_2(this, j_gl, j_object3d)
    class(UniformCameraPositionOpenGLProcessor), target :: this
    class(GL10), target, optional :: j_gl
    class(JObject), target, optional :: j_object3d
    continue
  end subroutine
end module UniformCameraPositionOpenGLProcessor_m

