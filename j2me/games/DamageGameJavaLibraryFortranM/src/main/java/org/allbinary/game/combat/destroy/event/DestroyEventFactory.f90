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
! package org.allbinary.game.combat.destroy.event
module DestroyEventFactory_m
  use JR_m
  use AllBinaryGameCanvas_m
  use AllBinaryEventObject_m
  use AllBinaryEventObjectFactoryInterface_m
  use DestroyedEvent_m
  implicit none

  type, extends(AllBinaryEventObjectFactoryInterface) :: DestroyEventFactory
    class(AllBinaryGameCanvas), pointer :: f_combatGameCanvas => null()
  contains
    procedure :: jm_getInstance_0 => DestroyEventFactory_jm_getInstance_0
  end type


contains

  function DestroyEventFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DestroyEventFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DestroyEventFactory)
      jresult => object
    end select
  end function

  recursive function DestroyEventFactory_jnew_1(j_combatGameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_combatGameCanvas
    class(DestroyEventFactory), pointer :: this
    allocate(this)
    this%jclass = 'DestroyEventFactory'
    
        this%f_combatGameCanvas => j_combatGameCanvas
  end function

  recursive function DestroyEventFactory_jm_getInstance_0(this) result(jresult)
    class(DestroyEventFactory), target :: this
    class(AllBinaryEventObject), pointer :: jresult
        jresult => DestroyedEvent_jnew_1(this%f_combatGameCanvas)
        return
  end function
end module DestroyEventFactory_m

