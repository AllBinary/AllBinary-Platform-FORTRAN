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
module GameInputProcessorComposite_m
  use JR_m
  use StringMaker_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use PlayerGameInput_m
  use GameInputProcessorInterface_m
  implicit none

  type, extends(PlayerGameInput) :: GameInputProcessorComposite
    character(len=:), allocatable :: f_name
    class(GameInputProcessorInterface), pointer :: f_gameInputProcessorInterface => null()
    character(len=:), allocatable :: f_NAME_LABEL
  contains
    procedure :: jm_update_0 => GameInputProcessorComposite_jm_update_0
    procedure :: jm_toString_0 => GameInputProcessorComposite_jm_toString_0
  end type


contains

  function GameInputProcessorComposite_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInputProcessorComposite), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInputProcessorComposite)
      jresult => object
    end select
  end function

  recursive function GameInputProcessorComposite_jnew_2(j_name, j_gameInputProcessorInterface) result(this)
    character(len=*), intent(in) :: j_name
    class(GameInputProcessorInterface), target, optional :: j_gameInputProcessorInterface
    class(GameInputProcessorComposite), pointer :: this
    allocate(this)
    this%jclass = 'GameInputProcessorComposite'
    this%f_name = ''
    this%f_NAME_LABEL = ''
    
    
    this%f_NAME_LABEL = ' GameInputProcessorInterface: '
        continue ! super()
        this%f_name = j_name
        this%f_gameInputProcessorInterface => j_gameInputProcessorInterface
  end function

  recursive subroutine GameInputProcessorComposite_jm_update_0(this)
    class(GameInputProcessorComposite), target :: this
    class(BasicArrayList), pointer :: j_list
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_list => this%jm_getGameKeyEventList_0()
            call this%f_gameInputProcessorInterface%jm_onInput_1(j_list)
  end subroutine

  recursive function GameInputProcessorComposite_jm_toString_0(this) result(jresult)
    class(GameInputProcessorComposite), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
        jtemp4 => StringMaker_jnew_0()
        jtemp3 => jtemp4%jm_append_1(this%PlayerGameInput%jm_toString_0())
        jtemp2 => jtemp3%jm_append_1(this%f_NAME_LABEL)
        jtemp1 => jtemp2%jm_append_1(this%f_name)
        jresult = jtemp1%jm_toString_0()
        return
  end function
end module GameInputProcessorComposite_m

