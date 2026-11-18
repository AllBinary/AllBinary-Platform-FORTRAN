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
! package org.allbinary.device
module NullGL10_m
  use JR_m
  use GL10_m
  use Buffer_m
  use FloatBuffer_m
  use IntBuffer_m
  use StringUtil_m
  implicit none

  type, extends(GL10) :: NullGL10
  contains
    procedure :: jm_glActiveTexture_1 => NullGL10_jm_glActiveTexture_1
    procedure :: jm_glAlphaFunc_2 => NullGL10_jm_glAlphaFunc_2
    procedure :: jm_glBindTexture_2 => NullGL10_jm_glBindTexture_2
    procedure :: jm_glBlendFunc_2 => NullGL10_jm_glBlendFunc_2
    procedure :: jm_glClear_1 => NullGL10_jm_glClear_1
    procedure :: jm_glClearColor_4 => NullGL10_jm_glClearColor_4
    procedure :: jm_glClearDepthf_1 => NullGL10_jm_glClearDepthf_1
    procedure :: jm_glClearStencil_1 => NullGL10_jm_glClearStencil_1
    procedure :: jm_glClientActiveTexture_1 => NullGL10_jm_glClientActiveTexture_1
    procedure :: jm_glColor4f_4 => NullGL10_jm_glColor4f_4
    procedure :: jm_glColorMask_4 => NullGL10_jm_glColorMask_4
    procedure :: jm_glColorPointer_4 => NullGL10_jm_glColorPointer_4
    procedure :: jm_glCompressedTexImage2D_8 => NullGL10_jm_glCompressedTexImage2D_8
    procedure :: jm_glCompressedTexSubImage2D_9 => NullGL10_jm_glCompressedTexSubImage2D_9
    procedure :: jm_glCopyTexImage2D_8 => NullGL10_jm_glCopyTexImage2D_8
    procedure :: jm_glCopyTexSubImage2D_8 => NullGL10_jm_glCopyTexSubImage2D_8
    procedure :: jm_glCullFace_1 => NullGL10_jm_glCullFace_1
    procedure :: jm_glDeleteTextures_3 => NullGL10_jm_glDeleteTextures_3
    procedure :: jm_glDeleteTextures_2 => NullGL10_jm_glDeleteTextures_2
    procedure :: jm_glDepthFunc_1 => NullGL10_jm_glDepthFunc_1
    procedure :: jm_glDepthMask_1 => NullGL10_jm_glDepthMask_1
    procedure :: jm_glDepthRangef_2 => NullGL10_jm_glDepthRangef_2
    procedure :: jm_glDisable_1 => NullGL10_jm_glDisable_1
    procedure :: jm_glDisableClientState_1 => NullGL10_jm_glDisableClientState_1
    procedure :: jm_glDrawArrays_3 => NullGL10_jm_glDrawArrays_3
    procedure :: jm_glDrawElements_4 => NullGL10_jm_glDrawElements_4
    procedure :: jm_glEnable_1 => NullGL10_jm_glEnable_1
    procedure :: jm_glEnableClientState_1 => NullGL10_jm_glEnableClientState_1
    procedure :: jm_glFinish_0 => NullGL10_jm_glFinish_0
    procedure :: jm_glFlush_0 => NullGL10_jm_glFlush_0
    procedure :: jm_glFogf_2 => NullGL10_jm_glFogf_2
    procedure :: jm_glFogfv_3 => NullGL10_jm_glFogfv_3
    procedure :: jm_glFogfv_2 => NullGL10_jm_glFogfv_2
    procedure :: jm_glFrontFace_1 => NullGL10_jm_glFrontFace_1
    procedure :: jm_glFrustumf_6 => NullGL10_jm_glFrustumf_6
    procedure :: jm_glGenTextures_3 => NullGL10_jm_glGenTextures_3
    procedure :: jm_glGenTextures_2 => NullGL10_jm_glGenTextures_2
    procedure :: jm_glGetError_0 => NullGL10_jm_glGetError_0
    procedure :: jm_glGetIntegerv_3 => NullGL10_jm_glGetIntegerv_3
    procedure :: jm_glGetIntegerv_2 => NullGL10_jm_glGetIntegerv_2
    procedure :: jm_glGetString_1 => NullGL10_jm_glGetString_1
    procedure :: jm_glHint_2 => NullGL10_jm_glHint_2
    procedure :: jm_glLightModelf_2 => NullGL10_jm_glLightModelf_2
    procedure :: jm_glLightModelfv_3 => NullGL10_jm_glLightModelfv_3
    procedure :: jm_glLightModelfv_2 => NullGL10_jm_glLightModelfv_2
    procedure :: jm_glLightf_3 => NullGL10_jm_glLightf_3
    procedure :: jm_glLightfv_4 => NullGL10_jm_glLightfv_4
    procedure :: jm_glLightfv_3 => NullGL10_jm_glLightfv_3
    procedure :: jm_glLineWidth_1 => NullGL10_jm_glLineWidth_1
    procedure :: jm_glLoadIdentity_0 => NullGL10_jm_glLoadIdentity_0
    procedure :: jm_glLoadMatrixf_2 => NullGL10_jm_glLoadMatrixf_2
    procedure :: jm_glLoadMatrixf_1 => NullGL10_jm_glLoadMatrixf_1
    procedure :: jm_glLogicOp_1 => NullGL10_jm_glLogicOp_1
    procedure :: jm_glMaterialf_3 => NullGL10_jm_glMaterialf_3
    procedure :: jm_glMaterialfv_4 => NullGL10_jm_glMaterialfv_4
    procedure :: jm_glMaterialfv_3 => NullGL10_jm_glMaterialfv_3
    procedure :: jm_glMatrixMode_1 => NullGL10_jm_glMatrixMode_1
    procedure :: jm_glMultMatrixf_2 => NullGL10_jm_glMultMatrixf_2
    procedure :: jm_glMultMatrixf_1 => NullGL10_jm_glMultMatrixf_1
    procedure :: jm_glMultiTexCoord4f_5 => NullGL10_jm_glMultiTexCoord4f_5
    procedure :: jm_glNormal3f_3 => NullGL10_jm_glNormal3f_3
    procedure :: jm_glNormalPointer_3 => NullGL10_jm_glNormalPointer_3
    procedure :: jm_glOrthof_6 => NullGL10_jm_glOrthof_6
    procedure :: jm_glPixelStorei_2 => NullGL10_jm_glPixelStorei_2
    procedure :: jm_glPointSize_1 => NullGL10_jm_glPointSize_1
    procedure :: jm_glPolygonOffset_2 => NullGL10_jm_glPolygonOffset_2
    procedure :: jm_glPopMatrix_0 => NullGL10_jm_glPopMatrix_0
    procedure :: jm_glPushMatrix_0 => NullGL10_jm_glPushMatrix_0
    procedure :: jm_glReadPixels_7 => NullGL10_jm_glReadPixels_7
    procedure :: jm_glRotatef_4 => NullGL10_jm_glRotatef_4
    procedure :: jm_glRotatex_4 => NullGL10_jm_glRotatex_4
    procedure :: jm_glSampleCoverage_2 => NullGL10_jm_glSampleCoverage_2
    procedure :: jm_glScalef_3 => NullGL10_jm_glScalef_3
    procedure :: jm_glScalex_3 => NullGL10_jm_glScalex_3
    procedure :: jm_glScissor_4 => NullGL10_jm_glScissor_4
    procedure :: jm_glShadeModel_1 => NullGL10_jm_glShadeModel_1
    procedure :: jm_glStencilFunc_3 => NullGL10_jm_glStencilFunc_3
    procedure :: jm_glStencilMask_1 => NullGL10_jm_glStencilMask_1
    procedure :: jm_glStencilOp_3 => NullGL10_jm_glStencilOp_3
    procedure :: jm_glTexCoordPointer_4 => NullGL10_jm_glTexCoordPointer_4
    procedure :: jm_glTexEnvf_3 => NullGL10_jm_glTexEnvf_3
    procedure :: jm_glTexEnvfv_4 => NullGL10_jm_glTexEnvfv_4
    procedure :: jm_glTexEnvfv_3 => NullGL10_jm_glTexEnvfv_3
    procedure :: jm_glTexImage2D_9 => NullGL10_jm_glTexImage2D_9
    procedure :: jm_glTexParameterf_3 => NullGL10_jm_glTexParameterf_3
    procedure :: jm_glTexParameteri_3 => NullGL10_jm_glTexParameteri_3
    procedure :: jm_glTexSubImage2D_9 => NullGL10_jm_glTexSubImage2D_9
    procedure :: jm_glTranslatef_3 => NullGL10_jm_glTranslatef_3
    procedure :: jm_glVertexPointer_4 => NullGL10_jm_glVertexPointer_4
    procedure :: jm_glViewport_4 => NullGL10_jm_glViewport_4
    procedure :: jm_glBegin_1 => NullGL10_jm_glBegin_1
    procedure :: jm_glEnd_0 => NullGL10_jm_glEnd_0
    procedure :: jm_glVertex3f_3 => NullGL10_jm_glVertex3f_3
    procedure :: jm_glPolygonMode_2 => NullGL10_jm_glPolygonMode_2
  end type

  class(NullGL10), pointer, save :: NullGL10_jcell_NULL_GL10 => null()
  logical, save :: NullGL10_jset_NULL_GL10 = .false.

