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
! package org.allbinary.game.tick
module NullTickable_m
  use JR_m
  use AllBinaryLayerManager_m
  use TickableInterface_m
  implicit none

  type, extends(TickableInterface) :: NullTickable
    character(len=:), allocatable :: f_NAME
  contains
    procedure :: jm_processTick_1 => NullTickable_jm_processTick_1
    procedure :: jm_getName_0 => NullTickable_jm_getName_0
  end type

  class(NullTickable), pointer, save :: NullTickable_jcell_SINGLETON => null()
  logical, save :: NullTickable_jset_SINGLETON = .false.

contains

  function NullTickable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullTickable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullTickable)
      jresult => object
    end select
  end function

  function NullTickable_jstatic_SINGLETON() result(jresult)
    class(NullTickable), pointer :: jresult
    if (.not. NullTickable_jset_SINGLETON) then
      NullTickable_jset_SINGLETON = .true.
      NullTickable_jcell_SINGLETON => NullTickable_jnew_0()
    end if
    jresult => NullTickable_jcell_SINGLETON
  end function

  subroutine NullTickable_jsetstatic_SINGLETON(jvalue)
    class(NullTickable), target, optional :: jvalue
    NullTickable_jset_SINGLETON = .true.
    if (present(jvalue)) then
      NullTickable_jcell_SINGLETON => jvalue
    else
      NullTickable_jcell_SINGLETON => null()
    end if
  end subroutine

  function NullTickable_jnew_0() result(this)
    class(NullTickable), pointer :: this
    allocate(this)
    this%jclass = 'NullTickable'
    this%f_NAME = ''
    this%f_NAME = 'NulLTickable'
  end function

  recursive function NullTickable_jm_getInstance_0() result(jresult)
    class(NullTickable), pointer :: jresult
        jresult => NullTickable_jstatic_SINGLETON()
        return
  end function

  recursive subroutine NullTickable_jm_processTick_1(this, j_allBinaryLayerManager)
    class(NullTickable), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    continue
  end subroutine

  recursive function NullTickable_jm_getName_0(this) result(jresult)
    class(NullTickable), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_NAME
        return
  end function
end module NullTickable_m

