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
! package org.allbinary.game
module PlayerType_m
  use JR_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: PlayerType
    integer(4) :: f_id = 0
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_getId_0 => PlayerType_jm_getId_0
    procedure :: jm_getName_0 => PlayerType_jm_getName_0
    procedure :: jm_toString_0 => PlayerType_jm_toString_0
  end type


contains

  function PlayerType_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlayerType), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlayerType)
      jresult => object
    end select
  end function

  recursive function PlayerType_jnew_2(j_name, j_value) result(this)
    character(len=*), intent(in) :: j_name
    integer(4), value :: j_value
    class(PlayerType), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'PlayerType'
    this%f_name = ''
    
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_name = jtemp1%f_EMPTY_STRING
        this%f_name = j_name
        this%f_id = j_value
  end function

  recursive function PlayerType_jm_getId_0(this) result(jresult)
    class(PlayerType), target :: this
    integer(4) :: jresult
        jresult = this%f_id
        return
  end function

  recursive function PlayerType_jm_getName_0(this) result(jresult)
    class(PlayerType), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive function PlayerType_jm_toString_0(this) result(jresult)
    class(PlayerType), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%jm_getName_0()
        return
  end function
end module PlayerType_m

