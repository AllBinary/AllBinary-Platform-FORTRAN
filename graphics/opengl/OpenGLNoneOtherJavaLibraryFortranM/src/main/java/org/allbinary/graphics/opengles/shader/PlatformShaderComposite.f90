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
module PlatformShaderComposite_m
  use JR_m
  use NullOpenGLProcessorFactory_m
  use OpenGLProcessor_m
  use ShaderComposite_m
  use Shader_m
  use CompositeShaderUpdater_m
  use ShaderInitializer_m
  use ModelViewProjection_m
  implicit none

  type, extends(ShaderComposite) :: PlatformShaderComposite
  end type


contains

  function PlatformShaderComposite_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlatformShaderComposite), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlatformShaderComposite)
      jresult => object
    end select
  end function

  recursive function PlatformShaderComposite_jnew_7(j_requiresOpenGLVersion, j_shaderArray, j_compositeShaderUpdater, j_shaderInitializer, j_modelViewProjection, j_colorOpenGLProcessor, j_vertexOpenGLProcessor) result(this)
    character(len=*), intent(in) :: j_requiresOpenGLVersion
    type(JRef) :: j_shaderArray(:)
    class(CompositeShaderUpdater), target, optional :: j_compositeShaderUpdater
    class(ShaderInitializer), target, optional :: j_shaderInitializer
    class(ModelViewProjection), target, optional :: j_modelViewProjection
    class(OpenGLProcessor), target, optional :: j_colorOpenGLProcessor
    class(OpenGLProcessor), target, optional :: j_vertexOpenGLProcessor
    class(PlatformShaderComposite), pointer :: this
    allocate(this)
    this%jclass = 'PlatformShaderComposite'
        continue ! super()
  end function
end module PlatformShaderComposite_m

