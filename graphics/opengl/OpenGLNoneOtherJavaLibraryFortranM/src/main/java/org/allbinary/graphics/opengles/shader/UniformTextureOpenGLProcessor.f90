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
module UniformTextureOpenGLProcessor_m
  use JR_m
  use GL10_m
  use OpenGLObject3dProcessor_m
  use ShaderComposite_m
  implicit none

  type, extends(OpenGLObject3dProcessor) :: UniformTextureOpenGLProcessor
  contains
    procedure :: jm_process_3 => UniformTextureOpenGLProcessor_jm_process_3
  end type


contains

  function UniformTextureOpenGLProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UniformTextureOpenGLProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UniformTextureOpenGLProcessor)
      jresult => object
    end select
  end function

  recursive function UniformTextureOpenGLProcessor_jnew_2(j_shaderComposite, j_handleIndex) result(this)
    class(ShaderComposite), target, optional :: j_shaderComposite
    integer(4), value :: j_handleIndex
    class(UniformTextureOpenGLProcessor), pointer :: this
    allocate(this)
    this%jclass = 'UniformTextureOpenGLProcessor'
        continue
  end function

  recursive subroutine UniformTextureOpenGLProcessor_jm_process_3(this, j_gl, j_object3d, j_index)
    class(UniformTextureOpenGLProcessor), target :: this
    class(GL10), target, optional :: j_gl
    class(JObject), target, optional :: j_object3d
    integer(4), value :: j_index
    continue
  end subroutine
end module UniformTextureOpenGLProcessor_m

