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
module ScreenCapture_m
  use JR_m
  implicit none

  type, extends(JObject) :: ScreenCapture
  contains
    procedure :: jm_saveFrame_0 => ScreenCapture_jm_saveFrame_0
    procedure :: jm_startRecording_0 => ScreenCapture_jm_startRecording_0
    procedure :: jm_endRecording_0 => ScreenCapture_jm_endRecording_0
  end type


contains

  function ScreenCapture_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScreenCapture), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScreenCapture)
      jresult => object
    end select
  end function

  function ScreenCapture_jnew_0() result(this)
    class(ScreenCapture), pointer :: this
    allocate(this)
    this%jclass = 'ScreenCapture'
  end function

  recursive subroutine ScreenCapture_jm_saveFrame_0(this)
    class(ScreenCapture), target :: this
    continue
  end subroutine

  recursive subroutine ScreenCapture_jm_startRecording_0(this)
    class(ScreenCapture), target :: this
    continue
  end subroutine

  recursive subroutine ScreenCapture_jm_endRecording_0(this)
    class(ScreenCapture), target :: this
    continue
  end subroutine
end module ScreenCapture_m

