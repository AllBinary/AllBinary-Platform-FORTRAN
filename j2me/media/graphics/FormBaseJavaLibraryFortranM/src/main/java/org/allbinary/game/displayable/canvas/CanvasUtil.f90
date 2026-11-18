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
! package org.allbinary.game.displayable.canvas
module CanvasUtil_m
  use JR_m
  use CommonPhoneStrings_m
  implicit none

  type, extends(JObject) :: CanvasUtil
  end type


contains

  function CanvasUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CanvasUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CanvasUtil)
      jresult => object
    end select
  end function

  recursive function CanvasUtil_jnew_0() result(this)
    class(CanvasUtil), pointer :: this
    allocate(this)
    this%jclass = 'CanvasUtil'
        continue
  end function

  recursive function CanvasUtil_jm_getKeyName_1(j_key) result(jresult)
    integer(4), value :: j_key
    character(len=:), allocatable :: jresult
    class(CommonPhoneStrings), pointer :: j_commonPhoneStrings
        j_commonPhoneStrings => CommonPhoneStrings_jm_getInstance_0()
        if ((j_key == Canvas_jstatic_UP())) then
            jresult = j_commonPhoneStrings%f_UP
            return
        else if ((j_key == Canvas_jstatic_DOWN())) then
            jresult = j_commonPhoneStrings%f_DOWN
            return
        else if ((j_key == Canvas_jstatic_RIGHT())) then
            jresult = j_commonPhoneStrings%f_RIGHT
            return
        else if ((j_key == Canvas_jstatic_LEFT())) then
            jresult = j_commonPhoneStrings%f_LEFT
            return
        else if ((j_key == Canvas_jstatic_FIRE())) then
            jresult = j_commonPhoneStrings%f_FIRE
            return
        end if
        jresult = 'UNKNOWN KEY'
        return
  end function
end module CanvasUtil_m

