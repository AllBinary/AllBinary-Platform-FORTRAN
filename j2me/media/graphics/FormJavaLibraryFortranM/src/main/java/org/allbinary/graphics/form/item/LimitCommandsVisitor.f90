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
! package org.allbinary.graphics.form.item
module LimitCommandsVisitor_m
  use JR_m
  use GameCommandsFactory_m
  use DisplayInfoSingleton_m
  use ScreenInfo_m
  use BooleanFactory_m
  use Visitor_m
  implicit none

  type, extends(Visitor) :: LimitCommandsVisitor
    logical :: f_isNotSmallDisplay = .false.
  contains
    procedure :: jm_visit_1 => LimitCommandsVisitor_jm_visit_1
  end type


contains

  function LimitCommandsVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LimitCommandsVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LimitCommandsVisitor)
      jresult => object
    end select
  end function

  recursive function LimitCommandsVisitor_jnew_0() result(this)
    class(LimitCommandsVisitor), pointer :: this
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    class(ScreenInfo), pointer :: jtemp1
    class(ScreenInfo), pointer :: jtemp2
    allocate(this)
    this%jclass = 'LimitCommandsVisitor'
    
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        jtemp1 => ScreenInfo_jm_getInstance_0()
        jtemp2 => ScreenInfo_jm_getInstance_0()
        this%f_isNotSmallDisplay = (((j_displayInfo%jm_isPortrait_0() .and. (j_displayInfo%jm_getLastHeight_0() > jtemp1%f_SMALL_WIDTH))) .or. (((.not. j_displayInfo%jm_isPortrait_0()) .and. (j_displayInfo%jm_getLastHeight_0() > jtemp2%f_SMALL_HEIGHT))))
  end function

  recursive function LimitCommandsVisitor_jm_visit_1(this, j_anyType) result(jresult)
    class(LimitCommandsVisitor), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jresult
    class(Command), pointer :: j_command
    class(BooleanFactory), pointer :: j_booleanFactory
    class(GameCommandsFactory), pointer :: jtemp3
    class(GameCommandsFactory), pointer :: jtemp4
        j_command => Command_jcast(j_anyType)
        j_booleanFactory => BooleanFactory_jm_getInstance_0()
        jtemp3 => GameCommandsFactory_jm_getInstance_0()
        jtemp4 => GameCommandsFactory_jm_getInstance_0()
        if ((((this%f_isNotSmallDisplay .or. (j_command%jm_getPriority_0() == 1)) .or. JR_same(j_command, jtemp3%f_EXIT_COMMAND)) .or. JR_same(j_command, jtemp4%f_EXIT_WITHOUT_PROGRESS_COMMAND))) then
            jresult => j_booleanFactory%f_TRUE
            return
        else
            jresult => j_booleanFactory%f_FALSE
            return
        end if
  end function
end module LimitCommandsVisitor_m

function LimitCommandsVisitor_jnew_0_jext() result(this)
  use LimitCommandsVisitor_m, only: JObject, LimitCommandsVisitor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => LimitCommandsVisitor_jnew_0()
end function

