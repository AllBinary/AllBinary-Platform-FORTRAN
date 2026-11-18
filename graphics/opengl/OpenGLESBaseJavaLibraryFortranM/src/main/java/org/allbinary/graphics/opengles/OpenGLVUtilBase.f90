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
! package org.allbinary.graphics.opengles
module OpenGLVUtilBase_m
  use JR_m
  use GL10_m
  implicit none

  type, extends(JObject) :: OpenGLVUtilBase
  contains
    procedure :: jm_glTexEnvix_4 => OpenGLVUtilBase_jm_glTexEnvix_4
    procedure :: jm_glTexParameterix_4 => OpenGLVUtilBase_jm_glTexParameterix_4
    procedure :: jm_glGenerateMipmap_4 => OpenGLVUtilBase_jm_glGenerateMipmap_4
  end type


contains

  function OpenGLVUtilBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLVUtilBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLVUtilBase)
      jresult => object
    end select
  end function

  function OpenGLVUtilBase_jnew_0() result(this)
    class(OpenGLVUtilBase), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLVUtilBase'
  end function

  recursive subroutine OpenGLVUtilBase_jm_glTexEnvix_4(this, j_gl, j_target, j_pname, j_param)
    class(OpenGLVUtilBase), target :: this
    class(GL10), target, optional :: j_gl
    integer(4), value :: j_target
    integer(4), value :: j_pname
    integer(4), value :: j_param
    continue
  end subroutine

  recursive subroutine OpenGLVUtilBase_jm_glTexParameterix_4(this, j_gl, j_target, j_pname, j_param)
    class(OpenGLVUtilBase), target :: this
    class(GL10), target, optional :: j_gl
    integer(4), value :: j_target
    integer(4), value :: j_pname
    integer(4), value :: j_param
    continue
  end subroutine

  recursive subroutine OpenGLVUtilBase_jm_glGenerateMipmap_4(this, j_gl, j_textureId, j_target, j_generateMipMap)
    class(OpenGLVUtilBase), target :: this
    class(GL10), target, optional :: j_gl
    integer(4), value :: j_textureId
    integer(4), value :: j_target
    logical, value :: j_generateMipMap
    continue
  end subroutine
end module OpenGLVUtilBase_m

