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
! package org.allbinary.game.ag.layer.hud.basic.notification
module NoGameNotificationHudSingleton_m
  use JR_m
  use BasicHudFactory_m
  use LogUtil_m
  use CommonStrings_m
  use GameNotificationHud_m
  use NoGameGameNotificationHud_m
  implicit none

  type, extends(JObject) :: NoGameNotificationHudSingleton
    class(LogUtil), pointer :: f_logUtil => null()
    class(GameNotificationHud), pointer :: f_gameNotificationHud => null()
  contains
    procedure :: jm_getGameNotificationHud_0 => NoGameNotificationHudSingleton_jm_getGameNotificationHud_0
  end type

  class(NoGameNotificationHudSingleton), pointer, save :: NoGameNotificationHudSingleton_jcell_instance => null()
  logical, save :: NoGameNotificationHudSingleton_jset_instance = .false.

contains

  function NoGameNotificationHudSingleton_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoGameNotificationHudSingleton), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoGameNotificationHudSingleton)
      jresult => object
    end select
  end function

  function NoGameNotificationHudSingleton_jstatic_instance() result(jresult)
    class(NoGameNotificationHudSingleton), pointer :: jresult
    if (.not. NoGameNotificationHudSingleton_jset_instance) then
      NoGameNotificationHudSingleton_jset_instance = .true.
      NoGameNotificationHudSingleton_jcell_instance => NoGameNotificationHudSingleton_jnew_0()
    end if
    jresult => NoGameNotificationHudSingleton_jcell_instance
  end function

  subroutine NoGameNotificationHudSingleton_jsetstatic_instance(jvalue)
    class(NoGameNotificationHudSingleton), target, optional :: jvalue
    NoGameNotificationHudSingleton_jset_instance = .true.
    if (present(jvalue)) then
      NoGameNotificationHudSingleton_jcell_instance => jvalue
    else
      NoGameNotificationHudSingleton_jcell_instance => null()
    end if
  end subroutine

  recursive function NoGameNotificationHudSingleton_jnew_0() result(this)
    class(NoGameNotificationHudSingleton), pointer :: this
    class(BasicHudFactory), pointer :: j_basicHudFactory
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'NoGameNotificationHudSingleton'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_gameNotificationHud => GameNotificationHud_jstatic_NULL_GAME_NOTIFICATION()
        continue ! try
            j_basicHudFactory => BasicHudFactory_jm_getInstance_0()
            this%f_gameNotificationHud => NoGameGameNotificationHud_jnew_0()
  end function

  recursive function NoGameNotificationHudSingleton_jm_getInstance_0() result(jresult)
    class(NoGameNotificationHudSingleton), pointer :: jresult
        jresult => NoGameNotificationHudSingleton_jstatic_instance()
        return
  end function

  recursive function NoGameNotificationHudSingleton_jm_getGameNotificationHud_0(this) result(jresult)
    class(NoGameNotificationHudSingleton), target :: this
    class(GameNotificationHud), pointer :: jresult
        jresult => this%f_gameNotificationHud
        return
  end function
end module NoGameNotificationHudSingleton_m

