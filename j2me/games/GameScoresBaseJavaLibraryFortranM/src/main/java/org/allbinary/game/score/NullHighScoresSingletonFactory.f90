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
module NullHighScoresSingletonFactory_m
  use JR_m
  use CommonStrings_m
  use HighScores_m
  implicit none

  type, extends(JObject) :: NullHighScoresSingletonFactory
  end type

  class(HighScores), pointer, save :: NullHighScoresSingletonFactory_jcell_SINGLETON => null()
  logical, save :: NullHighScoresSingletonFactory_jset_SINGLETON = .false.

contains

  function NullHighScoresSingletonFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullHighScoresSingletonFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullHighScoresSingletonFactory)
      jresult => object
    end select
  end function

  function NullHighScoresSingletonFactory_jstatic_SINGLETON() result(jresult)
    class(HighScores), pointer :: jresult
    class(CommonStrings), pointer :: jtemp1
    class(CommonStrings), pointer :: jtemp2
    if (.not. NullHighScoresSingletonFactory_jset_SINGLETON) then
      NullHighScoresSingletonFactory_jset_SINGLETON = .true.
      jtemp1 => CommonStrings_jm_getInstance_0()
    jtemp2 => CommonStrings_jm_getInstance_0()
    NullHighScoresSingletonFactory_jcell_SINGLETON => HighScores_jnew_3(jtemp1%f_LOADING, 'High Scores Not Loaded', jtemp2%f_PERIODS)
    end if
    jresult => NullHighScoresSingletonFactory_jcell_SINGLETON
  end function

  subroutine NullHighScoresSingletonFactory_jsetstatic_SINGLETON(jvalue)
    class(HighScores), target, optional :: jvalue
    NullHighScoresSingletonFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      NullHighScoresSingletonFactory_jcell_SINGLETON => jvalue
    else
      NullHighScoresSingletonFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  function NullHighScoresSingletonFactory_jnew_0() result(this)
    class(NullHighScoresSingletonFactory), pointer :: this
    allocate(this)
    this%jclass = 'NullHighScoresSingletonFactory'
  end function

  recursive function NullHighScoresSingletonFactory_jm_getInstance_0() result(jresult)
    class(HighScores), pointer :: jresult
        jresult => NullHighScoresSingletonFactory_jstatic_SINGLETON()
        return
  end function
end module NullHighScoresSingletonFactory_m

