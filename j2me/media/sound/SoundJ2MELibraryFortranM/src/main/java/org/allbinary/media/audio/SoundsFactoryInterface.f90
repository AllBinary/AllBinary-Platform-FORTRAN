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
module SoundsFactoryInterface_m
  use JR_m
  use Sound_m
  implicit none

  type, extends(JObject) :: SoundsFactoryInterface
  contains
    procedure :: jm_init_0 => SoundsFactoryInterface_jm_init_0
    procedure :: jm_getSoundInterfaceArray_0 => SoundsFactoryInterface_jm_getSoundInterfaceArray_0
    procedure :: jm_setInitialized_1 => SoundsFactoryInterface_jm_setInitialized_1
    procedure :: jm_isInitialized_0 => SoundsFactoryInterface_jm_isInitialized_0
  end type


contains

  function SoundsFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SoundsFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SoundsFactoryInterface)
      jresult => object
    end select
  end function

  function SoundsFactoryInterface_jnew_0() result(this)
    class(SoundsFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'SoundsFactoryInterface'
  end function

  recursive subroutine SoundsFactoryInterface_jm_init_0(this)
    class(SoundsFactoryInterface), target :: this
    error stop 'AbstractMethodError: SoundsFactoryInterface.init'
  end subroutine

  recursive function SoundsFactoryInterface_jm_getSoundInterfaceArray_0(this) result(jresult)
    class(SoundsFactoryInterface), target :: this
    type(JRef), allocatable :: jresult(:)
    error stop 'AbstractMethodError: SoundsFactoryInterface.getSoundInterfaceArray'
  end function

  recursive subroutine SoundsFactoryInterface_jm_setInitialized_1(this, j_initialized)
    class(SoundsFactoryInterface), target :: this
    logical, value :: j_initialized
    error stop 'AbstractMethodError: SoundsFactoryInterface.setInitialized'
  end subroutine

  recursive function SoundsFactoryInterface_jm_isInitialized_0(this) result(jresult)
    class(SoundsFactoryInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: SoundsFactoryInterface.isInitialized'
  end function
end module SoundsFactoryInterface_m

