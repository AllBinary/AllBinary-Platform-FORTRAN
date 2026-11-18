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
! package org.allbinary.animation.vector
module LineAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationInterfaceFactoryInterface_m
  use BasicColor_m
  use ScaleProperties_m
  use LineAnimation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: LineAnimationFactory
    class(BasicColor), pointer :: f_basicColor => null()
  contains
    procedure :: jm_getInstance_1 => LineAnimationFactory_jm_getInstance_1
    procedure :: jm_setInitialScale_1 => LineAnimationFactory_jm_setInitialScale_1
  end type


contains

  function LineAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LineAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LineAnimationFactory)
      jresult => object
    end select
  end function

  recursive function LineAnimationFactory_jnew_1(j_basicColor) result(this)
    class(BasicColor), target, optional :: j_basicColor
    class(LineAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'LineAnimationFactory'
    
        this%f_basicColor => j_basicColor
  end function

  recursive function LineAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(LineAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
        jresult => LineAnimation_jnew_1(this%f_basicColor)
        return
  end function

  recursive subroutine LineAnimationFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(LineAnimationFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module LineAnimationFactory_m

