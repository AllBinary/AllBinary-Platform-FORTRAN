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
module ShaderManagerFactory_m
  use JR_m
  use ShaderManager_m
  implicit none

  type, extends(JObject) :: ShaderManagerFactory
  contains
    procedure :: jm_create_0 => ShaderManagerFactory_jm_create_0
  end type

  class(ShaderManagerFactory), pointer, save :: ShaderManagerFactory_jcell_instance => null()
  logical, save :: ShaderManagerFactory_jset_instance = .false.

contains

  function ShaderManagerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ShaderManagerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ShaderManagerFactory)
      jresult => object
    end select
  end function

  function ShaderManagerFactory_jstatic_instance() result(jresult)
    class(ShaderManagerFactory), pointer :: jresult
    if (.not. ShaderManagerFactory_jset_instance) then
      ShaderManagerFactory_jset_instance = .true.
      ShaderManagerFactory_jcell_instance => ShaderManagerFactory_jnew_0()
    end if
    jresult => ShaderManagerFactory_jcell_instance
  end function

  subroutine ShaderManagerFactory_jsetstatic_instance(jvalue)
    class(ShaderManagerFactory), target, optional :: jvalue
    ShaderManagerFactory_jset_instance = .true.
    if (present(jvalue)) then
      ShaderManagerFactory_jcell_instance => jvalue
    else
      ShaderManagerFactory_jcell_instance => null()
    end if
  end subroutine

  function ShaderManagerFactory_jnew_0() result(this)
    class(ShaderManagerFactory), pointer :: this
    allocate(this)
    this%jclass = 'ShaderManagerFactory'
  end function

  recursive function ShaderManagerFactory_jm_getInstance_0() result(jresult)
    class(ShaderManagerFactory), pointer :: jresult
        jresult => ShaderManagerFactory_jstatic_instance()
        return
  end function

  recursive function ShaderManagerFactory_jm_create_0(this) result(jresult)
    class(ShaderManagerFactory), target :: this
    class(ShaderManager), pointer :: jresult
        jresult => ShaderManager_jm_getInstance_0()
        return
  end function
end module ShaderManagerFactory_m

