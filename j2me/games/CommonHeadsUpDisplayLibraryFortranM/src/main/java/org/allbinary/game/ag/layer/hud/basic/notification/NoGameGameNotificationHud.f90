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
module NoGameGameNotificationHud_m
  use JR_m
  use BasicHudFactory_m
  use BasicColorFactory_m
  use GameNotificationHud_m
  implicit none

  type, extends(GameNotificationHud) :: NoGameGameNotificationHud
  end type


contains

  function NoGameGameNotificationHud_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoGameGameNotificationHud), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoGameGameNotificationHud)
      jresult => object
    end select
  end function

  recursive function NoGameGameNotificationHud_jnew_0() result(this)
    class(NoGameGameNotificationHud), pointer :: this
    class(BasicHudFactory), pointer :: jtemp1
    class(BasicHudFactory), pointer :: jtemp2
    class(BasicColorFactory), pointer :: jtemp3
    allocate(this)
    this%jclass = 'NoGameGameNotificationHud'
        jtemp1 => BasicHudFactory_jm_getInstance_0()
        jtemp2 => BasicHudFactory_jm_getInstance_0()
        jtemp3 => BasicColorFactory_jm_getInstance_0()
        continue ! super()
        this%f_updateMaxWidth = 40
        this%f_updateMaxHeight = 14
  end function
end module NoGameGameNotificationHud_m

function NoGameGameNotificationHud_jnew_0_jext() result(this)
  use NoGameGameNotificationHud_m, only: JObject, NoGameGameNotificationHud_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoGameGameNotificationHud_jnew_0()
end function

