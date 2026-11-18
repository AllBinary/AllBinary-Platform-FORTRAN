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
module ArtificialIntelligenceCompositeInterface_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  implicit none

  type, extends(JObject) :: ArtificialIntelligenceCompositeInterface
  contains
    procedure :: jm_getArtificialIntelligenceInterface_0 => ArtificialIntelligenceCompositeInterface_jm_getArtificialIntelligenceInterface_0
  end type


contains

  function ArtificialIntelligenceCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ArtificialIntelligenceCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ArtificialIntelligenceCompositeInterface)
      jresult => object
    end select
  end function

  function ArtificialIntelligenceCompositeInterface_jnew_0() result(this)
    class(ArtificialIntelligenceCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'ArtificialIntelligenceCompositeInterface'
  end function

  recursive function ArtificialIntelligenceCompositeInterface_jm_getArtificialIntelligenceInterface_0(this) result(jresult)
    class(ArtificialIntelligenceCompositeInterface), target :: this
    class(ArtificialIntelligenceInterface), pointer :: jresult
    error stop 'AbstractMethodError: ArtificialIntelligenceCompositeInterface.getArtificialIntelligenceInterface'
  end function
end module ArtificialIntelligenceCompositeInterface_m