contains

  function NullGL10_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullGL10), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullGL10)
      jresult => object
    end select
  end function

  function NullGL10_jstatic_NULL_GL10() result(jresult)
    class(NullGL10), pointer :: jresult
    if (.not. NullGL10_jset_NULL_GL10) then
      NullGL10_jset_NULL_GL10 = .true.
      NullGL10_jcell_NULL_GL10 => NullGL10_jnew_0()
    end if
    jresult => NullGL10_jcell_NULL_GL10
  end function

  subroutine NullGL10_jsetstatic_NULL_GL10(jvalue)
    class(NullGL10), target, optional :: jvalue
    NullGL10_jset_NULL_GL10 = .true.
    if (present(jvalue)) then
      NullGL10_jcell_NULL_GL10 => jvalue
    else
      NullGL10_jcell_NULL_GL10 => null()
    end if
  end subroutine

  function NullGL10_jnew_0() result(this)
    class(NullGL10), pointer :: this
    allocate(this)
    this%jclass = 'NullGL10'
  end function

  recursive subroutine NullGL10_jm_glActiveTexture_1(this, j_texture)
    class(NullGL10), target :: this
    integer(4), value :: j_texture
        return
  end subroutine

  recursive subroutine NullGL10_jm_glAlphaFunc_2(this, j_func, j_ref)
    class(NullGL10), target :: this
    integer(4), value :: j_func
    real(4), value :: j_ref
        return
  end subroutine

  recursive subroutine NullGL10_jm_glBindTexture_2(this, j_target, j_texture)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_texture
        return
  end subroutine

  recursive subroutine NullGL10_jm_glBlendFunc_2(this, j_sfactor, j_dfactor)
    class(NullGL10), target :: this
    integer(4), value :: j_sfactor
    integer(4), value :: j_dfactor
        return
  end subroutine

  recursive subroutine NullGL10_jm_glClear_1(this, j_mask)
    class(NullGL10), target :: this
    integer(4), value :: j_mask
        return
  end subroutine

  recursive subroutine NullGL10_jm_glClearColor_4(this, j_red, j_green, j_blue, j_alpha)
    class(NullGL10), target :: this
    real(4), value :: j_red
    real(4), value :: j_green
    real(4), value :: j_blue
    real(4), value :: j_alpha
        return
  end subroutine

  recursive subroutine NullGL10_jm_glClearDepthf_1(this, j_depth)
    class(NullGL10), target :: this
    real(4), value :: j_depth
        return
  end subroutine

  recursive subroutine NullGL10_jm_glClearStencil_1(this, j_s)
    class(NullGL10), target :: this
    integer(4), value :: j_s
        return
  end subroutine

  recursive subroutine NullGL10_jm_glClientActiveTexture_1(this, j_texture)
    class(NullGL10), target :: this
    integer(4), value :: j_texture
        return
  end subroutine

  recursive subroutine NullGL10_jm_glColor4f_4(this, j_red, j_green, j_blue, j_alpha)
    class(NullGL10), target :: this
    real(4), value :: j_red
    real(4), value :: j_green
    real(4), value :: j_blue
    real(4), value :: j_alpha
        return
  end subroutine

  recursive subroutine NullGL10_jm_glColorMask_4(this, j_red, j_green, j_blue, j_alpha)
    class(NullGL10), target :: this
    logical, value :: j_red
    logical, value :: j_green
    logical, value :: j_blue
    logical, value :: j_alpha
        return
  end subroutine

  recursive subroutine NullGL10_jm_glColorPointer_4(this, j_size, j_type, j_stride, j_pointer)
    class(NullGL10), target :: this
    integer(4), value :: j_size
    integer(4), value :: j_type
    integer(4), value :: j_stride
    class(Buffer), target, optional :: j_pointer
        return
  end subroutine

  recursive subroutine NullGL10_jm_glCompressedTexImage2D_8(this, j_target, j_level, j_internalformat, j_width, j_height, j_border, j_imageSize, j_data)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_level
    integer(4), value :: j_internalformat
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_border
    integer(4), value :: j_imageSize
    class(Buffer), target, optional :: j_data
        return
  end subroutine

  recursive subroutine NullGL10_jm_glCompressedTexSubImage2D_9(this, j_target, j_level, j_xoffset, j_yoffset, j_width, j_height, j_format, j_imageSize, j_data)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_level
    integer(4), value :: j_xoffset
    integer(4), value :: j_yoffset
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_format
    integer(4), value :: j_imageSize
    class(Buffer), target, optional :: j_data
        return
  end subroutine

  recursive subroutine NullGL10_jm_glCopyTexImage2D_8(this, j_target, j_level, j_internalformat, j_x, j_y, j_width, j_height, j_border)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_level
    integer(4), value :: j_internalformat
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_border
        return
  end subroutine

  recursive subroutine NullGL10_jm_glCopyTexSubImage2D_8(this, j_target, j_level, j_xoffset, j_yoffset, j_x, j_y, j_width, j_height)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_level
    integer(4), value :: j_xoffset
    integer(4), value :: j_yoffset
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
        return
  end subroutine

  recursive subroutine NullGL10_jm_glCullFace_1(this, j_mode)
    class(NullGL10), target :: this
    integer(4), value :: j_mode
        return
  end subroutine

  recursive subroutine NullGL10_jm_glDeleteTextures_3(this, j_n, j_textures, j_offset)
    class(NullGL10), target :: this
    integer(4), value :: j_n
    integer(4) :: j_textures(:)
    integer(4), value :: j_offset
        return
  end subroutine

  recursive subroutine NullGL10_jm_glDeleteTextures_2(this, j_n, j_textures)
    class(NullGL10), target :: this
    integer(4), value :: j_n
    class(IntBuffer), target, optional :: j_textures
        return
  end subroutine

  recursive subroutine NullGL10_jm_glDepthFunc_1(this, j_func)
    class(NullGL10), target :: this
    integer(4), value :: j_func
        return
  end subroutine

  recursive subroutine NullGL10_jm_glDepthMask_1(this, j_flag)
    class(NullGL10), target :: this
    logical, value :: j_flag
        return
  end subroutine

  recursive subroutine NullGL10_jm_glDepthRangef_2(this, j_zNear, j_zFar)
    class(NullGL10), target :: this
    real(4), value :: j_zNear
    real(4), value :: j_zFar
        return
  end subroutine

  recursive subroutine NullGL10_jm_glDisable_1(this, j_cap)
    class(NullGL10), target :: this
    integer(4), value :: j_cap
        return
  end subroutine

  recursive subroutine NullGL10_jm_glDisableClientState_1(this, j_array)
    class(NullGL10), target :: this
    integer(4), value :: j_array
        return
  end subroutine

  recursive subroutine NullGL10_jm_glDrawArrays_3(this, j_mode, j_first, j_count)
    class(NullGL10), target :: this
    integer(4), value :: j_mode
    integer(4), value :: j_first
    integer(4), value :: j_count
        return
  end subroutine

  recursive subroutine NullGL10_jm_glDrawElements_4(this, j_mode, j_count, j_type, j_indices)
    class(NullGL10), target :: this
    integer(4), value :: j_mode
    integer(4), value :: j_count
    integer(4), value :: j_type
    class(Buffer), target, optional :: j_indices
        return
  end subroutine

  recursive subroutine NullGL10_jm_glEnable_1(this, j_cap)
    class(NullGL10), target :: this
    integer(4), value :: j_cap
        return
  end subroutine

  recursive subroutine NullGL10_jm_glEnableClientState_1(this, j_array)
    class(NullGL10), target :: this
    integer(4), value :: j_array
        return
  end subroutine

  recursive subroutine NullGL10_jm_glFinish_0(this)
    class(NullGL10), target :: this
        return
  end subroutine

  recursive subroutine NullGL10_jm_glFlush_0(this)
    class(NullGL10), target :: this
        return
  end subroutine

  recursive subroutine NullGL10_jm_glFogf_2(this, j_pname, j_param)
    class(NullGL10), target :: this
    integer(4), value :: j_pname
    real(4), value :: j_param
        return
  end subroutine

  recursive subroutine NullGL10_jm_glFogfv_3(this, j_pname, j_params, j_offset)
    class(NullGL10), target :: this
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
        return
  end subroutine

  recursive subroutine NullGL10_jm_glFogfv_2(this, j_pname, j_params)
    class(NullGL10), target :: this
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
        return
  end subroutine

  recursive subroutine NullGL10_jm_glFrontFace_1(this, j_mode)
    class(NullGL10), target :: this
    integer(4), value :: j_mode
        return
  end subroutine

  recursive subroutine NullGL10_jm_glFrustumf_6(this, j_left, j_right, j_bottom, j_top, j_zNear, j_zFar)
    class(NullGL10), target :: this
    real(4), value :: j_left
    real(4), value :: j_right
    real(4), value :: j_bottom
    real(4), value :: j_top
    real(4), value :: j_zNear
    real(4), value :: j_zFar
        return
  end subroutine

  recursive subroutine NullGL10_jm_glGenTextures_3(this, j_n, j_textures, j_offset)
    class(NullGL10), target :: this
    integer(4), value :: j_n
    integer(4) :: j_textures(:)
    integer(4), value :: j_offset
        return
  end subroutine

  recursive subroutine NullGL10_jm_glGenTextures_2(this, j_n, j_textures)
    class(NullGL10), target :: this
    integer(4), value :: j_n
    class(IntBuffer), target, optional :: j_textures
        return
  end subroutine

  recursive function NullGL10_jm_glGetError_0(this) result(jresult)
    class(NullGL10), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive subroutine NullGL10_jm_glGetIntegerv_3(this, j_pname, j_params, j_offset)
    class(NullGL10), target :: this
    integer(4), value :: j_pname
    integer(4) :: j_params(:)
    integer(4), value :: j_offset
        return
  end subroutine

  recursive subroutine NullGL10_jm_glGetIntegerv_2(this, j_pname, j_params)
    class(NullGL10), target :: this
    integer(4), value :: j_pname
    class(IntBuffer), target, optional :: j_params
        return
  end subroutine

  recursive function NullGL10_jm_glGetString_1(this, j_name) result(jresult)
    class(NullGL10), target :: this
    integer(4), value :: j_name
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_EMPTY_STRING
        return
  end function

  recursive subroutine NullGL10_jm_glHint_2(this, j_target, j_mode)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_mode
        return
  end subroutine

  recursive subroutine NullGL10_jm_glLightModelf_2(this, j_pname, j_param)
    class(NullGL10), target :: this
    integer(4), value :: j_pname
    real(4), value :: j_param
        return
  end subroutine

  recursive subroutine NullGL10_jm_glLightModelfv_3(this, j_pname, j_params, j_offset)
    class(NullGL10), target :: this
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
        return
  end subroutine

  recursive subroutine NullGL10_jm_glLightModelfv_2(this, j_pname, j_params)
    class(NullGL10), target :: this
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
        return
  end subroutine

  recursive subroutine NullGL10_jm_glLightf_3(this, j_light, j_pname, j_param)
    class(NullGL10), target :: this
    integer(4), value :: j_light
    integer(4), value :: j_pname
    real(4), value :: j_param
        return
  end subroutine

  recursive subroutine NullGL10_jm_glLightfv_4(this, j_light, j_pname, j_params, j_offset)
    class(NullGL10), target :: this
    integer(4), value :: j_light
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
        return
  end subroutine

  recursive subroutine NullGL10_jm_glLightfv_3(this, j_light, j_pname, j_params)
    class(NullGL10), target :: this
    integer(4), value :: j_light
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
        return
  end subroutine

  recursive subroutine NullGL10_jm_glLineWidth_1(this, j_width)
    class(NullGL10), target :: this
    real(4), value :: j_width
        return
  end subroutine

  recursive subroutine NullGL10_jm_glLoadIdentity_0(this)
    class(NullGL10), target :: this
        return
  end subroutine

  recursive subroutine NullGL10_jm_glLoadMatrixf_2(this, j_m, j_offset)
    class(NullGL10), target :: this
    real(4) :: j_m(:)
    integer(4), value :: j_offset
        return
  end subroutine

  recursive subroutine NullGL10_jm_glLoadMatrixf_1(this, j_m)
    class(NullGL10), target :: this
    class(FloatBuffer), target, optional :: j_m
        return
  end subroutine

  recursive subroutine NullGL10_jm_glLogicOp_1(this, j_opcode)
    class(NullGL10), target :: this
    integer(4), value :: j_opcode
        return
  end subroutine

  recursive subroutine NullGL10_jm_glMaterialf_3(this, j_face, j_pname, j_param)
    class(NullGL10), target :: this
    integer(4), value :: j_face
    integer(4), value :: j_pname
    real(4), value :: j_param
        return
  end subroutine

  recursive subroutine NullGL10_jm_glMaterialfv_4(this, j_face, j_pname, j_params, j_offset)
    class(NullGL10), target :: this
    integer(4), value :: j_face
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
        return
  end subroutine

  recursive subroutine NullGL10_jm_glMaterialfv_3(this, j_face, j_pname, j_params)
    class(NullGL10), target :: this
    integer(4), value :: j_face
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
        return
  end subroutine

  recursive subroutine NullGL10_jm_glMatrixMode_1(this, j_mode)
    class(NullGL10), target :: this
    integer(4), value :: j_mode
        return
  end subroutine

  recursive subroutine NullGL10_jm_glMultMatrixf_2(this, j_m, j_offset)
    class(NullGL10), target :: this
    real(4) :: j_m(:)
    integer(4), value :: j_offset
        return
  end subroutine

  recursive subroutine NullGL10_jm_glMultMatrixf_1(this, j_m)
    class(NullGL10), target :: this
    class(FloatBuffer), target, optional :: j_m
        return
  end subroutine

  recursive subroutine NullGL10_jm_glMultiTexCoord4f_5(this, j_target, j_s, j_t, j_r, j_q)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    real(4), value :: j_s
    real(4), value :: j_t
    real(4), value :: j_r
    real(4), value :: j_q
        return
  end subroutine

  recursive subroutine NullGL10_jm_glNormal3f_3(this, j_nx, j_ny, j_nz)
    class(NullGL10), target :: this
    real(4), value :: j_nx
    real(4), value :: j_ny
    real(4), value :: j_nz
        return
  end subroutine

  recursive subroutine NullGL10_jm_glNormalPointer_3(this, j_type, j_stride, j_pointer)
    class(NullGL10), target :: this
    integer(4), value :: j_type
    integer(4), value :: j_stride
    class(Buffer), target, optional :: j_pointer
        return
  end subroutine

  recursive subroutine NullGL10_jm_glOrthof_6(this, j_left, j_right, j_bottom, j_top, j_zNear, j_zFar)
    class(NullGL10), target :: this
    real(4), value :: j_left
    real(4), value :: j_right
    real(4), value :: j_bottom
    real(4), value :: j_top
    real(4), value :: j_zNear
    real(4), value :: j_zFar
        return
  end subroutine

  recursive subroutine NullGL10_jm_glPixelStorei_2(this, j_pname, j_param)
    class(NullGL10), target :: this
    integer(4), value :: j_pname
    integer(4), value :: j_param
        return
  end subroutine

  recursive subroutine NullGL10_jm_glPointSize_1(this, j_size)
    class(NullGL10), target :: this
    real(4), value :: j_size
        return
  end subroutine

  recursive subroutine NullGL10_jm_glPolygonOffset_2(this, j_factor, j_units)
    class(NullGL10), target :: this
    real(4), value :: j_factor
    real(4), value :: j_units
        return
  end subroutine

  recursive subroutine NullGL10_jm_glPopMatrix_0(this)
    class(NullGL10), target :: this
        return
  end subroutine

  recursive subroutine NullGL10_jm_glPushMatrix_0(this)
    class(NullGL10), target :: this
        return
  end subroutine

  recursive subroutine NullGL10_jm_glReadPixels_7(this, j_x, j_y, j_width, j_height, j_format, j_type, j_pixels)
    class(NullGL10), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_format
    integer(4), value :: j_type
    class(Buffer), target, optional :: j_pixels
        return
  end subroutine

  recursive subroutine NullGL10_jm_glRotatef_4(this, j_angle, j_x, j_y, j_z)
    class(NullGL10), target :: this
    real(4), value :: j_angle
    real(4), value :: j_x
    real(4), value :: j_y
    real(4), value :: j_z
        return
  end subroutine

  recursive subroutine NullGL10_jm_glRotatex_4(this, j_angle, j_x, j_y, j_z)
    class(NullGL10), target :: this
    integer(4), value :: j_angle
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
        return
  end subroutine

  recursive subroutine NullGL10_jm_glSampleCoverage_2(this, j_value, j_invert)
    class(NullGL10), target :: this
    real(4), value :: j_value
    logical, value :: j_invert
        return
  end subroutine

  recursive subroutine NullGL10_jm_glScalef_3(this, j_x, j_y, j_z)
    class(NullGL10), target :: this
    real(4), value :: j_x
    real(4), value :: j_y
    real(4), value :: j_z
        return
  end subroutine

  recursive subroutine NullGL10_jm_glScalex_3(this, j_x, j_y, j_z)
    class(NullGL10), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
        return
  end subroutine

  recursive subroutine NullGL10_jm_glScissor_4(this, j_x, j_y, j_width, j_height)
    class(NullGL10), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
        return
  end subroutine

  recursive subroutine NullGL10_jm_glShadeModel_1(this, j_mode)
    class(NullGL10), target :: this
    integer(4), value :: j_mode
        return
  end subroutine

  recursive subroutine NullGL10_jm_glStencilFunc_3(this, j_func, j_ref, j_mask)
    class(NullGL10), target :: this
    integer(4), value :: j_func
    integer(4), value :: j_ref
    integer(4), value :: j_mask
        return
  end subroutine

  recursive subroutine NullGL10_jm_glStencilMask_1(this, j_mask)
    class(NullGL10), target :: this
    integer(4), value :: j_mask
        return
  end subroutine

  recursive subroutine NullGL10_jm_glStencilOp_3(this, j_fail, j_zfail, j_zpass)
    class(NullGL10), target :: this
    integer(4), value :: j_fail
    integer(4), value :: j_zfail
    integer(4), value :: j_zpass
        return
  end subroutine

  recursive subroutine NullGL10_jm_glTexCoordPointer_4(this, j_size, j_type, j_stride, j_pointer)
    class(NullGL10), target :: this
    integer(4), value :: j_size
    integer(4), value :: j_type
    integer(4), value :: j_stride
    class(Buffer), target, optional :: j_pointer
        return
  end subroutine

  recursive subroutine NullGL10_jm_glTexEnvf_3(this, j_target, j_pname, j_param)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    real(4), value :: j_param
        return
  end subroutine

  recursive subroutine NullGL10_jm_glTexEnvfv_4(this, j_target, j_pname, j_params, j_offset)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    real(4) :: j_params(:)
    integer(4), value :: j_offset
        return
  end subroutine

  recursive subroutine NullGL10_jm_glTexEnvfv_3(this, j_target, j_pname, j_params)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    class(FloatBuffer), target, optional :: j_params
        return
  end subroutine

  recursive subroutine NullGL10_jm_glTexImage2D_9(this, j_target, j_level, j_internalformat, j_width, j_height, j_border, j_format, j_type, j_pixels)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_level
    integer(4), value :: j_internalformat
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_border
    integer(4), value :: j_format
    integer(4), value :: j_type
    class(Buffer), target, optional :: j_pixels
        return
  end subroutine

  recursive subroutine NullGL10_jm_glTexParameterf_3(this, j_target, j_pname, j_param)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    real(4), value :: j_param
        return
  end subroutine

  recursive subroutine NullGL10_jm_glTexParameteri_3(this, j_target, j_pname, j_param)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_pname
    integer(4), value :: j_param
        return
  end subroutine

  recursive subroutine NullGL10_jm_glTexSubImage2D_9(this, j_target, j_level, j_xoffset, j_yoffset, j_width, j_height, j_format, j_type, j_pixels)
    class(NullGL10), target :: this
    integer(4), value :: j_target
    integer(4), value :: j_level
    integer(4), value :: j_xoffset
    integer(4), value :: j_yoffset
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_format
    integer(4), value :: j_type
    class(Buffer), target, optional :: j_pixels
        return
  end subroutine

  recursive subroutine NullGL10_jm_glTranslatef_3(this, j_x, j_y, j_z)
    class(NullGL10), target :: this
    real(4), value :: j_x
    real(4), value :: j_y
    real(4), value :: j_z
        return
  end subroutine

  recursive subroutine NullGL10_jm_glVertexPointer_4(this, j_size, j_type, j_stride, j_pointer)
    class(NullGL10), target :: this
    integer(4), value :: j_size
    integer(4), value :: j_type
    integer(4), value :: j_stride
    class(Buffer), target, optional :: j_pointer
        return
  end subroutine

  recursive subroutine NullGL10_jm_glViewport_4(this, j_x, j_y, j_width, j_height)
    class(NullGL10), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_width
    integer(4), value :: j_height
        return
  end subroutine

  recursive subroutine NullGL10_jm_glBegin_1(this, j_i)
    class(NullGL10), target :: this
    integer(4), value :: j_i
        return
  end subroutine

  recursive subroutine NullGL10_jm_glEnd_0(this)
    class(NullGL10), target :: this
        return
  end subroutine

  recursive subroutine NullGL10_jm_glVertex3f_3(this, j_f, j_f2, j_f3)
    class(NullGL10), target :: this
    real(4), value :: j_f
    real(4), value :: j_f2
    real(4), value :: j_f3
        return
  end subroutine

  recursive subroutine NullGL10_jm_glPolygonMode_2(this, j_i, j_i1)
    class(NullGL10), target :: this
    integer(4), value :: j_i
    integer(4), value :: j_i1
        return
  end subroutine
end module NullGL10_m

