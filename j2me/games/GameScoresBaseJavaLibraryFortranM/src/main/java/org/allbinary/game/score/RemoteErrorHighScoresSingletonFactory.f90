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
! package org.allbinary.game.score
module RemoteErrorHighScoresSingletonFactory_m
  use JR_m
  use CommonStrings_m
  use HighScores_m
  implicit none

  type, extends(JObject) :: RemoteErrorHighScoresSingletonFactory
  end type

  class(HighScores), pointer, save :: RemoteErrorHighScoresSingletonFactory_jcell_SINGLETON => null()
  logical, save :: RemoteErrorHighScoresSingletonFactory_jset_SINGLETON = .false.

contains

  function RemoteErrorHighScoresSingletonFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RemoteErrorHighScoresSingletonFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RemoteErrorHighScoresSingletonFactory)
      jresult => object
    end select
  end function

  function RemoteErrorHighScoresSingletonFactory_jstatic_SINGLETON() result(jresult)
    class(HighScores), pointer :: jresult
    class(CommonStrings), pointer :: jtemp1
    class(CommonStrings), pointer :: jtemp2
    if (.not. RemoteErrorHighScoresSingletonFactory_jset_SINGLETON) then
      RemoteErrorHighScoresSingletonFactory_jset_SINGLETON = .true.
      jtemp1 => CommonStrings_jm_getInstance_0()
    jtemp2 => CommonStrings_jm_getInstance_0()
    RemoteErrorHighScoresSingletonFactory_jcell_SINGLETON => HighScores_jnew_3(jtemp1%f_LOADING, 'Remote High Scores Did Not Load', jtemp2%f_PERIODS)
    end if
    jresult => RemoteErrorHighScoresSingletonFactory_jcell_SINGLETON
  end function

  subroutine RemoteErrorHighScoresSingletonFactory_jsetstatic_SINGLETON(jvalue)
    class(HighScores), target, optional :: jvalue
    RemoteErrorHighScoresSingletonFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      RemoteErrorHighScoresSingletonFactory_jcell_SINGLETON => jvalue
    else
      RemoteErrorHighScoresSingletonFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  function RemoteErrorHighScoresSingletonFactory_jnew_0() result(this)
    class(RemoteErrorHighScoresSingletonFactory), pointer :: this
    allocate(this)
    this%jclass = 'RemoteErrorHighScoresSingletonFactory'
  end function

  recursive function RemoteErrorHighScoresSingletonFactory_jm_getInstance_0() result(jresult)
    class(HighScores), pointer :: jresult
        jresult => RemoteErrorHighScoresSingletonFactory_jstatic_SINGLETON()
        return
  end function
end module RemoteErrorHighScoresSingletonFactory_m

