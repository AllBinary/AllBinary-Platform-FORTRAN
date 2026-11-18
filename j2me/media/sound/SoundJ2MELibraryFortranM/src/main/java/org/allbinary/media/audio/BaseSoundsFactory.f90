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
! package org.allbinary.media.audio
module BaseSoundsFactory_m
  use JR_m
  use SoundsFactoryInterface_m
  use Sound_m
  implicit none

  type, extends(SoundsFactoryInterface) :: BaseSoundsFactory
    logical :: f_initialized = .false.
  contains
    procedure :: jm_init_0 => BaseSoundsFactory_jm_init_0
    procedure :: jm_getSoundInterfaceArray_0 => BaseSoundsFactory_jm_getSoundInterfaceArray_0
    procedure :: jm_setInitialized_1 => BaseSoundsFactory_jm_setInitialized_1
    procedure :: jm_isInitialized_0 => BaseSoundsFactory_jm_isInitialized_0
  end type


contains

  function BaseSoundsFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseSoundsFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseSoundsFactory)
      jresult => object
    end select
  end function

  function BaseSoundsFactory_jnew_0() result(this)
    class(BaseSoundsFactory), pointer :: this
    allocate(this)
    this%jclass = 'BaseSoundsFactory'
    
  end function

  recursive subroutine BaseSoundsFactory_jm_init_0(this)
    class(BaseSoundsFactory), target :: this
    continue
  end subroutine

  recursive function BaseSoundsFactory_jm_getSoundInterfaceArray_0(this) result(jresult)
    class(BaseSoundsFactory), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = JR_newRefArray(0)
        return
  end function

  recursive subroutine BaseSoundsFactory_jm_setInitialized_1(this, j_initialized)
    class(BaseSoundsFactory), target :: this
    logical, value :: j_initialized
        this%f_initialized = j_initialized
  end subroutine

  recursive function BaseSoundsFactory_jm_isInitialized_0(this) result(jresult)
    class(BaseSoundsFactory), target :: this
    logical :: jresult
        jresult = this%f_initialized
        return
  end function
end module BaseSoundsFactory_m

