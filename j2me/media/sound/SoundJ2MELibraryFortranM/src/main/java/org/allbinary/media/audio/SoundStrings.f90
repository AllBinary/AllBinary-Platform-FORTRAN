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
! package org.allbinary.media.audio
module SoundStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: SoundStrings
    character(len=:), allocatable :: f_STOP_ALL
    character(len=:), allocatable :: f_CLOSE_ALL
    character(len=:), allocatable :: f_SOUND
    character(len=:), allocatable :: f_INIT_SOUND
    character(len=:), allocatable :: f_STOPPING_SOUND
    character(len=:), allocatable :: f_CLOSING_SOUND
  end type

  class(SoundStrings), pointer, save :: SoundStrings_jcell_instance => null()
  logical, save :: SoundStrings_jset_instance = .false.

contains

  function SoundStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SoundStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SoundStrings)
      jresult => object
    end select
  end function

  function SoundStrings_jstatic_instance() result(jresult)
    class(SoundStrings), pointer :: jresult
    if (.not. SoundStrings_jset_instance) then
      SoundStrings_jset_instance = .true.
      SoundStrings_jcell_instance => SoundStrings_jnew_0()
    end if
    jresult => SoundStrings_jcell_instance
  end function

  subroutine SoundStrings_jsetstatic_instance(jvalue)
    class(SoundStrings), target, optional :: jvalue
    SoundStrings_jset_instance = .true.
    if (present(jvalue)) then
      SoundStrings_jcell_instance => jvalue
    else
      SoundStrings_jcell_instance => null()
    end if
  end subroutine

  function SoundStrings_jnew_0() result(this)
    class(SoundStrings), pointer :: this
    allocate(this)
    this%jclass = 'SoundStrings'
    this%f_STOP_ALL = ''
    this%f_CLOSE_ALL = ''
    this%f_SOUND = ''
    this%f_INIT_SOUND = ''
    this%f_STOPPING_SOUND = ''
    this%f_CLOSING_SOUND = ''
    this%f_STOP_ALL = 'stopAll'
    this%f_CLOSE_ALL = 'closeAll'
    this%f_SOUND = ' Sound: '
    this%f_INIT_SOUND = 'Initializing Sound: '
    this%f_STOPPING_SOUND = 'Stopping Sound: '
    this%f_CLOSING_SOUND = 'Closing Sound: '
  end function

  recursive function SoundStrings_jm_getInstance_0() result(jresult)
    class(SoundStrings), pointer :: jresult
        jresult => SoundStrings_jstatic_instance()
        return
  end function
end module SoundStrings_m

