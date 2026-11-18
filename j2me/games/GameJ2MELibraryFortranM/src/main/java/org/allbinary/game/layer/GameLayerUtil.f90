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
! package org.allbinary.game.layer
module GameLayerUtil_m
  use JR_m
  use DisplayInfoSingleton_m
  use AllBinaryLayer_m
  use ViewPositionBase_m
  implicit none

  type, extends(JObject) :: GameLayerUtil
  end type


contains

  function GameLayerUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameLayerUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameLayerUtil)
      jresult => object
    end select
  end function

  recursive function GameLayerUtil_jnew_0() result(this)
    class(GameLayerUtil), pointer :: this
    allocate(this)
    this%jclass = 'GameLayerUtil'
        continue
  end function

  recursive function GameLayerUtil_jm_isOnScreen_1(j_layer) result(jresult)
    class(AllBinaryLayer), target, optional :: j_layer
    logical :: jresult
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    class(ViewPositionBase), pointer :: j_viewPosition
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        j_viewPosition => j_layer%jm_getViewPosition_0()
        jresult = GameLayerUtil_jm_isInside_8(j_viewPosition%jm_getX_0(), j_viewPosition%jm_getY_0(), j_viewPosition%jm_getX2_0(), j_viewPosition%jm_getY2_0(), 0, 0, j_displayInfo%jm_getLastWidth_0(), j_displayInfo%jm_getLastHeight_0())
        return
  end function

  recursive function GameLayerUtil_jm_isInside_8(j_rectX1, j_rectY1, j_rectX2, j_rectY2, j_rect2X1, j_rect2Y1, j_rect2X2, j_rect2Y2) result(jresult)
    integer(4), value :: j_rectX1
    integer(4), value :: j_rectY1
    integer(4), value :: j_rectX2
    integer(4), value :: j_rectY2
    integer(4), value :: j_rect2X1
    integer(4), value :: j_rect2Y1
    integer(4), value :: j_rect2X2
    integer(4), value :: j_rect2Y2
    logical :: jresult
        if (((((j_rectX1 > j_rect2X1) .and. (j_rectX2 < j_rect2X2)) .and. (j_rectY1 > j_rect2Y1)) .and. (j_rectY2 < j_rect2Y2))) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function
end module GameLayerUtil_m

