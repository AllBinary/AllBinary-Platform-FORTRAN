! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.device
module GraphicsInterface_m
  use JR_m
  use FontDebugBase_m
  implicit none

  type, extends(JObject) :: GraphicsInterface
  contains
    procedure :: jm_setFontDebug_2 => GraphicsInterface_jm_setFontDebug_2
  end type


contains

  function GraphicsInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GraphicsInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GraphicsInterface)
      jresult => object
    end select
  end function

  function GraphicsInterface_jnew_0() result(this)
    class(GraphicsInterface), pointer :: this
    allocate(this)
    this%jclass = 'GraphicsInterface'
  end function

  recursive subroutine GraphicsInterface_jm_setFontDebug_2(this, j_font, j_fontDebug)
    class(GraphicsInterface), target :: this
    class(Font), target, optional :: j_font
    class(FontDebugBase), target, optional :: j_fontDebug
    error stop 'AbstractMethodError: GraphicsInterface.setFontDebug'
  end subroutine
end module GraphicsInterface_m

