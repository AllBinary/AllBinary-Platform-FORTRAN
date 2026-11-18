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
module ShaderManager_m
  use JR_m
  use GL10_m
  use CommonStrings_m
  use BasicArrayList_m
  implicit none

  type, extends(JObject) :: ShaderManager
    character(len=:), allocatable :: f_LOAD_SHADER
    class(CommonStrings), pointer :: f_commonStrings => null()
    integer(4) :: f_GL_VERTEX_SHADER = 0
    integer(4) :: f_GL_FRAGMENT_SHADER = 0
  contains
    procedure :: jm_load_4 => ShaderManager_jm_load_4
    procedure :: jm_loadShader_4 => ShaderManager_jm_loadShader_4
  end type

  class(ShaderManager), pointer, save :: ShaderManager_jcell_instance => null()
  logical, save :: ShaderManager_jset_instance = .false.

contains

  function ShaderManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ShaderManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ShaderManager)
      jresult => object
    end select
  end function

  function ShaderManager_jstatic_instance() result(jresult)
    class(ShaderManager), pointer :: jresult
    if (.not. ShaderManager_jset_instance) then
      ShaderManager_jset_instance = .true.
      ShaderManager_jcell_instance => ShaderManager_jnew_2((-1), (-1))
    end if
    jresult => ShaderManager_jcell_instance
  end function

  subroutine ShaderManager_jsetstatic_instance(jvalue)
    class(ShaderManager), target, optional :: jvalue
    ShaderManager_jset_instance = .true.
    if (present(jvalue)) then
      ShaderManager_jcell_instance => jvalue
    else
      ShaderManager_jcell_instance => null()
    end if
  end subroutine

  recursive function ShaderManager_jnew_2(j_GL_VERTEX_SHADER, j_GL_FRAGMENT_SHADER) result(this)
    integer(4), value :: j_GL_VERTEX_SHADER
    integer(4), value :: j_GL_FRAGMENT_SHADER
    class(ShaderManager), pointer :: this
    allocate(this)
    this%jclass = 'ShaderManager'
    this%f_LOAD_SHADER = ''
    this%f_LOAD_SHADER = 'loadShader'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    
        this%f_GL_VERTEX_SHADER = j_GL_VERTEX_SHADER
        this%f_GL_FRAGMENT_SHADER = j_GL_FRAGMENT_SHADER
  end function

  recursive function ShaderManager_jm_getInstance_0() result(jresult)
    class(ShaderManager), pointer :: jresult
        jresult => ShaderManager_jstatic_instance()
        return
  end function

  recursive function ShaderManager_jm_load_4(this, j_gl, j_resource, j_shaderAsStringArray, j_shaderType) result(jresult)
    class(ShaderManager), target :: this
    class(GL10), target, optional :: j_gl
    character(len=*), intent(in) :: j_resource
    type(JString) :: j_shaderAsStringArray(:)
    integer(4), value :: j_shaderType
    integer(4) :: jresult
        jresult = (-1)
        return
  end function

  recursive function ShaderManager_jm_loadShader_4(this, j_gl, j_resource, j_stringList, j_shaderType) result(jresult)
    class(ShaderManager), target :: this
    class(GL10), target, optional :: j_gl
    character(len=*), intent(in) :: j_resource
    class(BasicArrayList), target, optional :: j_stringList
    integer(4), value :: j_shaderType
    integer(4) :: jresult
        jresult = (-1)
        return
  end function
end module ShaderManager_m

