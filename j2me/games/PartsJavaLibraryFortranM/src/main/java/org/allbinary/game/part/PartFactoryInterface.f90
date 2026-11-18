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
! package org.allbinary.game.part
module PartFactoryInterface_m
  use JR_m
  use RelativeRelationship_m
  use AllBinaryLayer_m
  use PartInterface_m
  implicit none

  type, extends(JObject) :: PartFactoryInterface
  contains
    procedure :: jm_getInstance_2 => PartFactoryInterface_jm_getInstance_2
  end type


contains

  function PartFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PartFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PartFactoryInterface)
      jresult => object
    end select
  end function

  function PartFactoryInterface_jnew_0() result(this)
    class(PartFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'PartFactoryInterface'
  end function

  recursive function PartFactoryInterface_jm_getInstance_2(this, j_sourceLayerInterface, j_relativeRelationship) result(jresult)
    class(PartFactoryInterface), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    class(RelativeRelationship), target, optional :: j_relativeRelationship
    class(PartInterface), pointer :: jresult
    error stop 'AbstractMethodError: PartFactoryInterface.getInstance'
  end function
end module PartFactoryInterface_m

