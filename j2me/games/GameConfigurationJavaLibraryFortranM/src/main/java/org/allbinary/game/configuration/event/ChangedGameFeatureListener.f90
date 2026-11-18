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
! package org.allbinary.game.configuration.event
module ChangedGameFeatureListener_m
  use JR_m
  use GameConfiguration_m
  use BaseChangedGameFeatureListener_m
  implicit none

  type, extends(BaseChangedGameFeatureListener) :: ChangedGameFeatureListener
  contains
    procedure :: jm_isChangedGameConfiguration_1 => ChangedGameFeatureListener_jm_isChangedGameConfiguration_1
  end type

  class(ChangedGameFeatureListener), pointer, save :: ChangedGameFeatureListener_jcell_gameFeatureListener => null()
  logical, save :: ChangedGameFeatureListener_jset_gameFeatureListener = .false.

contains

  function ChangedGameFeatureListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ChangedGameFeatureListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ChangedGameFeatureListener)
      jresult => object
    end select
  end function

  function ChangedGameFeatureListener_jstatic_gameFeatureListener() result(jresult)
    class(ChangedGameFeatureListener), pointer :: jresult
    if (.not. ChangedGameFeatureListener_jset_gameFeatureListener) then
      ChangedGameFeatureListener_jset_gameFeatureListener = .true.
      ChangedGameFeatureListener_jcell_gameFeatureListener => ChangedGameFeatureListener_jnew_0()
    end if
    jresult => ChangedGameFeatureListener_jcell_gameFeatureListener
  end function

  subroutine ChangedGameFeatureListener_jsetstatic_gameFeatureListener(jvalue)
    class(ChangedGameFeatureListener), target, optional :: jvalue
    ChangedGameFeatureListener_jset_gameFeatureListener = .true.
    if (present(jvalue)) then
      ChangedGameFeatureListener_jcell_gameFeatureListener => jvalue
    else
      ChangedGameFeatureListener_jcell_gameFeatureListener => null()
    end if
  end subroutine

  function ChangedGameFeatureListener_jnew_0() result(this)
    class(ChangedGameFeatureListener), pointer :: this
    allocate(this)
    this%jclass = 'ChangedGameFeatureListener'
  end function

  recursive function ChangedGameFeatureListener_jm_getInstance_0() result(jresult)
    class(ChangedGameFeatureListener), pointer :: jresult
        jresult => ChangedGameFeatureListener_jstatic_gameFeatureListener()
        return
  end function

  recursive function ChangedGameFeatureListener_jm_isChangedGameConfiguration_1(this, j_gameConfiguration) result(jresult)
    class(ChangedGameFeatureListener), target :: this
    class(GameConfiguration), target, optional :: j_gameConfiguration
    logical :: jresult
        jresult = this%f_list%jm_contains_1(j_gameConfiguration)
        return
  end function
end module ChangedGameFeatureListener_m

function ChangedGameFeatureListener_jnew_0_jext() result(this)
  use ChangedGameFeatureListener_m, only: JObject, ChangedGameFeatureListener_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ChangedGameFeatureListener_jnew_0()
end function

