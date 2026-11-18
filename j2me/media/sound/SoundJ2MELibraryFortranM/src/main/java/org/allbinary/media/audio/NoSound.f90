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
! package org.allbinary.media.audio
module NoSound_m
  use JR_m
  use StringUtil_m
  use Sound_m
  use NoPlayer_m
  implicit none

  type, extends(Sound) :: NoSound
  end type

  class(NoSound), pointer, save :: NoSound_jcell_instance => null()
  logical, save :: NoSound_jset_instance = .false.

contains

  function NoSound_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoSound), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoSound)
      jresult => object
    end select
  end function

  function NoSound_jstatic_instance() result(jresult)
    class(NoSound), pointer :: jresult
    if (.not. NoSound_jset_instance) then
      NoSound_jset_instance = .true.
      NoSound_jcell_instance => NoSound_jnew_0()
    end if
    jresult => NoSound_jcell_instance
  end function

  subroutine NoSound_jsetstatic_instance(jvalue)
    class(NoSound), target, optional :: jvalue
    NoSound_jset_instance = .true.
    if (present(jvalue)) then
      NoSound_jcell_instance => jvalue
    else
      NoSound_jcell_instance => null()
    end if
  end subroutine

  recursive function NoSound_jnew_0() result(this)
    class(NoSound), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'NoSound'
        jtemp1 => StringUtil_jm_getInstance_0()
        continue ! super()
        call this%jm_setPlayerP_1(NoPlayer_jstatic_NO_PLAYER())
  end function

  recursive function NoSound_jm_getInstance_0() result(jresult)
    class(NoSound), pointer :: jresult
        jresult => NoSound_jstatic_instance()
        return
  end function
end module NoSound_m

function NoSound_jnew_0_jext() result(this)
  use NoSound_m, only: JObject, NoSound_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoSound_jnew_0()
end function

