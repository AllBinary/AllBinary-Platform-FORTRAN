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
! package org.allbinary.graphics
module ScreenCaptureNoneFactory_m
  use JR_m
  use ScreenCapture_m
  implicit none

  type, extends(JObject) :: ScreenCaptureNoneFactory
  end type

  class(ScreenCapture), pointer, save :: ScreenCaptureNoneFactory_jcell_instance => null()
  logical, save :: ScreenCaptureNoneFactory_jset_instance = .false.

contains

  function ScreenCaptureNoneFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScreenCaptureNoneFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScreenCaptureNoneFactory)
      jresult => object
    end select
  end function

  function ScreenCaptureNoneFactory_jstatic_instance() result(jresult)
    class(ScreenCapture), pointer :: jresult
    if (.not. ScreenCaptureNoneFactory_jset_instance) then
      ScreenCaptureNoneFactory_jset_instance = .true.
      ScreenCaptureNoneFactory_jcell_instance => ScreenCapture_jnew_0()
    end if
    jresult => ScreenCaptureNoneFactory_jcell_instance
  end function

  subroutine ScreenCaptureNoneFactory_jsetstatic_instance(jvalue)
    class(ScreenCapture), target, optional :: jvalue
    ScreenCaptureNoneFactory_jset_instance = .true.
    if (present(jvalue)) then
      ScreenCaptureNoneFactory_jcell_instance => jvalue
    else
      ScreenCaptureNoneFactory_jcell_instance => null()
    end if
  end subroutine

  function ScreenCaptureNoneFactory_jnew_0() result(this)
    class(ScreenCaptureNoneFactory), pointer :: this
    allocate(this)
    this%jclass = 'ScreenCaptureNoneFactory'
  end function

  recursive function ScreenCaptureNoneFactory_jm_getInstance_0() result(jresult)
    class(ScreenCapture), pointer :: jresult
        jresult => ScreenCaptureNoneFactory_jstatic_instance()
        return
  end function
end module ScreenCaptureNoneFactory_m

