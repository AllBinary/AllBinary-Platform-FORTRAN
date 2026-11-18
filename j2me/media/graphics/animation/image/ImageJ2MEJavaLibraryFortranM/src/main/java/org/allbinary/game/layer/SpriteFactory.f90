! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
module SpriteFactory_m
  use JR_m
  use LogUtil_m
  use SpriteFactoryInterface_m
  implicit none

  type, extends(SpriteFactoryInterface) :: SpriteFactory
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_createSprite_3 => SpriteFactory_jm_createSprite_3
  end type

  class(SpriteFactory), pointer, save :: SpriteFactory_jcell_instance => null()
  logical, save :: SpriteFactory_jset_instance = .false.

contains

  function SpriteFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpriteFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpriteFactory)
      jresult => object
    end select
  end function

  function SpriteFactory_jstatic_instance() result(jresult)
    class(SpriteFactory), pointer :: jresult
    if (.not. SpriteFactory_jset_instance) then
      SpriteFactory_jset_instance = .true.
      SpriteFactory_jcell_instance => SpriteFactory_jnew_0()
    end if
    jresult => SpriteFactory_jcell_instance
  end function

  subroutine SpriteFactory_jsetstatic_instance(jvalue)
    class(SpriteFactory), target, optional :: jvalue
    SpriteFactory_jset_instance = .true.
    if (present(jvalue)) then
      SpriteFactory_jcell_instance => jvalue
    else
      SpriteFactory_jcell_instance => null()
    end if
  end subroutine

  function SpriteFactory_jnew_0() result(this)
    class(SpriteFactory), pointer :: this
    allocate(this)
    this%jclass = 'SpriteFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
  end function

  recursive function SpriteFactory_jm_getInstance_0() result(jresult)
    class(SpriteFactory), pointer :: jresult
        jresult => SpriteFactory_jstatic_instance()
        return
  end function

  recursive function SpriteFactory_jm_createSprite_3(this, j_image, j_frameWidth, j_frameHeight) result(jresult)
    class(SpriteFactory), target :: this
    class(Image), target, optional :: j_image
    integer(4), value :: j_frameWidth
    integer(4), value :: j_frameHeight
    class(Sprite), pointer :: jresult
        jresult => Sprite_jnew_3(j_image, j_frameWidth, j_frameHeight)
        return
  end function
end module SpriteFactory_m

