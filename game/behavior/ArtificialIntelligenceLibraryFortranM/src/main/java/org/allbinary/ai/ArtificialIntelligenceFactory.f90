! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
module ArtificialIntelligenceFactory_m
  use JR_m
  use ArtificialIntelligenceFactoryInterface_m
  use ArtificialIntelligence_m
  implicit none

  type, extends(ArtificialIntelligenceFactoryInterface) :: ArtificialIntelligenceFactory
  contains
    procedure :: jm_getInstance_1 => ArtificialIntelligenceFactory_jm_getInstance_1
  end type


contains

  function ArtificialIntelligenceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ArtificialIntelligenceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ArtificialIntelligenceFactory)
      jresult => object
    end select
  end function

  function ArtificialIntelligenceFactory_jnew_0() result(this)
    class(ArtificialIntelligenceFactory), pointer :: this
    allocate(this)
    this%jclass = 'ArtificialIntelligenceFactory'
  end function

  recursive function ArtificialIntelligenceFactory_jm_getInstance_1(this, j_anyType) result(jresult)
    class(ArtificialIntelligenceFactory), target :: this
    class(JObject), target, optional :: j_anyType
    class(ArtificialIntelligence), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function
end module ArtificialIntelligenceFactory_m

