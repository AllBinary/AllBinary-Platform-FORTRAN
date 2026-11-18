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
! package org.allbinary.graphics.form.item
module CommandTextItem_m
  use JR_m
  use BasicColor_m
  use ABTextItem_m
  implicit none

  type, extends(ABTextItem) :: CommandTextItem
    class(Command), pointer :: f_command => null()
  contains
    procedure :: jm_isFocusable_0 => CommandTextItem_jm_isFocusable_0
    procedure :: jm_getCommand_0 => CommandTextItem_jm_getCommand_0
  end type


contains

  function CommandTextItem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommandTextItem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommandTextItem)
      jresult => object
    end select
  end function

  recursive function CommandTextItem_jnew_5(j_command, j_layout, j_altText, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    class(Command), target, optional :: j_command
    integer(4), value :: j_layout
    character(len=*), intent(in) :: j_altText
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(CommandTextItem), pointer :: this
    allocate(this)
    this%jclass = 'CommandTextItem'
    
        continue ! super()
        this%f_command => j_command
  end function

  recursive function CommandTextItem_jm_isFocusable_0(this) result(jresult)
    class(CommandTextItem), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive function CommandTextItem_jm_getCommand_0(this) result(jresult)
    class(CommandTextItem), target :: this
    class(Command), pointer :: jresult
        jresult => this%f_command
        return
  end function
end module CommandTextItem_m

