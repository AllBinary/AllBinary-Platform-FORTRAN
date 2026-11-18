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
module InputProbability_m
  use JR_m
  use StdUtil_m
  use SmallIntegerSingletonFactory_m
  use TimeDelayHelper_m
  use ABHashtable_m
  use Integer_m
  implicit none

  type, extends(JObject) :: InputProbability
    integer(4), allocatable :: f_likelyhoodIntegerArray(:,:)
    integer(4), allocatable :: f_repeatLikelyhoodIntegerArray(:)
    integer(4) :: f_max = 0
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
  contains
    procedure :: jm_getLikelyhoodIntegerArray_0 => InputProbability_jm_getLikelyhoodIntegerArray_0
    procedure :: jm_getRepeatLikelyhoodIntegerArray_0 => InputProbability_jm_getRepeatLikelyhoodIntegerArray_0
    procedure :: jm_getMax_0 => InputProbability_jm_getMax_0
    procedure :: jm_getTimeDelayHelper_0 => InputProbability_jm_getTimeDelayHelper_0
    procedure :: jm_toHashtable_0 => InputProbability_jm_toHashtable_0
  end type

  integer(4), save :: InputProbability_jcell_INPUT_PROBABILITY
  logical, save :: InputProbability_jset_INPUT_PROBABILITY = .false.

contains

  function InputProbability_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputProbability), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputProbability)
      jresult => object
    end select
  end function

  function InputProbability_jstatic_INPUT_PROBABILITY() result(jresult)
    integer(4) :: jresult
    class(SmallIntegerSingletonFactory), pointer :: jtemp1
    if (.not. InputProbability_jset_INPUT_PROBABILITY) then
      InputProbability_jset_INPUT_PROBABILITY = .true.
      jtemp1 => SmallIntegerSingletonFactory_jm_getInstance_0()
    InputProbability_jcell_INPUT_PROBABILITY = jtemp1%jm_getAt_1(0)
    end if
    jresult = InputProbability_jcell_INPUT_PROBABILITY
  end function

  subroutine InputProbability_jsetstatic_INPUT_PROBABILITY(jvalue)
    integer(4), value :: jvalue
    InputProbability_jset_INPUT_PROBABILITY = .true.
    InputProbability_jcell_INPUT_PROBABILITY = jvalue
  end subroutine

  recursive function InputProbability_jnew_4(j_likelyhoodIntegerArray, j_repeatLikelyhoodIntegerArray, j_max, j_timeDelayHelper) result(this)
    integer(4) :: j_likelyhoodIntegerArray(:,:)
    integer(4) :: j_repeatLikelyhoodIntegerArray(:)
    integer(4), value :: j_max
    class(TimeDelayHelper), target, optional :: j_timeDelayHelper
    class(InputProbability), pointer :: this
    allocate(this)
    this%jclass = 'InputProbability'
    
    
    
    
        this%f_likelyhoodIntegerArray = j_likelyhoodIntegerArray
        this%f_repeatLikelyhoodIntegerArray = j_repeatLikelyhoodIntegerArray
        this%f_max = j_max
        this%f_timeDelayHelper => j_timeDelayHelper
  end function

  recursive function InputProbability_jm_getLikelyhoodIntegerArray_0(this) result(jresult)
    class(InputProbability), target :: this
    integer(4), allocatable :: jresult(:,:)
        jresult = this%f_likelyhoodIntegerArray
        return
  end function

  recursive function InputProbability_jm_getRepeatLikelyhoodIntegerArray_0(this) result(jresult)
    class(InputProbability), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = this%f_repeatLikelyhoodIntegerArray
        return
  end function

  recursive function InputProbability_jm_getMax_0(this) result(jresult)
    class(InputProbability), target :: this
    integer(4) :: jresult
        jresult = this%f_max
        return
  end function

  recursive function InputProbability_jm_getTimeDelayHelper_0(this) result(jresult)
    class(InputProbability), target :: this
    class(TimeDelayHelper), pointer :: jresult
        jresult => this%f_timeDelayHelper
        return
  end function

  recursive function InputProbability_jm_toHashtable_0(this) result(jresult)
    class(InputProbability), target :: this
    class(ABHashtable), pointer :: jresult
    class(ABHashtable), pointer :: j_hashtable
    class(StdUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => StdUtil_jm_getInstance_0()
        j_hashtable => jtemp2%jm_createHashtable_0()
        jdiscardRef => j_hashtable%jm_put_2(InputProbability_jstatic_INPUT_PROBABILITY(), this)
        jresult => j_hashtable
        return
  end function
end module InputProbability_m

