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
module HighScoresCanvasInputProcessorFactoryInterface_m
  use JR_m
  use HighScoresCanvas_m
  use HighScoresCanvasInputProcessor_m
  implicit none

  type, extends(JObject) :: HighScoresCanvasInputProcessorFactoryInterface
  contains
    procedure :: jm_getInstance_1 => HighScoresCanvasInputProcessorFactoryInterface_jm_getInstance_1
  end type


contains

  function HighScoresCanvasInputProcessorFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresCanvasInputProcessorFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresCanvasInputProcessorFactoryInterface)
      jresult => object
    end select
  end function

  function HighScoresCanvasInputProcessorFactoryInterface_jnew_0() result(this)
    class(HighScoresCanvasInputProcessorFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'HighScoresCanvasInputProcessorFactoryInterface'
  end function

  recursive function HighScoresCanvasInputProcessorFactoryInterface_jm_getInstance_1(this, j_highScoresCanvas) result(jresult)
    class(HighScoresCanvasInputProcessorFactoryInterface), target :: this
    class(HighScoresCanvas), target, optional :: j_highScoresCanvas
    class(HighScoresCanvasInputProcessor), pointer :: jresult
    error stop 'AbstractMethodError: HighScoresCanvasInputProcessorFactoryInterface.getInstance'
  end function
end module HighScoresCanvasInputProcessorFactoryInterface_m

