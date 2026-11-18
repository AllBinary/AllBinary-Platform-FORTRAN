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
module HighScoresCanvasChangeLevelInputProcessorFactory_m
  use JR_m
  use HighScoresCanvas_m
  use HighScoresCanvasInputProcessorFactoryInterface_m
  use HighScoresCanvasLevelChangeInputProcessor_m
  use HighScoresCanvasInputProcessor_m
  implicit none

  type, extends(HighScoresCanvasInputProcessorFactoryInterface) :: HighScoresCanvasChangeLevelInputProcessorFactory
  contains
    procedure :: jm_getInstance_1 => HighScoresCanvasChangeLevelInputProcessorFactory_jm_getInstance_1
  end type


contains

  function HighScoresCanvasChangeLevelInputProcessorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresCanvasChangeLevelInputProcessorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresCanvasChangeLevelInputProcessorFactory)
      jresult => object
    end select
  end function

  function HighScoresCanvasChangeLevelInputProcessorFactory_jnew_0() result(this)
    class(HighScoresCanvasChangeLevelInputProcessorFactory), pointer :: this
    allocate(this)
    this%jclass = 'HighScoresCanvasChangeLevelInputProcessorFactory'
  end function

  recursive function HighScoresCanvasChangeLevelInputProcessorFactory_jm_getInstance_1(this, j_highScoresCanvas) result(jresult)
    class(HighScoresCanvasChangeLevelInputProcessorFactory), target :: this
    class(HighScoresCanvas), target, optional :: j_highScoresCanvas
    class(HighScoresCanvasInputProcessor), pointer :: jresult
        jresult => HighScoresCanvasLevelChangeInputProcessor_jnew_1(j_highScoresCanvas)
        return
  end function
end module HighScoresCanvasChangeLevelInputProcessorFactory_m

