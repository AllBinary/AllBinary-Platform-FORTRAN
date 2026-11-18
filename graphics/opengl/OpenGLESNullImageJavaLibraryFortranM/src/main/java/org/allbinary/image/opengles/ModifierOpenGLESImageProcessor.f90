! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.image.opengles
module ModifierOpenGLESImageProcessor_m
  use JR_m
  use OpenGLESImageProcessor_m
  implicit none

  type, extends(OpenGLESImageProcessor) :: ModifierOpenGLESImageProcessor
  end type

  class(ModifierOpenGLESImageProcessor), pointer, save :: ModifierOpenGLESImageProcessor_jcell_instanceC => null()
  logical, save :: ModifierOpenGLESImageProcessor_jset_instanceC = .false.

contains

  function ModifierOpenGLESImageProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ModifierOpenGLESImageProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ModifierOpenGLESImageProcessor)
      jresult => object
    end select
  end function

  function ModifierOpenGLESImageProcessor_jstatic_instanceC() result(jresult)
    class(ModifierOpenGLESImageProcessor), pointer :: jresult
    if (.not. ModifierOpenGLESImageProcessor_jset_instanceC) then
      ModifierOpenGLESImageProcessor_jset_instanceC = .true.
      ModifierOpenGLESImageProcessor_jcell_instanceC => ModifierOpenGLESImageProcessor_jnew_0()
    end if
    jresult => ModifierOpenGLESImageProcessor_jcell_instanceC
  end function

  subroutine ModifierOpenGLESImageProcessor_jsetstatic_instanceC(jvalue)
    class(ModifierOpenGLESImageProcessor), target, optional :: jvalue
    ModifierOpenGLESImageProcessor_jset_instanceC = .true.
    if (present(jvalue)) then
      ModifierOpenGLESImageProcessor_jcell_instanceC => jvalue
    else
      ModifierOpenGLESImageProcessor_jcell_instanceC => null()
    end if
  end subroutine

  function ModifierOpenGLESImageProcessor_jnew_0() result(this)
    class(ModifierOpenGLESImageProcessor), pointer :: this
    allocate(this)
    this%jclass = 'ModifierOpenGLESImageProcessor'
  end function

  recursive function ModifierOpenGLESImageProcessor_jm_getInstance_0() result(jresult)
    class(ModifierOpenGLESImageProcessor), pointer :: jresult
        jresult => ModifierOpenGLESImageProcessor_jstatic_instanceC()
        return
  end function
end module ModifierOpenGLESImageProcessor_m

function ModifierOpenGLESImageProcessor_jnew_0_jext() result(this)
  use ModifierOpenGLESImageProcessor_m, only: JObject, ModifierOpenGLESImageProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ModifierOpenGLESImageProcessor_jnew_0()
end function

