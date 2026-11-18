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
module GameInputProcessorUtil_m
  use JR_m
  use GameInputProcessor_m
  use InputFactory_m
  implicit none

  type, extends(JObject) :: GameInputProcessorUtil
  end type


contains

  function GameInputProcessorUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInputProcessorUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInputProcessorUtil)
      jresult => object
    end select
  end function

  function GameInputProcessorUtil_jnew_0() result(this)
    class(GameInputProcessorUtil), pointer :: this
    allocate(this)
    this%jclass = 'GameInputProcessorUtil'
  end function

  recursive subroutine GameInputProcessorUtil_jm_init_1(j_inputProcessorArray)
    type(JRef) :: j_inputProcessorArray(:)
    class(GameInputProcessor), pointer :: j_noInputProcessor
    integer(4) :: j_total
    class(GameInputProcessor), pointer :: j_inputProcessorCanBeNull
    integer(4) :: j_index
    class(InputFactory), pointer :: jtemp1
        j_noInputProcessor => GameInputProcessor_jm_getInstance_0()
        jtemp1 => InputFactory_jm_getInstance_0()
        j_total = jtemp1%f_MAX
        j_index = 0
        do while ((j_index < j_total))
            j_inputProcessorCanBeNull => GameInputProcessor_jcast(j_inputProcessorArray((j_index) + 1)%v)
            if ((.not. associated(j_inputProcessorCanBeNull))) then
                j_inputProcessorArray((j_index) + 1)%v => j_noInputProcessor
            end if
            j_index = j_index + 1
        end do
  end subroutine
end module GameInputProcessorUtil_m

