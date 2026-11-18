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
! package org.allbinary.game.paint.help
module UpdateMyFontProperties_m
  use JR_m
  use NullUtil_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: UpdateMyFontProperties
    type(JString), allocatable :: f_actionStringArray(:)
    integer(4), allocatable :: f_keymappingBeginWidthArray(:)
    integer(4), allocatable :: f_actionStringDeltaXArray(:)
    integer(4), allocatable :: f_inputDeltaXArray(:,:)
    type(JString), allocatable :: f_sepArray(:,:)
    integer(4), allocatable :: f_sepWidthArray(:,:)
    integer(4) :: f_charHeight = 0
  end type


contains

  function UpdateMyFontProperties_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpdateMyFontProperties), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpdateMyFontProperties)
      jresult => object
    end select
  end function

  function UpdateMyFontProperties_jnew_0() result(this)
    class(UpdateMyFontProperties), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(NullUtil), pointer :: jtemp2
    class(NullUtil), pointer :: jtemp3
    class(NullUtil), pointer :: jtemp4
    class(StringUtil), pointer :: jtemp5
    class(NullUtil), pointer :: jtemp6
    allocate(this)
    this%jclass = 'UpdateMyFontProperties'
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_actionStringArray = jtemp1%jm_getArrayInstance_0()
    jtemp2 => NullUtil_jm_getInstance_0()
    this%f_keymappingBeginWidthArray = jtemp2%f_NULL_INT_ARRAY
    jtemp3 => NullUtil_jm_getInstance_0()
    this%f_actionStringDeltaXArray = jtemp3%f_NULL_INT_ARRAY
    jtemp4 => NullUtil_jm_getInstance_0()
    this%f_inputDeltaXArray = jtemp4%f_NULL_INT_ARRAY_ARRAY
    jtemp5 => StringUtil_jm_getInstance_0()
    this%f_sepArray = jtemp5%f_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS
    jtemp6 => NullUtil_jm_getInstance_0()
    this%f_sepWidthArray = jtemp6%f_NULL_INT_ARRAY_ARRAY
    
  end function
end module UpdateMyFontProperties_m

