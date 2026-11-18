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
! package org.allbinary.media.audio
module ErrorSound_m
  use JR_m
  use CompositeSound_m
  use Sound_m
  implicit none

  type, extends(CompositeSound) :: ErrorSound
  end type

  class(Sound), pointer, save :: ErrorSound_jcell_soundInterface => null()
  logical, save :: ErrorSound_jset_soundInterface = .false.

contains

  function ErrorSound_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ErrorSound), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ErrorSound)
      jresult => object
    end select
  end function

  function ErrorSound_jstatic_soundInterface() result(jresult)
    class(Sound), pointer :: jresult
    if (.not. ErrorSound_jset_soundInterface) then
      ErrorSound_jset_soundInterface = .true.
      ErrorSound_jcell_soundInterface => ErrorSound_jnew_0()
    end if
    jresult => ErrorSound_jcell_soundInterface
  end function

  subroutine ErrorSound_jsetstatic_soundInterface(jvalue)
    class(Sound), target, optional :: jvalue
    ErrorSound_jset_soundInterface = .true.
    if (present(jvalue)) then
      ErrorSound_jcell_soundInterface => jvalue
    else
      ErrorSound_jcell_soundInterface => null()
    end if
  end subroutine

  recursive function ErrorSound_jnew_0() result(this)
    class(ErrorSound), pointer :: this
    allocate(this)
    this%jclass = 'ErrorSound'
        continue ! super()
  end function

  recursive function ErrorSound_jm_getInstance_0() result(jresult)
    class(Sound), pointer :: jresult
        jresult => ErrorSound_jstatic_soundInterface()
        return
  end function
end module ErrorSound_m

function ErrorSound_jnew_0_jext() result(this)
  use ErrorSound_m, only: JObject, ErrorSound_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ErrorSound_jnew_0()
end function

