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
module GameType_m
  use JR_m
  implicit none

  type, extends(JObject) :: GameType
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_toString_0 => GameType_jm_toString_0
  end type


contains

  function GameType_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameType), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameType)
      jresult => object
    end select
  end function

  recursive function GameType_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(GameType), pointer :: this
    allocate(this)
    this%jclass = 'GameType'
    this%f_name = ''
    
        this%f_name = j_name
  end function

  recursive function GameType_jm_toString_0(this) result(jresult)
    class(GameType), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module GameType_m

