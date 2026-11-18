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
module ExplosionBasicSound_m
  use JR_m
  use CompositeSound_m
  use Sound_m
  implicit none

  type, extends(CompositeSound) :: ExplosionBasicSound
  end type

  class(Sound), pointer, save :: ExplosionBasicSound_jcell_soundInterface => null()
  logical, save :: ExplosionBasicSound_jset_soundInterface = .false.

contains

  function ExplosionBasicSound_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ExplosionBasicSound), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ExplosionBasicSound)
      jresult => object
    end select
  end function

  function ExplosionBasicSound_jstatic_soundInterface() result(jresult)
    class(Sound), pointer :: jresult
    if (.not. ExplosionBasicSound_jset_soundInterface) then
      ExplosionBasicSound_jset_soundInterface = .true.
      ExplosionBasicSound_jcell_soundInterface => ExplosionBasicSound_jnew_0()
    end if
    jresult => ExplosionBasicSound_jcell_soundInterface
  end function

  subroutine ExplosionBasicSound_jsetstatic_soundInterface(jvalue)
    class(Sound), target, optional :: jvalue
    ExplosionBasicSound_jset_soundInterface = .true.
    if (present(jvalue)) then
      ExplosionBasicSound_jcell_soundInterface => jvalue
    else
      ExplosionBasicSound_jcell_soundInterface => null()
    end if
  end subroutine

  recursive function ExplosionBasicSound_jnew_0() result(this)
    class(ExplosionBasicSound), pointer :: this
    allocate(this)
    this%jclass = 'ExplosionBasicSound'
        continue ! super()
  end function

  recursive function ExplosionBasicSound_jm_getInstance_0() result(jresult)
    class(Sound), pointer :: jresult
        jresult => ExplosionBasicSound_jstatic_soundInterface()
        return
  end function
end module ExplosionBasicSound_m

function ExplosionBasicSound_jnew_0_jext() result(this)
  use ExplosionBasicSound_m, only: JObject, ExplosionBasicSound_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ExplosionBasicSound_jnew_0()
end function

