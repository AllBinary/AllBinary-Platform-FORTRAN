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
module PlayerQueue_m
  use JR_m
  use PreLogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Sound_m
  use NoSound_m
  implicit none

  type, extends(JObject) :: PlayerQueue
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(BasicArrayList), pointer :: f_list => null()
    integer(4) :: f_max = 0
  contains
    procedure :: jm_add_1 => PlayerQueue_jm_add_1
    procedure :: jm_process_0 => PlayerQueue_jm_process_0
    procedure :: jm_clear_0 => PlayerQueue_jm_clear_0
    procedure :: jm_toString_0 => PlayerQueue_jm_toString_0
  end type

  character(len=:), allocatable, save :: PlayerQueue_jcell_TOTAL
  logical, save :: PlayerQueue_jset_TOTAL = .false.

contains

  function PlayerQueue_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlayerQueue), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlayerQueue)
      jresult => object
    end select
  end function

  function PlayerQueue_jstatic_TOTAL() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. PlayerQueue_jset_TOTAL) then
      PlayerQueue_jset_TOTAL = .true.
      PlayerQueue_jcell_TOTAL = 'Sounds In Queue: '
    end if
    jresult = PlayerQueue_jcell_TOTAL
  end function

  subroutine PlayerQueue_jsetstatic_TOTAL(jvalue)
    character(len=*), intent(in) :: jvalue
    PlayerQueue_jset_TOTAL = .true.
    PlayerQueue_jcell_TOTAL = jvalue
  end subroutine

  recursive function PlayerQueue_jnew_1(j_max) result(this)
    integer(4), value :: j_max
    class(PlayerQueue), pointer :: this
    allocate(this)
    this%jclass = 'PlayerQueue'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_list => BasicArrayListD_jnew_0()
    
        this%f_max = j_max
  end function

  recursive subroutine PlayerQueue_jm_add_1(this, j_sound)
    class(PlayerQueue), target :: this
    class(Sound), target, optional :: j_sound
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if ((.not. this%f_list%jm_contains_1(j_sound))) then
                jdiscardBoolean = this%f_list%jm_add_1(j_sound)
            end if
  end subroutine

  recursive function PlayerQueue_jm_process_0(this) result(jresult)
    class(PlayerQueue), target :: this
    logical :: jresult
    class(Sound), pointer :: j_sound
    logical :: j_played
    character(len=:), allocatable :: j_resource
    class(Player), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_sound => NoSound_jm_getInstance_0()
        continue ! try
            j_played = .false.
            if ((this%f_list%jm_size_0() > 0)) then
                j_sound => Sound_jcast(this%f_list%jm_removeAt_1(0))
                if (associated(j_sound)) then
                    jtemp1 => j_sound%jm_getPlayerP_0()
                    call jtemp1%jm_start_0()
                end if
                do while ((this%f_list%jm_size_0() > this%f_max))
                    jdiscardRef => this%f_list%jm_removeAt_1(0)
                end do
                j_played = .true.
            end if
            jresult = j_played
            return
  end function

  recursive subroutine PlayerQueue_jm_clear_0(this)
    class(PlayerQueue), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_list%jm_clear_0()
  end subroutine

  recursive function PlayerQueue_jm_toString_0(this) result(jresult)
    class(PlayerQueue), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
        jtemp8 => StringMaker_jnew_0()
        jtemp7 => jtemp8%jm_append_1(PlayerQueue_jstatic_TOTAL())
        jtemp6 => jtemp7%jm_appendint_1(this%f_list%jm_size_0())
        jresult = jtemp6%jm_toString_0()
        return
  end function
end module PlayerQueue_m

