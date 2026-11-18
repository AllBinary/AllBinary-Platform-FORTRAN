! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.game.displayable
module RepaintBehavior_m
  use JR_m
  use Features_m
  use DisplayInfoSingleton_m
  use OpenGLFeatureFactory_m
  use LogUtil_m
  use Thread_m
  use RepaintRunnable_m
  implicit none

  type, extends(JObject) :: RepaintBehavior
    class(LogUtil), pointer :: f_logUtil => null()
    character(len=:), allocatable :: f_NAME
  contains
    procedure :: jm_repaint_1 => RepaintBehavior_jm_repaint_1
    procedure :: jm_onChangeRepaint_1 => RepaintBehavior_jm_onChangeRepaint_1
  end type

  class(RepaintBehavior), pointer, save :: RepaintBehavior_jcell_instance => null()
  logical, save :: RepaintBehavior_jset_instance = .false.

contains

  function RepaintBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RepaintBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RepaintBehavior)
      jresult => object
    end select
  end function

  function RepaintBehavior_jstatic_instance() result(jresult)
    class(RepaintBehavior), pointer :: jresult
    if (.not. RepaintBehavior_jset_instance) then
      RepaintBehavior_jset_instance = .true.
      RepaintBehavior_jcell_instance => RepaintBehavior_jnew_0()
    end if
    jresult => RepaintBehavior_jcell_instance
  end function

  subroutine RepaintBehavior_jsetstatic_instance(jvalue)
    class(RepaintBehavior), target, optional :: jvalue
    RepaintBehavior_jset_instance = .true.
    if (present(jvalue)) then
      RepaintBehavior_jcell_instance => jvalue
    else
      RepaintBehavior_jcell_instance => null()
    end if
  end subroutine

  function RepaintBehavior_jnew_0() result(this)
    class(RepaintBehavior), pointer :: this
    allocate(this)
    this%jclass = 'RepaintBehavior'
    this%f_NAME = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_NAME = 'RepaintBehavior'
  end function

  recursive function RepaintBehavior_jm_getInstance_0() result(jresult)
    class(RepaintBehavior), pointer :: jresult
        jresult => RepaintBehavior_jstatic_instance()
        return
  end function

  recursive subroutine RepaintBehavior_jm_repaint_1(this, j_canvas)
    class(RepaintBehavior), target :: this
    class(Canvas), target, optional :: j_canvas
    continue
  end subroutine

  recursive subroutine RepaintBehavior_jm_onChangeRepaint_1(this, j_canvas)
    class(RepaintBehavior), target :: this
    class(Canvas), target, optional :: j_canvas
    class(Features), pointer :: j_features
    class(OpenGLFeatureFactory), pointer :: j_openGLFeatureFactory
    class(Thread), pointer :: j_thread
    class(DisplayInfoSingleton), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_features => Features_jm_getInstance_0()
        j_openGLFeatureFactory => OpenGLFeatureFactory_jm_getInstance_0()
        if (j_features%jm_isFeature_1(j_openGLFeatureFactory%f_OPENGL)) then
            jtemp1 => DisplayInfoSingleton_jm_getInstance_0()
            call jtemp1%jm_process_0()
        else
            j_thread => Thread_jnew_2(RepaintRunnable_jnew_1(j_canvas), this%f_NAME)
            call j_thread%jm_start_0()
        end if
  end subroutine
end module RepaintBehavior_m

