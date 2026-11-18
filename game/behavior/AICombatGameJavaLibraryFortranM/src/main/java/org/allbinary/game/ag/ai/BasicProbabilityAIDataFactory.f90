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
! package org.allbinary.game.ag.ai
module BasicProbabilityAIDataFactory_m
  use JR_m
  use SmallIntegerSingletonFactory_m
  use NoTimeDelayHelper_m
  use ABHashtable_m
  use Integer_m
  use InputProbability_m
  implicit none

  type, extends(JObject) :: BasicProbabilityAIDataFactory
  contains
    procedure :: jm_getInstance_0 => BasicProbabilityAIDataFactory_jm_getInstance_0
  end type


contains

  function BasicProbabilityAIDataFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicProbabilityAIDataFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicProbabilityAIDataFactory)
      jresult => object
    end select
  end function

  function BasicProbabilityAIDataFactory_jnew_0() result(this)
    class(BasicProbabilityAIDataFactory), pointer :: this
    allocate(this)
    this%jclass = 'BasicProbabilityAIDataFactory'
  end function

  recursive function BasicProbabilityAIDataFactory_jm_getInstance_0(this) result(jresult)
    class(BasicProbabilityAIDataFactory), target :: this
    class(ABHashtable), pointer :: jresult
    integer(4), allocatable :: j_likelyhoodIntegerArray(:,:)
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    integer(4), allocatable :: j_repeatLikelyhoodIntegerArray(:)
    class(InputProbability), pointer :: j_inputProbability
        j_likelyhoodIntegerArray = JR_newIntArray((Canvas_jstatic_KEY_NUM9() + 1), 2)
        j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
        j_likelyhoodIntegerArray((Canvas_jstatic_UP()) + 1, (0) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(0)
        j_likelyhoodIntegerArray((Canvas_jstatic_UP()) + 1, (1) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(10)
        j_likelyhoodIntegerArray((Canvas_jstatic_DOWN()) + 1, (0) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(10)
        j_likelyhoodIntegerArray((Canvas_jstatic_DOWN()) + 1, (1) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(14)
        j_likelyhoodIntegerArray((Canvas_jstatic_LEFT()) + 1, (0) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(14)
        j_likelyhoodIntegerArray((Canvas_jstatic_LEFT()) + 1, (1) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(18)
        j_likelyhoodIntegerArray((Canvas_jstatic_RIGHT()) + 1, (0) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(18)
        j_likelyhoodIntegerArray((Canvas_jstatic_RIGHT()) + 1, (1) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(22)
        j_likelyhoodIntegerArray((Canvas_jstatic_KEY_NUM7()) + 1, (0) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(22)
        j_likelyhoodIntegerArray((Canvas_jstatic_KEY_NUM7()) + 1, (1) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(26)
        j_likelyhoodIntegerArray((Canvas_jstatic_KEY_NUM9()) + 1, (0) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(26)
        j_likelyhoodIntegerArray((Canvas_jstatic_KEY_NUM9()) + 1, (1) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(30)
        j_likelyhoodIntegerArray((Canvas_jstatic_KEY_NUM1()) + 1, (0) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(30)
        j_likelyhoodIntegerArray((Canvas_jstatic_KEY_NUM1()) + 1, (1) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(40)
        j_repeatLikelyhoodIntegerArray = JR_newIntArray((Canvas_jstatic_KEY_NUM9() + 1))
        j_repeatLikelyhoodIntegerArray((Canvas_jstatic_UP()) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(0)
        j_repeatLikelyhoodIntegerArray((Canvas_jstatic_DOWN()) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(0)
        j_repeatLikelyhoodIntegerArray((Canvas_jstatic_LEFT()) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(0)
        j_repeatLikelyhoodIntegerArray((Canvas_jstatic_RIGHT()) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(0)
        j_repeatLikelyhoodIntegerArray((Canvas_jstatic_KEY_NUM7()) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(0)
        j_repeatLikelyhoodIntegerArray((Canvas_jstatic_KEY_NUM9()) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(0)
        j_repeatLikelyhoodIntegerArray((Canvas_jstatic_KEY_NUM1()) + 1) = j_smallIntegerSingletonFactory%jm_getAt_1(10)
        j_inputProbability => InputProbability_jnew_4(j_likelyhoodIntegerArray, j_repeatLikelyhoodIntegerArray, 42, NoTimeDelayHelper_jstatic_SINGLETON())
        jresult => j_inputProbability%jm_toHashtable_0()
        return
  end function
end module BasicProbabilityAIDataFactory_m

