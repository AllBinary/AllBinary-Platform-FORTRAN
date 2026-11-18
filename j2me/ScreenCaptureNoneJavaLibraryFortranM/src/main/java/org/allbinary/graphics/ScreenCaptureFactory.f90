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
module ScreenCaptureFactory_m
  use JR_m
  use ScreenCaptureNoneFactory_m
  use ScreenCapture_m
  implicit none

  type, extends(JObject) :: ScreenCaptureFactory
  end type

  class(ScreenCapture), pointer, save :: ScreenCaptureFactory_jcell_instance => null()
  logical, save :: ScreenCaptureFactory_jset_instance = .false.

contains

  function ScreenCaptureFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScreenCaptureFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScreenCaptureFactory)
      jresult => object
    end select
  end function

  function ScreenCaptureFactory_jstatic_instance() result(jresult)
    class(ScreenCapture), pointer :: jresult
    if (.not. ScreenCaptureFactory_jset_instance) then
      ScreenCaptureFactory_jset_instance = .true.
      ScreenCaptureFactory_jcell_instance => ScreenCaptureNoneFactory_jm_getInstance_0()
    end if
    jresult => ScreenCaptureFactory_jcell_instance
  end function

  subroutine ScreenCaptureFactory_jsetstatic_instance(jvalue)
    class(ScreenCapture), target, optional :: jvalue
    ScreenCaptureFactory_jset_instance = .true.
    if (present(jvalue)) then
      ScreenCaptureFactory_jcell_instance => jvalue
    else
      ScreenCaptureFactory_jcell_instance => null()
    end if
  end subroutine

  function ScreenCaptureFactory_jnew_0() result(this)
    class(ScreenCaptureFactory), pointer :: this
    allocate(this)
    this%jclass = 'ScreenCaptureFactory'
  end function

  recursive function ScreenCaptureFactory_jm_getInstance_0() result(jresult)
    class(ScreenCapture), pointer :: jresult
        jresult => ScreenCaptureFactory_jstatic_instance()
        return
  end function
end module ScreenCaptureFactory_m

