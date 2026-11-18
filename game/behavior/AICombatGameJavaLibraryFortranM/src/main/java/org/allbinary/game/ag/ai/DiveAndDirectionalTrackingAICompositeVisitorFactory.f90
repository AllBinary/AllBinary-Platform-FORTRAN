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
module DiveAndDirectionalTrackingAICompositeVisitorFactory_m
  use JR_m
  use Visitor_m
  use DiveAndDirectionalTrackingAI_m
  implicit none

  type, extends(JObject) :: DiveAndDirectionalTrackingAICompositeVisitorFactory
  contains
    procedure :: jm_getInstance_1 => DiveAndDirectionalTrackingAICompositeVisitorFactory_jm_getInstance_1
  end type


contains

  function DiveAndDirectionalTrackingAICompositeVisitorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DiveAndDirectionalTrackingAICompositeVisitorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DiveAndDirectionalTrackingAICompositeVisitorFactory)
      jresult => object
    end select
  end function

  function DiveAndDirectionalTrackingAICompositeVisitorFactory_jnew_0() result(this)
    class(DiveAndDirectionalTrackingAICompositeVisitorFactory), pointer :: this
    allocate(this)
    this%jclass = 'DiveAndDirectionalTrackingAICompositeVisitorFactory'
  end function

  recursive function DiveAndDirectionalTrackingAICompositeVisitorFactory_jm_getInstance_1(this, j_diveBombAI) result(jresult)
    class(DiveAndDirectionalTrackingAICompositeVisitorFactory), target :: this
    class(DiveAndDirectionalTrackingAI), target, optional :: j_diveBombAI
    class(Visitor), pointer :: jresult
        jresult => Visitor_jm_getInstance_0()
        return
  end function
end module DiveAndDirectionalTrackingAICompositeVisitorFactory_m

