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
! package org.allbinary.canvas
module GameStatisticsFactory_m
  use JR_m
  use StringMaker_m
  use BaseGameStatistics_m
  implicit none

  type, extends(BaseGameStatistics) :: GameStatisticsFactory
    class(StringMaker), pointer :: f_stringBuffer => null()
  contains
    procedure :: jm_add_1 => GameStatisticsFactory_jm_add_1
    procedure :: jm_toString_0 => GameStatisticsFactory_jm_toString_0
  end type

  class(GameStatisticsFactory), pointer, save :: GameStatisticsFactory_jcell_instance => null()
  logical, save :: GameStatisticsFactory_jset_instance = .false.

contains

  function GameStatisticsFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameStatisticsFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameStatisticsFactory)
      jresult => object
    end select
  end function

  function GameStatisticsFactory_jstatic_instance() result(jresult)
    class(GameStatisticsFactory), pointer :: jresult
    if (.not. GameStatisticsFactory_jset_instance) then
      GameStatisticsFactory_jset_instance = .true.
      GameStatisticsFactory_jcell_instance => GameStatisticsFactory_jnew_0()
    end if
    jresult => GameStatisticsFactory_jcell_instance
  end function

  subroutine GameStatisticsFactory_jsetstatic_instance(jvalue)
    class(GameStatisticsFactory), target, optional :: jvalue
    GameStatisticsFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameStatisticsFactory_jcell_instance => jvalue
    else
      GameStatisticsFactory_jcell_instance => null()
    end if
  end subroutine

  function GameStatisticsFactory_jnew_0() result(this)
    class(GameStatisticsFactory), pointer :: this
    allocate(this)
    this%jclass = 'GameStatisticsFactory'
    this%f_stringBuffer => StringMaker_jnew_0()
  end function

  recursive function GameStatisticsFactory_jm_getInstance_0() result(jresult)
    class(GameStatisticsFactory), pointer :: jresult
        jresult => GameStatisticsFactory_jstatic_instance()
        return
  end function

  recursive subroutine GameStatisticsFactory_jm_add_1(this, j_string)
    class(GameStatisticsFactory), target :: this
    character(len=*), intent(in) :: j_string
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%f_stringBuffer%jm_length_0() > 12000)) then
            jdiscardRef => this%f_stringBuffer%jm_delete_2(0, this%f_stringBuffer%jm_length_0())
            jdiscardRef => this%f_stringBuffer%jm_append_1('Old Stats Cleared')
        end if
        jdiscardRef => this%f_stringBuffer%jm_append_1(j_string)
  end subroutine

  recursive function GameStatisticsFactory_jm_toString_0(this) result(jresult)
    class(GameStatisticsFactory), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1(this%BaseGameStatistics%jm_toString_0())
        jtemp1 => jtemp2%jm_append_1(this%f_stringBuffer%jm_toString_0())
        jresult = jtemp1%jm_toString_0()
        return
  end function
end module GameStatisticsFactory_m

function GameStatisticsFactory_jnew_0_jext() result(this)
  use GameStatisticsFactory_m, only: JObject, GameStatisticsFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GameStatisticsFactory_jnew_0()
end function

