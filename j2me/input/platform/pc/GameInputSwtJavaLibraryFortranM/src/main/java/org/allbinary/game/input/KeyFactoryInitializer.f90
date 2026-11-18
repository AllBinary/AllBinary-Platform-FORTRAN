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
! package org.allbinary.game.input
module KeyFactoryInitializer_m
  use JR_m
  use Init_m
  use LogUtil_m
  use SmallIntegerSingletonFactory_m
  implicit none

  type, extends(Init) :: KeyFactoryInitializer
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_init_0 => KeyFactoryInitializer_jm_init_0
  end type


contains

  function KeyFactoryInitializer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(KeyFactoryInitializer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (KeyFactoryInitializer)
      jresult => object
    end select
  end function

  function KeyFactoryInitializer_jnew_0() result(this)
    class(KeyFactoryInitializer), pointer :: this
    allocate(this)
    this%jclass = 'KeyFactoryInitializer'
    this%f_logUtil => LogUtil_jm_getInstance_0()
  end function

  recursive subroutine KeyFactoryInitializer_jm_init_0(this)
    class(KeyFactoryInitializer), target :: this
    class(SmallIntegerSingletonFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_INIT)
        jtemp1 => SmallIntegerSingletonFactory_jm_getInstance_0()
        call jtemp1%jm_initWithRange_2(int(z'2D0', 4), 6)
  end subroutine
end module KeyFactoryInitializer_m

function KeyFactoryInitializer_jnew_0_jext() result(this)
  use KeyFactoryInitializer_m, only: JObject, KeyFactoryInitializer_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => KeyFactoryInitializer_jnew_0()
end function

