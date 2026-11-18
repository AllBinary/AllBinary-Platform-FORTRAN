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
module SoundInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: SoundInterface
  contains
    procedure :: jm_getResource_0 => SoundInterface_jm_getResource_0
    procedure :: jm_getPlayerP_0 => SoundInterface_jm_getPlayerP_0
    procedure :: jm_init_0 => SoundInterface_jm_init_0
  end type


contains

  function SoundInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SoundInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SoundInterface)
      jresult => object
    end select
  end function

  function SoundInterface_jnew_0() result(this)
    class(SoundInterface), pointer :: this
    allocate(this)
    this%jclass = 'SoundInterface'
  end function

  recursive function SoundInterface_jm_getResource_0(this) result(jresult)
    class(SoundInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: SoundInterface.getResource'
  end function

  recursive function SoundInterface_jm_getPlayerP_0(this) result(jresult)
    class(SoundInterface), target :: this
    class(Player), pointer :: jresult
    error stop 'AbstractMethodError: SoundInterface.getPlayerP'
  end function

  recursive subroutine SoundInterface_jm_init_0(this)
    class(SoundInterface), target :: this
    error stop 'AbstractMethodError: SoundInterface.init'
  end subroutine
end module SoundInterface_m

