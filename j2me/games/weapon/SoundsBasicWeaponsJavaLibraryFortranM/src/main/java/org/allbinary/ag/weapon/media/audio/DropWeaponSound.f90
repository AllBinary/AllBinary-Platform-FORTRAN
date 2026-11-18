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
! package org.allbinary.ag.weapon.media.audio
module DropWeaponSound_m
  use JR_m
  use CompositeSound_m
  use Sound_m
  implicit none

  type, extends(CompositeSound) :: DropWeaponSound
  end type

  class(Sound), pointer, save :: DropWeaponSound_jcell_soundInterface => null()
  logical, save :: DropWeaponSound_jset_soundInterface = .false.

contains

  function DropWeaponSound_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DropWeaponSound), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DropWeaponSound)
      jresult => object
    end select
  end function

  function DropWeaponSound_jstatic_soundInterface() result(jresult)
    class(Sound), pointer :: jresult
    if (.not. DropWeaponSound_jset_soundInterface) then
      DropWeaponSound_jset_soundInterface = .true.
      DropWeaponSound_jcell_soundInterface => DropWeaponSound_jnew_0()
    end if
    jresult => DropWeaponSound_jcell_soundInterface
  end function

  subroutine DropWeaponSound_jsetstatic_soundInterface(jvalue)
    class(Sound), target, optional :: jvalue
    DropWeaponSound_jset_soundInterface = .true.
    if (present(jvalue)) then
      DropWeaponSound_jcell_soundInterface => jvalue
    else
      DropWeaponSound_jcell_soundInterface => null()
    end if
  end subroutine

  recursive function DropWeaponSound_jnew_0() result(this)
    class(DropWeaponSound), pointer :: this
    allocate(this)
    this%jclass = 'DropWeaponSound'
        continue ! super()
  end function

  recursive function DropWeaponSound_jm_getInstance_0() result(jresult)
    class(Sound), pointer :: jresult
        jresult => DropWeaponSound_jstatic_soundInterface()
        return
  end function
end module DropWeaponSound_m

function DropWeaponSound_jnew_0_jext() result(this)
  use DropWeaponSound_m, only: JObject, DropWeaponSound_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DropWeaponSound_jnew_0()
end function

