! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
module LastFetchHighScoresFactory_m
  use JR_m
  use NullUtil_m
  use NoHighScoresFactory_m
  use HighScores_m
  implicit none

  type, extends(JObject) :: LastFetchHighScoresFactory
    type(JRef), allocatable :: f_highScoresArray(:)
  end type

  class(JObject), pointer, save :: LastFetchHighScoresFactory_jcell_instance => null()
  logical, save :: LastFetchHighScoresFactory_jset_instance = .false.

contains

  function LastFetchHighScoresFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LastFetchHighScoresFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LastFetchHighScoresFactory)
      jresult => object
    end select
  end function

  function LastFetchHighScoresFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. LastFetchHighScoresFactory_jset_instance) then
      LastFetchHighScoresFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    LastFetchHighScoresFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => LastFetchHighScoresFactory_jcell_instance
  end function

  subroutine LastFetchHighScoresFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    LastFetchHighScoresFactory_jset_instance = .true.
    if (present(jvalue)) then
      LastFetchHighScoresFactory_jcell_instance => jvalue
    else
      LastFetchHighScoresFactory_jcell_instance => null()
    end if
  end subroutine

  function LastFetchHighScoresFactory_jnew_0() result(this)
    class(LastFetchHighScoresFactory), pointer :: this
    class(NoHighScoresFactory), pointer :: jtemp3
    allocate(this)
    this%jclass = 'LastFetchHighScoresFactory'
    jtemp3 => NoHighScoresFactory_jm_getInstance_0()
    this%f_highScoresArray = jtemp3%f_NO_HIGH_SCORES
  end function

  recursive function LastFetchHighScoresFactory_jm_getInstance_0() result(jresult)
    class(LastFetchHighScoresFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(LastFetchHighScoresFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call LastFetchHighScoresFactory_jsetstatic_instance(LastFetchHighScoresFactory_jnew_0())
        end if
        jresult => LastFetchHighScoresFactory_jcast(LastFetchHighScoresFactory_jstatic_instance())
        return
  end function
end module LastFetchHighScoresFactory_m

