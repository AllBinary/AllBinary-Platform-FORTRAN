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
module SpecialGameInputProcessor_m
  use JR_m
  use GameInputProcessor_m
  use CollidableDestroyableDamageableLayer_m
  implicit none

  type, extends(GameInputProcessor) :: SpecialGameInputProcessor
    class(CollidableDestroyableDamageableLayer), pointer :: f_collidableDestroyableDamageableLayer => null()
  end type


contains

  function SpecialGameInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpecialGameInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpecialGameInputProcessor)
      jresult => object
    end select
  end function

  recursive function SpecialGameInputProcessor_jnew_1(j_collidableDestroyableDamageableLayer) result(this)
    class(CollidableDestroyableDamageableLayer), target, optional :: j_collidableDestroyableDamageableLayer
    class(SpecialGameInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'SpecialGameInputProcessor'
    
        this%f_collidableDestroyableDamageableLayer => j_collidableDestroyableDamageableLayer
  end function
end module SpecialGameInputProcessor_m

