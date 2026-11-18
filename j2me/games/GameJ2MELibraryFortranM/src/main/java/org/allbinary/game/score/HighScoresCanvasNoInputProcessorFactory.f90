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
module HighScoresCanvasNoInputProcessorFactory_m
  use JR_m
  use HighScoresCanvas_m
  use HighScoresCanvasInputProcessorFactoryInterface_m
  use HighScoresCanvasInputProcessor_m
  implicit none

  type, extends(HighScoresCanvasInputProcessorFactoryInterface) :: HighScoresCanvasNoInputProcessorFactory
  contains
    procedure :: jm_getInstance_1 => HighScoresCanvasNoInputProcessorFactory_jm_getInstance_1
  end type


contains

  function HighScoresCanvasNoInputProcessorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresCanvasNoInputProcessorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresCanvasNoInputProcessorFactory)
      jresult => object
    end select
  end function

  function HighScoresCanvasNoInputProcessorFactory_jnew_0() result(this)
    class(HighScoresCanvasNoInputProcessorFactory), pointer :: this
    allocate(this)
    this%jclass = 'HighScoresCanvasNoInputProcessorFactory'
  end function

  recursive function HighScoresCanvasNoInputProcessorFactory_jm_getInstance_1(this, j_highScoresCanvas) result(jresult)
    class(HighScoresCanvasNoInputProcessorFactory), target :: this
    class(HighScoresCanvas), target, optional :: j_highScoresCanvas
    class(HighScoresCanvasInputProcessor), pointer :: jresult
        jresult => HighScoresCanvasInputProcessor_jnew_1(j_highScoresCanvas)
        return
  end function
end module HighScoresCanvasNoInputProcessorFactory_m

