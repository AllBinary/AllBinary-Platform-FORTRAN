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
module NullOpenGLTextureProcessor_m
  use JR_m
  use OpenGLObject3dProcessor_m
  implicit none

  type, extends(JObject) :: NullOpenGLTextureProcessor
  end type

  class(OpenGLObject3dProcessor), pointer, save :: NullOpenGLTextureProcessor_jcell_instance => null()
  logical, save :: NullOpenGLTextureProcessor_jset_instance = .false.

contains

  function NullOpenGLTextureProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullOpenGLTextureProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullOpenGLTextureProcessor)
      jresult => object
    end select
  end function

  function NullOpenGLTextureProcessor_jstatic_instance() result(jresult)
    class(OpenGLObject3dProcessor), pointer :: jresult
    if (.not. NullOpenGLTextureProcessor_jset_instance) then
      NullOpenGLTextureProcessor_jset_instance = .true.
      NullOpenGLTextureProcessor_jcell_instance => OpenGLObject3dProcessor_jnew_0()
    end if
    jresult => NullOpenGLTextureProcessor_jcell_instance
  end function

  subroutine NullOpenGLTextureProcessor_jsetstatic_instance(jvalue)
    class(OpenGLObject3dProcessor), target, optional :: jvalue
    NullOpenGLTextureProcessor_jset_instance = .true.
    if (present(jvalue)) then
      NullOpenGLTextureProcessor_jcell_instance => jvalue
    else
      NullOpenGLTextureProcessor_jcell_instance => null()
    end if
  end subroutine

  function NullOpenGLTextureProcessor_jnew_0() result(this)
    class(NullOpenGLTextureProcessor), pointer :: this
    allocate(this)
    this%jclass = 'NullOpenGLTextureProcessor'
  end function

  recursive function NullOpenGLTextureProcessor_jm_getInstance_0() result(jresult)
    class(OpenGLObject3dProcessor), pointer :: jresult
        jresult => NullOpenGLTextureProcessor_jstatic_instance()
        return
  end function
end module NullOpenGLTextureProcessor_m

