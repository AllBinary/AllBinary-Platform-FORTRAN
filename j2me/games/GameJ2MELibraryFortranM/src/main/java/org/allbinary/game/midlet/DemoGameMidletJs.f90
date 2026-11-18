! 
! AllBinary Open License Version 1 
! Copyright (c) 2026 AllBinary 
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
! package org.allbinary.game.midlet
module DemoGameMidletJs_m
  use JR_m
  use GameCanvasRunnableInterface_m
  implicit none

  type, extends(JObject) :: DemoGameMidletJs
  contains
    procedure :: jm_createDemoGameCanvasRunnableInterface_0 => DemoGameMidletJs_jm_createDemoGameCanvasRunnableInterface_0
  end type


contains

  function DemoGameMidletJs_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoGameMidletJs), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoGameMidletJs)
      jresult => object
    end select
  end function

  function DemoGameMidletJs_jnew_0() result(this)
    class(DemoGameMidletJs), pointer :: this
    allocate(this)
    this%jclass = 'DemoGameMidletJs'
  end function

  recursive function DemoGameMidletJs_jm_createDemoGameCanvasRunnableInterface_0(this) result(jresult)
    class(DemoGameMidletJs), target :: this
    class(GameCanvasRunnableInterface), pointer :: jresult
    error stop 'AbstractMethodError: DemoGameMidletJs.createDemoGameCanvasRunnableInterface'
  end function
end module DemoGameMidletJs_m

