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
! package org.allbinary.animation
module BaseAnimationInterfaceFactoryInterfaceComposite_m
  use JR_m
  use ScaleProperties_m
  use AnimationInterfaceFactoryInterface_m
  use BasicAnimationInterfaceFactoryInterface_m
  use NullAnimationFactory_m
  use Animation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: BaseAnimationInterfaceFactoryInterfaceComposite
    type(JRef), allocatable :: f_basicAnimationInterfaceFactoryInterfaceArray(:)
  contains
    procedure :: jm_getInstance_1 => BaseAnimationInterfaceFactoryInterfaceComposite_jm_getInstance_1
    procedure :: jm_getBasicAnimationInterfaceFactoryInterfaceArray_0 => BaseAnimationInterfaceFactoryInterfaceComposite_jm_getBasicAnimationInterfaceFactoryInterfaceArray_0
    procedure :: jm_setBasicAnimationInterfaceFactoryInterfaceArray_1 => BaseAnimationInterfaceFactoryInterfaceComposite_jm_setBasicAnimationInterfaceFactoryInterfaceArray_1
    procedure :: jm_setInitialScale_1 => BaseAnimationInterfaceFactoryInterfaceComposite_jm_setInitialScale_1
  end type


contains

  function BaseAnimationInterfaceFactoryInterfaceComposite_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseAnimationInterfaceFactoryInterfaceComposite), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseAnimationInterfaceFactoryInterfaceComposite)
      jresult => object
    end select
  end function

  recursive function BaseAnimationInterfaceFactoryInterfaceComposite_jnew_1(j_basicAnimationInterfaceFactoryInterfaceArray) result(this)
    type(JRef) :: j_basicAnimationInterfaceFactoryInterfaceArray(:)
    class(BaseAnimationInterfaceFactoryInterfaceComposite), pointer :: this
    allocate(this)
    this%jclass = 'BaseAnimationInterfaceFactoryInterfaceComposite'
    
        this%f_basicAnimationInterfaceFactoryInterfaceArray = j_basicAnimationInterfaceFactoryInterfaceArray
  end function

  recursive function BaseAnimationInterfaceFactoryInterfaceComposite_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(BaseAnimationInterfaceFactoryInterfaceComposite), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(NullAnimationFactory), pointer :: jtemp1
        jtemp1 => NullAnimationFactory_jm_getFactoryInstance_0()
        jresult => jtemp1%jm_getInstance_1(0)
        return
  end function

  recursive function BaseAnimationInterfaceFactoryInterfaceComposite_jm_getBasicAnimationInterfaceFactoryInterfaceArray_0(this) result(jresult)
    class(BaseAnimationInterfaceFactoryInterfaceComposite), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_basicAnimationInterfaceFactoryInterfaceArray
        return
  end function

  recursive subroutine BaseAnimationInterfaceFactoryInterfaceComposite_jm_setBasicAnimationInterfaceFactoryInterfaceArray_1(this, j_basicAnimationInterfaceFactoryInterfaceArray)
    class(BaseAnimationInterfaceFactoryInterfaceComposite), target :: this
    type(JRef) :: j_basicAnimationInterfaceFactoryInterfaceArray(:)
        this%f_basicAnimationInterfaceFactoryInterfaceArray = j_basicAnimationInterfaceFactoryInterfaceArray
  end subroutine

  recursive subroutine BaseAnimationInterfaceFactoryInterfaceComposite_jm_setInitialScale_1(this, j_scaleProperties)
    class(BaseAnimationInterfaceFactoryInterfaceComposite), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module BaseAnimationInterfaceFactoryInterfaceComposite_m

