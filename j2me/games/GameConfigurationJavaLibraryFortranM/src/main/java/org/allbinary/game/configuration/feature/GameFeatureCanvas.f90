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
! package org.allbinary.game.configuration.feature
module GameFeatureCanvas_m
  use JR_m
  implicit none

  type, extends(Canvas) :: GameFeatureCanvas
  contains
    procedure :: jm_paint_1 => GameFeatureCanvas_jm_paint_1
  end type


contains

  function GameFeatureCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameFeatureCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameFeatureCanvas)
      jresult => object
    end select
  end function

  recursive function GameFeatureCanvas_jnew_0() result(this)
    class(GameFeatureCanvas), pointer :: this
    allocate(this)
    this%jclass = 'GameFeatureCanvas'
        continue
  end function

  recursive subroutine GameFeatureCanvas_jm_paint_1(this, j_graphics)
    class(GameFeatureCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module GameFeatureCanvas_m

function GameFeatureCanvas_jnew_0_jext() result(this)
  use GameFeatureCanvas_m, only: JObject, GameFeatureCanvas_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GameFeatureCanvas_jnew_0()
end function

