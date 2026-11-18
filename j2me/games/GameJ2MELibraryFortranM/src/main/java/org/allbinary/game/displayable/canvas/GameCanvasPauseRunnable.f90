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
module GameCanvasPauseRunnable_m
  use JR_m
  use Features_m
  use OpenGLFeatureFactory_m
  use LogUtil_m
  use CommonStrings_m
  use GameRunnable_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(GameRunnable) :: GameCanvasPauseRunnable
    class(LogUtil), pointer :: f_logUtil => null()
    class(AllBinaryGameCanvas), pointer :: f_allBinaryGameCanvas => null()
  contains
    procedure :: jm_run_0 => GameCanvasPauseRunnable_jm_run_0
    procedure :: jm_processLoopSleep_0 => GameCanvasPauseRunnable_jm_processLoopSleep_0
  end type


contains

  function GameCanvasPauseRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameCanvasPauseRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameCanvasPauseRunnable)
      jresult => object
    end select
  end function

  recursive function GameCanvasPauseRunnable_jnew_1(j_allBinaryGameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(GameCanvasPauseRunnable), pointer :: this
    allocate(this)
    this%jclass = 'GameCanvasPauseRunnable'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
        this%f_allBinaryGameCanvas => j_allBinaryGameCanvas
  end function

  recursive subroutine GameCanvasPauseRunnable_jm_run_0(this)
    class(GameCanvasPauseRunnable), target :: this
    continue
  end subroutine

  recursive subroutine GameCanvasPauseRunnable_jm_processLoopSleep_0(this)
    class(GameCanvasPauseRunnable), target :: this
    class(Features), pointer :: j_features
    logical :: j_isOpenGL
    class(CommonStrings), pointer :: j_commonStrings
    class(OpenGLFeatureFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_features => Features_jm_getInstance_0()
            jtemp1 => OpenGLFeatureFactory_jm_getInstance_0()
            j_isOpenGL = j_features%jm_isDefault_1(jtemp1%f_OPENGL)
            if (j_isOpenGL) then
                call this%f_allBinaryGameCanvas%jm_processSleep_0()
            end if
  end subroutine
end module GameCanvasPauseRunnable_m

