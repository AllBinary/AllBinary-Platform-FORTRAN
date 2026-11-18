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
module AlwaysRepaintBehavior_m
  use JR_m
  use Features_m
  use DisplayInfoSingleton_m
  use OpenGLFeatureFactory_m
  use Thread_m
  use RepaintBehavior_m
  use RepaintRunnable_m
  implicit none

  type, extends(RepaintBehavior) :: AlwaysRepaintBehavior
  contains
    procedure :: jm_repaint_1 => AlwaysRepaintBehavior_jm_repaint_1
    procedure :: jm_onChangeRepaint_1 => AlwaysRepaintBehavior_jm_onChangeRepaint_1
  end type

  class(AlwaysRepaintBehavior), pointer, save :: AlwaysRepaintBehavior_jcell_instanceC => null()
  logical, save :: AlwaysRepaintBehavior_jset_instanceC = .false.

contains

  function AlwaysRepaintBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AlwaysRepaintBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AlwaysRepaintBehavior)
      jresult => object
    end select
  end function

  function AlwaysRepaintBehavior_jstatic_instanceC() result(jresult)
    class(AlwaysRepaintBehavior), pointer :: jresult
    if (.not. AlwaysRepaintBehavior_jset_instanceC) then
      AlwaysRepaintBehavior_jset_instanceC = .true.
      AlwaysRepaintBehavior_jcell_instanceC => AlwaysRepaintBehavior_jnew_0()
    end if
    jresult => AlwaysRepaintBehavior_jcell_instanceC
  end function

  subroutine AlwaysRepaintBehavior_jsetstatic_instanceC(jvalue)
    class(AlwaysRepaintBehavior), target, optional :: jvalue
    AlwaysRepaintBehavior_jset_instanceC = .true.
    if (present(jvalue)) then
      AlwaysRepaintBehavior_jcell_instanceC => jvalue
    else
      AlwaysRepaintBehavior_jcell_instanceC => null()
    end if
  end subroutine

  function AlwaysRepaintBehavior_jnew_0() result(this)
    class(AlwaysRepaintBehavior), pointer :: this
    allocate(this)
    this%jclass = 'AlwaysRepaintBehavior'
    this%f_NAME = ''
    this%f_NAME = 'AlwaysRepaintBehavior'
  end function

  recursive function AlwaysRepaintBehavior_jm_getInstance_0() result(jresult)
    class(AlwaysRepaintBehavior), pointer :: jresult
        jresult => AlwaysRepaintBehavior_jstatic_instanceC()
        return
  end function

  recursive subroutine AlwaysRepaintBehavior_jm_repaint_1(this, j_canvas)
    class(AlwaysRepaintBehavior), target :: this
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

  recursive subroutine AlwaysRepaintBehavior_jm_onChangeRepaint_1(this, j_canvas)
    class(AlwaysRepaintBehavior), target :: this
    class(Canvas), target, optional :: j_canvas
    continue
  end subroutine
end module AlwaysRepaintBehavior_m

function AlwaysRepaintBehavior_jnew_0_jext() result(this)
  use AlwaysRepaintBehavior_m, only: JObject, AlwaysRepaintBehavior_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AlwaysRepaintBehavior_jnew_0()
end function

