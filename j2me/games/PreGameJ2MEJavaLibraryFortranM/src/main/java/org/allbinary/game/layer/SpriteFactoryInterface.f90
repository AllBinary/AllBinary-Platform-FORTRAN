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
! package org.allbinary.game.layer
module SpriteFactoryInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: SpriteFactoryInterface
  contains
    procedure :: jm_createSprite_3 => SpriteFactoryInterface_jm_createSprite_3
  end type


contains

  function SpriteFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpriteFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpriteFactoryInterface)
      jresult => object
    end select
  end function

  function SpriteFactoryInterface_jnew_0() result(this)
    class(SpriteFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'SpriteFactoryInterface'
  end function

  recursive function SpriteFactoryInterface_jm_createSprite_3(this, j_image, j_frameWidth, j_frameHeight) result(jresult)
    class(SpriteFactoryInterface), target :: this
    class(Image), target, optional :: j_image
    integer(4), value :: j_frameWidth
    integer(4), value :: j_frameHeight
    class(Sprite), pointer :: jresult
    error stop 'AbstractMethodError: SpriteFactoryInterface.createSprite'
  end function
end module SpriteFactoryInterface_m

