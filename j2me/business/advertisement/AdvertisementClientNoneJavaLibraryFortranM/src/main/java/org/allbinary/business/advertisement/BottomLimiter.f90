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
! package org.allbinary.business.advertisement
module BottomLimiter_m
  use JR_m
  use GameAdState_m
  use DisplayInfoSingleton_m
  use GameAdStateFactory_m
  implicit none

  type, extends(JObject) :: BottomLimiter
    integer(4) :: f_bottom = 0
    integer(4) :: f_deltaY = 0
    integer(4) :: f_lower = 0
    integer(4) :: f_higher = 0
  contains
    procedure :: jm_init_2 => BottomLimiter_jm_init_2
    procedure :: jm_update_0 => BottomLimiter_jm_update_0
    procedure :: jm_getDeltaY_0 => BottomLimiter_jm_getDeltaY_0
    procedure :: jm_getBottom_0 => BottomLimiter_jm_getBottom_0
  end type

  class(BottomLimiter), pointer, save :: BottomLimiter_jcell_instance => null()
  logical, save :: BottomLimiter_jset_instance = .false.

contains

  function BottomLimiter_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BottomLimiter), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BottomLimiter)
      jresult => object
    end select
  end function

  function BottomLimiter_jstatic_instance() result(jresult)
    class(BottomLimiter), pointer :: jresult
    if (.not. BottomLimiter_jset_instance) then
      BottomLimiter_jset_instance = .true.
      BottomLimiter_jcell_instance => BottomLimiter_jnew_0()
    end if
    jresult => BottomLimiter_jcell_instance
  end function

  subroutine BottomLimiter_jsetstatic_instance(jvalue)
    class(BottomLimiter), target, optional :: jvalue
    BottomLimiter_jset_instance = .true.
    if (present(jvalue)) then
      BottomLimiter_jcell_instance => jvalue
    else
      BottomLimiter_jcell_instance => null()
    end if
  end subroutine

  recursive function BottomLimiter_jnew_0() result(this)
    class(BottomLimiter), pointer :: this
    allocate(this)
    this%jclass = 'BottomLimiter'
    
    
    
    
        continue
  end function

  recursive function BottomLimiter_jm_getInstance_0() result(jresult)
    class(BottomLimiter), pointer :: jresult
        jresult => BottomLimiter_jstatic_instance()
        return
  end function

  recursive subroutine BottomLimiter_jm_init_2(this, j_lower, j_higher)
    class(BottomLimiter), target :: this
    integer(4), value :: j_lower
    integer(4), value :: j_higher
        this%f_lower = j_lower
        this%f_higher = j_higher
  end subroutine

  recursive subroutine BottomLimiter_jm_update_0(this)
    class(BottomLimiter), target :: this
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    class(GameAdState), pointer :: j_gameAdState
    class(GameAdStateFactory), pointer :: jtemp1
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        jtemp1 => GameAdStateFactory_jm_getInstance_0()
        j_gameAdState => jtemp1%jm_getCurrentInstance_0()
        if (j_gameAdState%jm_isShowingAt_0()) then
            this%f_deltaY = this%f_higher
        else
            this%f_deltaY = this%f_lower
        end if
        this%f_bottom = (j_displayInfo%jm_getLastHeight_0() - this%f_deltaY)
  end subroutine

  recursive function BottomLimiter_jm_getDeltaY_0(this) result(jresult)
    class(BottomLimiter), target :: this
    integer(4) :: jresult
        jresult = this%f_deltaY
        return
  end function

  recursive function BottomLimiter_jm_getBottom_0(this) result(jresult)
    class(BottomLimiter), target :: this
    integer(4) :: jresult
        jresult = this%f_bottom
        return
  end function
end module BottomLimiter_m

