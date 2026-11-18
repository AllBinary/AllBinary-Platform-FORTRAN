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
! package org.allbinary.device
module OpenGLESGraphicsCompositeFactory_m
  use JR_m
  use OpenGLESGraphicsFactory_m
  implicit none

  type, extends(JObject) :: OpenGLESGraphicsCompositeFactory
    class(OpenGLESGraphicsFactory), pointer :: f_openGLESGraphicsFactory => null()
  contains
    procedure :: jm_set_1 => OpenGLESGraphicsCompositeFactory_jm_set_1
    procedure :: jm_get_0 => OpenGLESGraphicsCompositeFactory_jm_get_0
  end type

  class(OpenGLESGraphicsCompositeFactory), pointer, save :: OpenGLESGraphicsCompositeFactory_jcell_instance => null()
  logical, save :: OpenGLESGraphicsCompositeFactory_jset_instance = .false.

contains

  function OpenGLESGraphicsCompositeFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLESGraphicsCompositeFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLESGraphicsCompositeFactory)
      jresult => object
    end select
  end function

  function OpenGLESGraphicsCompositeFactory_jstatic_instance() result(jresult)
    class(OpenGLESGraphicsCompositeFactory), pointer :: jresult
    if (.not. OpenGLESGraphicsCompositeFactory_jset_instance) then
      OpenGLESGraphicsCompositeFactory_jset_instance = .true.
      OpenGLESGraphicsCompositeFactory_jcell_instance => OpenGLESGraphicsCompositeFactory_jnew_0()
    end if
    jresult => OpenGLESGraphicsCompositeFactory_jcell_instance
  end function

  subroutine OpenGLESGraphicsCompositeFactory_jsetstatic_instance(jvalue)
    class(OpenGLESGraphicsCompositeFactory), target, optional :: jvalue
    OpenGLESGraphicsCompositeFactory_jset_instance = .true.
    if (present(jvalue)) then
      OpenGLESGraphicsCompositeFactory_jcell_instance => jvalue
    else
      OpenGLESGraphicsCompositeFactory_jcell_instance => null()
    end if
  end subroutine

  function OpenGLESGraphicsCompositeFactory_jnew_0() result(this)
    class(OpenGLESGraphicsCompositeFactory), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLESGraphicsCompositeFactory'
    this%f_openGLESGraphicsFactory => OpenGLESGraphicsFactory_jnew_0()
  end function

  recursive function OpenGLESGraphicsCompositeFactory_jm_getInstance_0() result(jresult)
    class(OpenGLESGraphicsCompositeFactory), pointer :: jresult
        jresult => OpenGLESGraphicsCompositeFactory_jstatic_instance()
        return
  end function

  recursive subroutine OpenGLESGraphicsCompositeFactory_jm_set_1(this, j_openGLESGraphicsFactory)
    class(OpenGLESGraphicsCompositeFactory), target :: this
    class(OpenGLESGraphicsFactory), target, optional :: j_openGLESGraphicsFactory
        this%f_openGLESGraphicsFactory => j_openGLESGraphicsFactory
  end subroutine

  recursive function OpenGLESGraphicsCompositeFactory_jm_get_0(this) result(jresult)
    class(OpenGLESGraphicsCompositeFactory), target :: this
    class(OpenGLESGraphicsFactory), pointer :: jresult
        jresult => this%f_openGLESGraphicsFactory
        return
  end function
end module OpenGLESGraphicsCompositeFactory_m

