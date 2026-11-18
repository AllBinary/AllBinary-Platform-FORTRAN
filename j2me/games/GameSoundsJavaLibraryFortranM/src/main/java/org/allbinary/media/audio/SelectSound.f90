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
module SelectSound_m
  use JR_m
  use CompositeSound_m
  use Sound_m
  implicit none

  type, extends(CompositeSound) :: SelectSound
  end type

  class(Sound), pointer, save :: SelectSound_jcell_soundInterface => null()
  logical, save :: SelectSound_jset_soundInterface = .false.

contains

  function SelectSound_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SelectSound), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SelectSound)
      jresult => object
    end select
  end function

  function SelectSound_jstatic_soundInterface() result(jresult)
    class(Sound), pointer :: jresult
    if (.not. SelectSound_jset_soundInterface) then
      SelectSound_jset_soundInterface = .true.
      SelectSound_jcell_soundInterface => SelectSound_jnew_0()
    end if
    jresult => SelectSound_jcell_soundInterface
  end function

  subroutine SelectSound_jsetstatic_soundInterface(jvalue)
    class(Sound), target, optional :: jvalue
    SelectSound_jset_soundInterface = .true.
    if (present(jvalue)) then
      SelectSound_jcell_soundInterface => jvalue
    else
      SelectSound_jcell_soundInterface => null()
    end if
  end subroutine

  recursive function SelectSound_jnew_0() result(this)
    class(SelectSound), pointer :: this
    allocate(this)
    this%jclass = 'SelectSound'
        continue ! super()
  end function

  recursive function SelectSound_jm_getInstance_0() result(jresult)
    class(Sound), pointer :: jresult
        jresult => SelectSound_jstatic_soundInterface()
        return
  end function
end module SelectSound_m

function SelectSound_jnew_0_jext() result(this)
  use SelectSound_m, only: JObject, SelectSound_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => SelectSound_jnew_0()
end function

