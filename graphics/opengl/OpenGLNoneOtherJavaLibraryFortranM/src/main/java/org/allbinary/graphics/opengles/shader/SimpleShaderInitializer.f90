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
module SimpleShaderInitializer_m
  use JR_m
  use ShaderInitializer_m
  implicit none

  type, extends(ShaderInitializer) :: SimpleShaderInitializer
  end type

  class(SimpleShaderInitializer), pointer, save :: SimpleShaderInitializer_jcell_instanceC => null()
  logical, save :: SimpleShaderInitializer_jset_instanceC = .false.

contains

  function SimpleShaderInitializer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SimpleShaderInitializer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SimpleShaderInitializer)
      jresult => object
    end select
  end function

  function SimpleShaderInitializer_jstatic_instanceC() result(jresult)
    class(SimpleShaderInitializer), pointer :: jresult
    if (.not. SimpleShaderInitializer_jset_instanceC) then
      SimpleShaderInitializer_jset_instanceC = .true.
      SimpleShaderInitializer_jcell_instanceC => SimpleShaderInitializer_jnew_0()
    end if
    jresult => SimpleShaderInitializer_jcell_instanceC
  end function

  subroutine SimpleShaderInitializer_jsetstatic_instanceC(jvalue)
    class(SimpleShaderInitializer), target, optional :: jvalue
    SimpleShaderInitializer_jset_instanceC = .true.
    if (present(jvalue)) then
      SimpleShaderInitializer_jcell_instanceC => jvalue
    else
      SimpleShaderInitializer_jcell_instanceC => null()
    end if
  end subroutine

  function SimpleShaderInitializer_jnew_0() result(this)
    class(SimpleShaderInitializer), pointer :: this
    allocate(this)
    this%jclass = 'SimpleShaderInitializer'
  end function

  recursive function SimpleShaderInitializer_jm_getInstance_0() result(jresult)
    class(SimpleShaderInitializer), pointer :: jresult
        jresult => SimpleShaderInitializer_jstatic_instanceC()
        return
  end function
end module SimpleShaderInitializer_m

function SimpleShaderInitializer_jnew_0_jext() result(this)
  use SimpleShaderInitializer_m, only: JObject, SimpleShaderInitializer_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => SimpleShaderInitializer_jnew_0()
end function

