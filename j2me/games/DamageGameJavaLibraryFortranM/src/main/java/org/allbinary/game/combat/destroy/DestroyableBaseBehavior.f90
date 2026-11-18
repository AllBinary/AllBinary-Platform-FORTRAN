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
! package org.allbinary.game.combat.destroy
module DestroyableBaseBehavior_m
  use JR_m
  use CommonStrings_m
  use DestroyableInterface_m
  implicit none

  type, extends(DestroyableInterface) :: DestroyableBaseBehavior
  contains
    procedure :: jm_getName_0 => DestroyableBaseBehavior_jm_getName_0
    procedure :: jm_isDestroyed_0 => DestroyableBaseBehavior_jm_isDestroyed_0
    procedure :: jm_setDestroyed_1 => DestroyableBaseBehavior_jm_setDestroyed_1
  end type

  class(DestroyableBaseBehavior), pointer, save :: DestroyableBaseBehavior_jcell_instance => null()
  logical, save :: DestroyableBaseBehavior_jset_instance = .false.

contains

  function DestroyableBaseBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DestroyableBaseBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DestroyableBaseBehavior)
      jresult => object
    end select
  end function

  function DestroyableBaseBehavior_jstatic_instance() result(jresult)
    class(DestroyableBaseBehavior), pointer :: jresult
    if (.not. DestroyableBaseBehavior_jset_instance) then
      DestroyableBaseBehavior_jset_instance = .true.
      DestroyableBaseBehavior_jcell_instance => DestroyableBaseBehavior_jnew_0()
    end if
    jresult => DestroyableBaseBehavior_jcell_instance
  end function

  subroutine DestroyableBaseBehavior_jsetstatic_instance(jvalue)
    class(DestroyableBaseBehavior), target, optional :: jvalue
    DestroyableBaseBehavior_jset_instance = .true.
    if (present(jvalue)) then
      DestroyableBaseBehavior_jcell_instance => jvalue
    else
      DestroyableBaseBehavior_jcell_instance => null()
    end if
  end subroutine

  function DestroyableBaseBehavior_jnew_0() result(this)
    class(DestroyableBaseBehavior), pointer :: this
    allocate(this)
    this%jclass = 'DestroyableBaseBehavior'
  end function

  recursive function DestroyableBaseBehavior_jm_getInstance_0() result(jresult)
    class(DestroyableBaseBehavior), pointer :: jresult
        jresult => DestroyableBaseBehavior_jstatic_instance()
        return
  end function

  recursive function DestroyableBaseBehavior_jm_getName_0(this) result(jresult)
    class(DestroyableBaseBehavior), target :: this
    character(len=:), allocatable :: jresult
    character(len=:), allocatable :: jtemp1
        jtemp1 = JR_className(this)
        jresult = jtemp1
        return
  end function

  recursive function DestroyableBaseBehavior_jm_isDestroyed_0(this) result(jresult)
    class(DestroyableBaseBehavior), target :: this
    logical :: jresult
    class(CommonStrings), pointer :: jtemp2
        jtemp2 => CommonStrings_jm_getInstance_0()
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive subroutine DestroyableBaseBehavior_jm_setDestroyed_1(this, j_destroyed)
    class(DestroyableBaseBehavior), target :: this
    logical, value :: j_destroyed
    continue
  end subroutine
end module DestroyableBaseBehavior_m

