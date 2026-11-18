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
! package org.allbinary.graphics
module RendererStateFactory_m
  use JR_m
  implicit none

  type, extends(JObject) :: RendererStateFactory
    logical :: f_loaded = .false.
    logical :: f_surfaceChanged = .false.
  contains
    procedure :: jm_setLoaded_1 => RendererStateFactory_jm_setLoaded_1
    procedure :: jm_isLoaded_0 => RendererStateFactory_jm_isLoaded_0
    procedure :: jm_setSurfaceChanged_1 => RendererStateFactory_jm_setSurfaceChanged_1
    procedure :: jm_isSurfaceChanged_0 => RendererStateFactory_jm_isSurfaceChanged_0
  end type

  class(RendererStateFactory), pointer, save :: RendererStateFactory_jcell_instance => null()
  logical, save :: RendererStateFactory_jset_instance = .false.

contains

  function RendererStateFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RendererStateFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RendererStateFactory)
      jresult => object
    end select
  end function

  function RendererStateFactory_jstatic_instance() result(jresult)
    class(RendererStateFactory), pointer :: jresult
    if (.not. RendererStateFactory_jset_instance) then
      RendererStateFactory_jset_instance = .true.
      RendererStateFactory_jcell_instance => RendererStateFactory_jnew_0()
    end if
    jresult => RendererStateFactory_jcell_instance
  end function

  subroutine RendererStateFactory_jsetstatic_instance(jvalue)
    class(RendererStateFactory), target, optional :: jvalue
    RendererStateFactory_jset_instance = .true.
    if (present(jvalue)) then
      RendererStateFactory_jcell_instance => jvalue
    else
      RendererStateFactory_jcell_instance => null()
    end if
  end subroutine

  function RendererStateFactory_jnew_0() result(this)
    class(RendererStateFactory), pointer :: this
    allocate(this)
    this%jclass = 'RendererStateFactory'
    this%f_loaded = .false.
    this%f_surfaceChanged = .false.
  end function

  recursive function RendererStateFactory_jm_getInstance_0() result(jresult)
    class(RendererStateFactory), pointer :: jresult
        jresult => RendererStateFactory_jstatic_instance()
        return
  end function

  recursive subroutine RendererStateFactory_jm_setLoaded_1(this, j_loaded)
    class(RendererStateFactory), target :: this
    logical, value :: j_loaded
        this%f_loaded = j_loaded
  end subroutine

  recursive function RendererStateFactory_jm_isLoaded_0(this) result(jresult)
    class(RendererStateFactory), target :: this
    logical :: jresult
        jresult = this%f_loaded
        return
  end function

  recursive subroutine RendererStateFactory_jm_setSurfaceChanged_1(this, j_initialized)
    class(RendererStateFactory), target :: this
    logical, value :: j_initialized
        this%f_surfaceChanged = j_initialized
  end subroutine

  recursive function RendererStateFactory_jm_isSurfaceChanged_0(this) result(jresult)
    class(RendererStateFactory), target :: this
    logical :: jresult
        jresult = this%f_surfaceChanged
        return
  end function
end module RendererStateFactory_m

