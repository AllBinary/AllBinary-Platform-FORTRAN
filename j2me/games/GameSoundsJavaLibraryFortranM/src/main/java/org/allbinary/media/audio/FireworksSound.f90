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
module FireworksSound_m
  use JR_m
  use CompositeSound_m
  use Sound_m
  implicit none

  type, extends(CompositeSound) :: FireworksSound
  end type

  class(Sound), pointer, save :: FireworksSound_jcell_soundInterface => null()
  logical, save :: FireworksSound_jset_soundInterface = .false.

contains

  function FireworksSound_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FireworksSound), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FireworksSound)
      jresult => object
    end select
  end function

  function FireworksSound_jstatic_soundInterface() result(jresult)
    class(Sound), pointer :: jresult
    if (.not. FireworksSound_jset_soundInterface) then
      FireworksSound_jset_soundInterface = .true.
      FireworksSound_jcell_soundInterface => FireworksSound_jnew_0()
    end if
    jresult => FireworksSound_jcell_soundInterface
  end function

  subroutine FireworksSound_jsetstatic_soundInterface(jvalue)
    class(Sound), target, optional :: jvalue
    FireworksSound_jset_soundInterface = .true.
    if (present(jvalue)) then
      FireworksSound_jcell_soundInterface => jvalue
    else
      FireworksSound_jcell_soundInterface => null()
    end if
  end subroutine

  recursive function FireworksSound_jnew_0() result(this)
    class(FireworksSound), pointer :: this
    allocate(this)
    this%jclass = 'FireworksSound'
        continue ! super()
  end function

  recursive function FireworksSound_jm_getInstance_0() result(jresult)
    class(Sound), pointer :: jresult
        jresult => FireworksSound_jstatic_soundInterface()
        return
  end function
end module FireworksSound_m

function FireworksSound_jnew_0_jext() result(this)
  use FireworksSound_m, only: JObject, FireworksSound_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => FireworksSound_jnew_0()
end function

