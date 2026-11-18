!
! AllBinary Open License Version 1
! Copyright (c) 2011 AllBinary
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
module OpenGLImageSpecificFactory_m
  use JR_m
  implicit none

  type, extends(JObject) :: OpenGLImageSpecificFactory
    logical :: f_updating = .false.
  end type

  class(OpenGLImageSpecificFactory), pointer, save :: OpenGLImageSpecificFactory_jcell_instance => null()
  logical, save :: OpenGLImageSpecificFactory_jset_instance = .false.

contains

  function OpenGLImageSpecificFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLImageSpecificFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLImageSpecificFactory)
      jresult => object
    end select
  end function

  function OpenGLImageSpecificFactory_jstatic_instance() result(jresult)
    class(OpenGLImageSpecificFactory), pointer :: jresult
    if (.not. OpenGLImageSpecificFactory_jset_instance) then
      OpenGLImageSpecificFactory_jset_instance = .true.
      OpenGLImageSpecificFactory_jcell_instance => OpenGLImageSpecificFactory_jnew_0()
    end if
    jresult => OpenGLImageSpecificFactory_jcell_instance
  end function

  subroutine OpenGLImageSpecificFactory_jsetstatic_instance(jvalue)
    class(OpenGLImageSpecificFactory), target, optional :: jvalue
    OpenGLImageSpecificFactory_jset_instance = .true.
    if (present(jvalue)) then
      OpenGLImageSpecificFactory_jcell_instance => jvalue
    else
      OpenGLImageSpecificFactory_jcell_instance => null()
    end if
  end subroutine

  function OpenGLImageSpecificFactory_jnew_0() result(this)
    class(OpenGLImageSpecificFactory), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLImageSpecificFactory'
    this%f_updating = .false.
  end function

  recursive function OpenGLImageSpecificFactory_jm_getInstance_0() result(jresult)
    class(OpenGLImageSpecificFactory), pointer :: jresult
        jresult => OpenGLImageSpecificFactory_jstatic_instance()
        return
  end function
end module OpenGLImageSpecificFactory_m

