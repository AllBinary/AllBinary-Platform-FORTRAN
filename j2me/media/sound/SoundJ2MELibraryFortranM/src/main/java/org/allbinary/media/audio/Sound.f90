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
module Sound_m
  use JR_m
  use PreLogUtil_m
  use CommonStrings_m
  use SoundInterface_m
  use NoPlayer_m
  implicit none

  type, extends(SoundInterface) :: Sound
    character(len=:), allocatable :: f_resource
    class(Player), pointer :: f_player => null()
  contains
    procedure :: jm_getResource_0 => Sound_jm_getResource_0
    procedure :: jm_getPlayerP_0 => Sound_jm_getPlayerP_0
    procedure :: jm_setPlayerP_1 => Sound_jm_setPlayerP_1
    procedure :: jm_init_0 => Sound_jm_init_0
    procedure :: jm_getDuration_0 => Sound_jm_getDuration_0
    procedure :: jm_run_0 => Sound_jm_run_0
  end type


contains

  function Sound_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Sound), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Sound)
      jresult => object
    end select
  end function

  recursive function Sound_jnew_1(j_resource) result(this)
    character(len=*), intent(in) :: j_resource
    class(Sound), pointer :: this
    allocate(this)
    this%jclass = 'Sound'
    this%f_resource = ''
    
    this%f_player => NoPlayer_jstatic_NO_PLAYER()
        this%f_resource = j_resource
  end function

  recursive function Sound_jm_getResource_0(this) result(jresult)
    class(Sound), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_resource
        return
  end function

  recursive function Sound_jm_getPlayerP_0(this) result(jresult)
    class(Sound), target :: this
    class(Player), pointer :: jresult
        jresult => this%f_player
        return
  end function

  recursive subroutine Sound_jm_setPlayerP_1(this, j_player)
    class(Sound), target :: this
    class(Player), target, optional :: j_player
        this%f_player => j_player
  end subroutine

  recursive subroutine Sound_jm_init_0(this)
    class(Sound), target :: this
    continue
  end subroutine

  recursive function Sound_jm_getDuration_0(this) result(jresult)
    class(Sound), target :: this
    integer(4) :: jresult
        jresult = (-1)
        return
  end function

  recursive subroutine Sound_jm_run_0(this)
    class(Sound), target :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_player%jm_start_0()
  end subroutine
end module Sound_m

