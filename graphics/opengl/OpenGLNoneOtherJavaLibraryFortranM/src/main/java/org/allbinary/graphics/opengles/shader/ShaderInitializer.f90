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
module ShaderInitializer_m
  use JR_m
  use GL10_m
  use CommonStrings_m
  use Shader_m
  implicit none

  type, extends(JObject) :: ShaderInitializer
    class(CommonStrings), pointer :: f_commonStrings => null()
  contains
    procedure :: jm_init_3 => ShaderInitializer_jm_init_3
  end type

  class(ShaderInitializer), pointer, save :: ShaderInitializer_jcell_instance => null()
  logical, save :: ShaderInitializer_jset_instance = .false.

contains

  function ShaderInitializer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ShaderInitializer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ShaderInitializer)
      jresult => object
    end select
  end function

  function ShaderInitializer_jstatic_instance() result(jresult)
    class(ShaderInitializer), pointer :: jresult
    if (.not. ShaderInitializer_jset_instance) then
      ShaderInitializer_jset_instance = .true.
      ShaderInitializer_jcell_instance => ShaderInitializer_jnew_0()
    end if
    jresult => ShaderInitializer_jcell_instance
  end function

  subroutine ShaderInitializer_jsetstatic_instance(jvalue)
    class(ShaderInitializer), target, optional :: jvalue
    ShaderInitializer_jset_instance = .true.
    if (present(jvalue)) then
      ShaderInitializer_jcell_instance => jvalue
    else
      ShaderInitializer_jcell_instance => null()
    end if
  end subroutine

  function ShaderInitializer_jnew_0() result(this)
    class(ShaderInitializer), pointer :: this
    allocate(this)
    this%jclass = 'ShaderInitializer'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
  end function

  recursive function ShaderInitializer_jm_getInstance_0() result(jresult)
    class(ShaderInitializer), pointer :: jresult
        jresult => ShaderInitializer_jstatic_instance()
        return
  end function

  recursive function ShaderInitializer_jm_init_3(this, j_gl, j_shader, j_attributeArray) result(jresult)
    class(ShaderInitializer), target :: this
    class(GL10), target, optional :: j_gl
    type(JRef) :: j_shader(:)
    type(JString) :: j_attributeArray(:)
    integer(4) :: jresult
        jresult = (-1)
        return
  end function
end module ShaderInitializer_m

