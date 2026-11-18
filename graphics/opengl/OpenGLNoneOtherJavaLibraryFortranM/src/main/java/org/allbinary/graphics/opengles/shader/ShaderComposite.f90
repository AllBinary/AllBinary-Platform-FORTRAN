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
module ShaderComposite_m
  use JR_m
  use GL10_m
  use NullOpenGLProcessorFactory_m
  use OpenGLProcessor_m
  use StringUtil_m
  use Shader_m
  use ShaderInitializer_m
  use CompositeShaderUpdater_m
  use ModelViewProjection_m
  use NullOpenGLTextureProcessor_m
  use OpenGLObject3dProcessor_m
  implicit none

  type, extends(JObject) :: ShaderComposite
    class(OpenGLProcessor), pointer :: f_disableProgramShaderOpenGLProcessor => null()
    character(len=:), allocatable :: f_requiresOpenGLVersion
    type(JRef), allocatable :: f_shaderArray(:)
    class(ShaderInitializer), pointer :: f_shaderInitializer => null()
    class(CompositeShaderUpdater), pointer :: f_compositeShaderUpdater => null()
    class(ModelViewProjection), pointer :: f_modelViewProjection => null()
    class(OpenGLProcessor), pointer :: f_colorOpenGLProcessor => null()
    class(OpenGLProcessor), pointer :: f_vertexOpenGLProcessor => null()
    class(OpenGLProcessor), pointer :: f_useProgramShaderOpenGLProcessor => null()
    class(OpenGLProcessor), pointer :: f_shaderMatrixOpenGLProcessor => null()
    class(OpenGLProcessor), pointer :: f_colorEnableVertexAttribArrayOpenGLProcessor => null()
    class(OpenGLProcessor), pointer :: f_normalEnableVertexAttribArrayOpenGLProcessor => null()
    class(OpenGLProcessor), pointer :: f_vertexEnableVertexAttribArrayOpenGLProcessor => null()
    class(OpenGLProcessor), pointer :: f_textureEnableVertexAttribArrayOpenGLProcessor => null()
    class(OpenGLProcessor), pointer :: f_colorDisableVertexAttribArrayOpenGLProcessor => null()
    class(OpenGLProcessor), pointer :: f_normalDisableVertexAttribArrayOpenGLProcessor => null()
    class(OpenGLProcessor), pointer :: f_vertexDisableVertexAttribArrayOpenGLProcessor => null()
    class(OpenGLProcessor), pointer :: f_textureDisableVertexAttribArrayOpenGLProcessor => null()
    class(OpenGLObject3dProcessor), pointer :: f_uniformLightPositionOpenGLProcessor => null()
    class(OpenGLObject3dProcessor), pointer :: f_uniformLightColorOpenGLProcessor => null()
    class(OpenGLObject3dProcessor), pointer :: f_uniformCameraPositionOpenGLProcessor => null()
    class(OpenGLObject3dProcessor), pointer :: f_uniformTextureUnitOpenGLProcessor => null()
    integer(4) :: f_programHandle = 0
  contains
    procedure :: jm_init_1 => ShaderComposite_jm_init_1
  end type


contains

  function ShaderComposite_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ShaderComposite), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ShaderComposite)
      jresult => object
    end select
  end function

  recursive function ShaderComposite_jnew_8(j_requiresOpenGLVersion, j_shaderArray, j_compositeShaderUpdater, j_shaderInitializer, j_modelViewProjection, j_colorOpenGLProcessor, j_vertexOpenGLProcessor, j_disableProgramShaderOpenGLProcessor) result(this)
    character(len=*), intent(in) :: j_requiresOpenGLVersion
    type(JRef) :: j_shaderArray(:)
    class(CompositeShaderUpdater), target, optional :: j_compositeShaderUpdater
    class(ShaderInitializer), target, optional :: j_shaderInitializer
    class(ModelViewProjection), target, optional :: j_modelViewProjection
    class(OpenGLProcessor), target, optional :: j_colorOpenGLProcessor
    class(OpenGLProcessor), target, optional :: j_vertexOpenGLProcessor
    class(OpenGLProcessor), target, optional :: j_disableProgramShaderOpenGLProcessor
    class(ShaderComposite), pointer :: this
    allocate(this)
    this%jclass = 'ShaderComposite'
    this%f_requiresOpenGLVersion = ''
    
    
    
    
    
    
    
    
    this%f_useProgramShaderOpenGLProcessor => NullOpenGLProcessorFactory_jm_getInstance_0()
    this%f_shaderMatrixOpenGLProcessor => NullOpenGLProcessorFactory_jm_getInstance_0()
    this%f_colorEnableVertexAttribArrayOpenGLProcessor => NullOpenGLProcessorFactory_jm_getInstance_0()
    this%f_normalEnableVertexAttribArrayOpenGLProcessor => NullOpenGLProcessorFactory_jm_getInstance_0()
    this%f_vertexEnableVertexAttribArrayOpenGLProcessor => NullOpenGLProcessorFactory_jm_getInstance_0()
    this%f_textureEnableVertexAttribArrayOpenGLProcessor => NullOpenGLProcessorFactory_jm_getInstance_0()
    this%f_colorDisableVertexAttribArrayOpenGLProcessor => NullOpenGLProcessorFactory_jm_getInstance_0()
    this%f_normalDisableVertexAttribArrayOpenGLProcessor => NullOpenGLProcessorFactory_jm_getInstance_0()
    this%f_vertexDisableVertexAttribArrayOpenGLProcessor => NullOpenGLProcessorFactory_jm_getInstance_0()
    this%f_textureDisableVertexAttribArrayOpenGLProcessor => NullOpenGLProcessorFactory_jm_getInstance_0()
    this%f_uniformLightPositionOpenGLProcessor => NullOpenGLTextureProcessor_jm_getInstance_0()
    this%f_uniformLightColorOpenGLProcessor => NullOpenGLTextureProcessor_jm_getInstance_0()
    this%f_uniformCameraPositionOpenGLProcessor => NullOpenGLTextureProcessor_jm_getInstance_0()
    this%f_uniformTextureUnitOpenGLProcessor => NullOpenGLTextureProcessor_jm_getInstance_0()
    
        this%f_requiresOpenGLVersion = j_requiresOpenGLVersion
        this%f_shaderArray = j_shaderArray
        this%f_shaderInitializer => j_shaderInitializer
        this%f_compositeShaderUpdater => j_compositeShaderUpdater
        this%f_modelViewProjection => j_modelViewProjection
        this%f_colorOpenGLProcessor => j_colorOpenGLProcessor
        this%f_vertexOpenGLProcessor => j_vertexOpenGLProcessor
        this%f_disableProgramShaderOpenGLProcessor => j_disableProgramShaderOpenGLProcessor
  end function

  recursive subroutine ShaderComposite_jm_init_1(this, j_gl)
    class(ShaderComposite), target :: this
    class(GL10), target, optional :: j_gl
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        this%f_programHandle = this%f_shaderInitializer%jm_init_3(j_gl, this%f_shaderArray, jtemp1%jm_getArrayInstance_0())
  end subroutine
end module ShaderComposite_m

