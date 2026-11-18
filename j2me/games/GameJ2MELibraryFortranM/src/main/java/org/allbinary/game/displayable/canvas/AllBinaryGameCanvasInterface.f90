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
! package org.allbinary.game.displayable.canvas
module AllBinaryGameCanvasInterface_m
  use JR_m
  use AllBinaryGameLayerManager_m
  use DisplayableInterface_m
  implicit none

  type, extends(DisplayableInterface) :: AllBinaryGameCanvasInterface
  contains
    procedure :: jm_getLayerManager_0 => AllBinaryGameCanvasInterface_jm_getLayerManager_0
  end type


contains

  function AllBinaryGameCanvasInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryGameCanvasInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryGameCanvasInterface)
      jresult => object
    end select
  end function

  function AllBinaryGameCanvasInterface_jnew_0() result(this)
    class(AllBinaryGameCanvasInterface), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryGameCanvasInterface'
  end function

  recursive function AllBinaryGameCanvasInterface_jm_getLayerManager_0(this) result(jresult)
    class(AllBinaryGameCanvasInterface), target :: this
    class(AllBinaryGameLayerManager), pointer :: jresult
    error stop 'AbstractMethodError: AllBinaryGameCanvasInterface.getLayerManager'
  end function
end module AllBinaryGameCanvasInterface_m

