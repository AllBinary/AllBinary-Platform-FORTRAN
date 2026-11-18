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
! package org.allbinary.ai
module ArtificialIntelligenceFactoryInterface_m
  use JR_m
  use ArtificialIntelligence_m
  implicit none

  type, extends(JObject) :: ArtificialIntelligenceFactoryInterface
  contains
    procedure :: jm_getInstance_1 => ArtificialIntelligenceFactoryInterface_jm_getInstance_1
  end type


contains

  function ArtificialIntelligenceFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ArtificialIntelligenceFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ArtificialIntelligenceFactoryInterface)
      jresult => object
    end select
  end function

  function ArtificialIntelligenceFactoryInterface_jnew_0() result(this)
    class(ArtificialIntelligenceFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'ArtificialIntelligenceFactoryInterface'
  end function

  recursive function ArtificialIntelligenceFactoryInterface_jm_getInstance_1(this, j_anyType) result(jresult)
    class(ArtificialIntelligenceFactoryInterface), target :: this
    class(JObject), target, optional :: j_anyType
    class(ArtificialIntelligence), pointer :: jresult
    error stop 'AbstractMethodError: ArtificialIntelligenceFactoryInterface.getInstance'
  end function
end module ArtificialIntelligenceFactoryInterface_m

