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
module NumberInSameGroupSequence_m
  use JR_m
  use SmallIntegerSingletonFactory_m
  use Integer_m
  implicit none

  type, extends(JObject) :: NumberInSameGroupSequence
    integer(4) :: f_NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO = 0
    integer(4) :: f_NUMBER_ON_SAME_TEAM_SEQUENCE_ONE = 0
    integer(4) :: f_NUMBER_ON_SAME_TEAM_SEQUENCE_TWO = 0
    integer(4) :: f_NUMBER_ON_SAME_TEAM_SEQUENCE_THREE = 0
    integer(4) :: f_NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR = 0
    integer(4) :: f_NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE = 0
    integer(4) :: f_NUMBER_ON_SAME_TEAM_SEQUENCE_SIX = 0
    integer(4) :: f_NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN = 0
    integer(4) :: f_NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT = 0
    integer(4) :: f_NUMBER_ON_SAME_TEAM_SEQUENCE_NINE = 0
    integer(4), allocatable :: f_NUMBER_ON_SAME_TEAM_SEQUENCE(:)
  end type


contains

  function NumberInSameGroupSequence_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NumberInSameGroupSequence), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NumberInSameGroupSequence)
      jresult => object
    end select
  end function

  recursive function NumberInSameGroupSequence_jnew_0() result(this)
    class(NumberInSameGroupSequence), pointer :: this
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    allocate(this)
    this%jclass = 'NumberInSameGroupSequence'
    
    
    
    
    
    
    
    
    
    
    
        j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
        this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO = j_smallIntegerSingletonFactory%jm_getAt_1(100)
        this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_ONE = j_smallIntegerSingletonFactory%jm_getAt_1(101)
        this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_TWO = j_smallIntegerSingletonFactory%jm_getAt_1(102)
        this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_THREE = j_smallIntegerSingletonFactory%jm_getAt_1(103)
        this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR = j_smallIntegerSingletonFactory%jm_getAt_1(104)
        this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE = j_smallIntegerSingletonFactory%jm_getAt_1(105)
        this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_SIX = j_smallIntegerSingletonFactory%jm_getAt_1(106)
        this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN = j_smallIntegerSingletonFactory%jm_getAt_1(107)
        this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT = j_smallIntegerSingletonFactory%jm_getAt_1(108)
        this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_NINE = j_smallIntegerSingletonFactory%jm_getAt_1(109)
        this%f_NUMBER_ON_SAME_TEAM_SEQUENCE = [integer(4) :: this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, this%f_NUMBER_ON_SAME_TEAM_SEQUENCE_NINE]
  end function

  recursive function NumberInSameGroupSequence_jm_getInstance_0() result(jresult)
    class(NumberInSameGroupSequence), pointer :: jresult
        jresult => NumberInSameGroupSequence_jnew_0()
        return
  end function
end module NumberInSameGroupSequence_m

