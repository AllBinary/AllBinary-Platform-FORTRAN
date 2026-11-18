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
! package org.allbinary.game.layer.special
module SpecialGameInputInterfaceProcessor_m
  use JR_m
  use GameInputProcessor_m
  use SpecialGameInputInterface_m
  implicit none

  type, extends(GameInputProcessor) :: SpecialGameInputInterfaceProcessor
    class(SpecialGameInputInterface), pointer :: f_specialGameInputInterface => null()
  end type


contains

  function SpecialGameInputInterfaceProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpecialGameInputInterfaceProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpecialGameInputInterfaceProcessor)
      jresult => object
    end select
  end function

  recursive function SpecialGameInputInterfaceProcessor_jnew_1(j_collidableDestroyableDamageableLayer) result(this)
    class(SpecialGameInputInterface), target, optional :: j_collidableDestroyableDamageableLayer
    class(SpecialGameInputInterfaceProcessor), pointer :: this
    allocate(this)
    this%jclass = 'SpecialGameInputInterfaceProcessor'
    
        this%f_specialGameInputInterface => j_collidableDestroyableDamageableLayer
  end function
end module SpecialGameInputInterfaceProcessor_m

