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
! package org.allbinary.graphics.color
module BasicColorFactory_m
  use JR_m
  use StringUtil_m
  use BasicColor_m
  use BasicColorUtil_m
  implicit none

  type, extends(JObject) :: BasicColorFactory
    class(BasicColor), pointer :: f_NULL_COLOR => null()
    class(BasicColor), pointer :: f_TAN => null()
    class(BasicColor), pointer :: f_SKIN_PINK => null()
    class(BasicColor), pointer :: f_RED => null()
    class(BasicColor), pointer :: f_LIGHT_RED => null()
    class(BasicColor), pointer :: f_DARK_GREEN => null()
    class(BasicColor), pointer :: f_GREEN => null()
    class(BasicColor), pointer :: f_LIGHT_GREEN => null()
    class(BasicColor), pointer :: f_PURPLE => null()
    class(BasicColor), pointer :: f_BLUE => null()
    class(BasicColor), pointer :: f_LIGHT_BLUE => null()
    class(BasicColor), pointer :: f_VERY_LIGHT_BLUE => null()
    class(BasicColor), pointer :: f_PUCE => null()
    class(BasicColor), pointer :: f_AQUA => null()
    class(BasicColor), pointer :: f_YELLOW => null()
    class(BasicColor), pointer :: f_PINK => null()
    class(BasicColor), pointer :: f_BLACK => null()
    class(BasicColor), pointer :: f_GREY => null()
    class(BasicColor), pointer :: f_LIGHT_GREY => null()
    class(BasicColor), pointer :: f_DARK_GREY => null()
    class(BasicColor), pointer :: f_ORANGE => null()
    class(BasicColor), pointer :: f_BROWN => null()
    class(BasicColor), pointer :: f_WHITE => null()
    class(BasicColor), pointer :: f_TRANSPARENT_COLOR => null()
    class(BasicColor), pointer :: f_TRANSPARENT_GREY => null()
    class(BasicColor), pointer :: f_TRANSPARENT_BLACK => null()
    class(BasicColor), pointer :: f_TRANSPARENT_RED => null()
    class(BasicColor), pointer :: f_CLEAR_COLOR => null()
    class(BasicColor), pointer :: f_BORDER_COLOR => null()
  contains
    procedure :: jm_createInstance_1 => BasicColorFactory_jm_createInstance_1
    procedure :: jm_createInstanceA_2 => BasicColorFactory_jm_createInstanceA_2
    procedure :: jm_createInstanceAN_3 => BasicColorFactory_jm_createInstanceAN_3
    procedure :: jm_createInstanceARGB_5 => BasicColorFactory_jm_createInstanceARGB_5
  end type

  class(BasicColorFactory), pointer, save :: BasicColorFactory_jcell_instance => null()
  logical, save :: BasicColorFactory_jset_instance = .false.

contains

  function BasicColorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicColorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicColorFactory)
      jresult => object
    end select
  end function

  function BasicColorFactory_jstatic_instance() result(jresult)
    class(BasicColorFactory), pointer :: jresult
    if (.not. BasicColorFactory_jset_instance) then
      BasicColorFactory_jset_instance = .true.
      BasicColorFactory_jcell_instance => BasicColorFactory_jnew_0()
    end if
    jresult => BasicColorFactory_jcell_instance
  end function

  subroutine BasicColorFactory_jsetstatic_instance(jvalue)
    class(BasicColorFactory), target, optional :: jvalue
    BasicColorFactory_jset_instance = .true.
    if (present(jvalue)) then
      BasicColorFactory_jcell_instance => jvalue
    else
      BasicColorFactory_jcell_instance => null()
    end if
  end subroutine

  function BasicColorFactory_jnew_0() result(this)
    class(BasicColorFactory), pointer :: this
    class(BasicColorUtil), pointer :: jtemp5
    class(BasicColorUtil), pointer :: jtemp6
    class(BasicColorUtil), pointer :: jtemp7
    class(BasicColorUtil), pointer :: jtemp8
    class(BasicColorUtil), pointer :: jtemp9
    class(BasicColorUtil), pointer :: jtemp10
    class(BasicColorUtil), pointer :: jtemp11
    class(BasicColorUtil), pointer :: jtemp12
    class(StringUtil), pointer :: jtemp13
    class(StringUtil), pointer :: jtemp14
    class(StringUtil), pointer :: jtemp15
    class(StringUtil), pointer :: jtemp16
    allocate(this)
    this%jclass = 'BasicColorFactory'
    this%f_NULL_COLOR => this%jm_createInstanceARGB_5(255, 255, 255, 255, 'null color')
    this%f_TAN => this%jm_createInstance_1(int(z'E9D8B5', 4))
    this%f_SKIN_PINK => this%jm_createInstance_1(int(z'FDCECE', 4))
    jtemp5 => BasicColorUtil_jm_getInstance_0()
    this%f_RED => this%jm_createInstanceAN_3(jtemp5%f_ALPHA, int(z'FF0000', 4), 'red')
    jtemp6 => BasicColorUtil_jm_getInstance_0()
    this%f_LIGHT_RED => this%jm_createInstanceAN_3(jtemp6%f_ALPHA, int(z'FFA0A0', 4), 'light red')
    this%f_DARK_GREEN => this%jm_createInstance_1(int(z'00FF00', 4))
    jtemp7 => BasicColorUtil_jm_getInstance_0()
    this%f_GREEN => this%jm_createInstanceAN_3(jtemp7%f_ALPHA, int(z'00DD00', 4), 'green')
    this%f_LIGHT_GREEN => this%jm_createInstance_1(int(z'007700', 4))
    jtemp8 => BasicColorUtil_jm_getInstance_0()
    this%f_PURPLE => this%jm_createInstanceAN_3(jtemp8%f_ALPHA, int(z'400040', 4), 'purple')
    jtemp9 => BasicColorUtil_jm_getInstance_0()
    this%f_BLUE => this%jm_createInstanceAN_3(jtemp9%f_ALPHA, int(z'0000FF', 4), 'blue')
    this%f_LIGHT_BLUE => this%jm_createInstance_1(int(z'00aaff', 4))
    this%f_VERY_LIGHT_BLUE => this%jm_createInstance_1(int(z'000033', 4))
    this%f_PUCE => this%jm_createInstance_1(int(z'FF00AA', 4))
    this%f_AQUA => this%jm_createInstance_1(int(z'00FFFF', 4))
    jtemp10 => BasicColorUtil_jm_getInstance_0()
    this%f_YELLOW => this%jm_createInstanceAN_3(jtemp10%f_ALPHA, int(z'FFFF00', 4), 'yellow')
    this%f_PINK => this%jm_createInstance_1(int(z'FF00FF', 4))
    jtemp11 => BasicColorUtil_jm_getInstance_0()
    this%f_BLACK => this%jm_createInstanceAN_3(jtemp11%f_ALPHA, int(z'000000', 4), 'black')
    jtemp12 => BasicColorUtil_jm_getInstance_0()
    this%f_GREY => this%jm_createInstanceAN_3(jtemp12%f_ALPHA, int(z'AAAAAA', 4), 'grey')
    this%f_LIGHT_GREY => this%jm_createInstance_1(int(z'C0C0C0', 4))
    this%f_DARK_GREY => this%jm_createInstance_1(int(z'404040', 4))
    this%f_ORANGE => this%jm_createInstance_1(int(z'e07718', 4))
    this%f_BROWN => this%jm_createInstance_1(int(z'956B00', 4))
    this%f_WHITE => this%jm_createInstance_1(int(z'FFFFFF', 4))
    jtemp13 => StringUtil_jm_getInstance_0()
    this%f_TRANSPARENT_COLOR => this%jm_createInstanceAN_3(int(z'00000000', 4), int(z'000000', 4), jtemp13%f_EMPTY_STRING)
    jtemp14 => StringUtil_jm_getInstance_0()
    this%f_TRANSPARENT_GREY => this%jm_createInstanceAN_3(int(z'52000000', 4), int(z'ECECEC', 4), jtemp14%f_EMPTY_STRING)
    jtemp15 => StringUtil_jm_getInstance_0()
    this%f_TRANSPARENT_BLACK => this%jm_createInstanceAN_3(int(z'52000000', 4), int(z'000000', 4), jtemp15%f_EMPTY_STRING)
    jtemp16 => StringUtil_jm_getInstance_0()
    this%f_TRANSPARENT_RED => this%jm_createInstanceAN_3(int(z'52000000', 4), int(z'FF0000', 4), jtemp16%f_EMPTY_STRING)
    this%f_CLEAR_COLOR => this%f_BLACK
    this%f_BORDER_COLOR => this%f_WHITE
  end function

  recursive function BasicColorFactory_jm_getInstance_0() result(jresult)
    class(BasicColorFactory), pointer :: jresult
        jresult => BasicColorFactory_jstatic_instance()
        return
  end function

  recursive function BasicColorFactory_jm_createInstance_1(this, j_value) result(jresult)
    class(BasicColorFactory), target :: this
    integer(4), value :: j_value
    class(BasicColor), pointer :: jresult
    class(BasicColorUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
        jtemp1 => BasicColorUtil_jm_getInstance_0()
        jtemp2 => StringUtil_jm_getInstance_0()
        jresult => BasicColor_jnew_3(jtemp1%f_ALPHA, j_value, jtemp2%f_EMPTY_STRING)
        return
  end function

  recursive function BasicColorFactory_jm_createInstanceA_2(this, j_alphaValue, j_value) result(jresult)
    class(BasicColorFactory), target :: this
    integer(4), value :: j_alphaValue
    integer(4), value :: j_value
    class(BasicColor), pointer :: jresult
    class(StringUtil), pointer :: jtemp3
        jtemp3 => StringUtil_jm_getInstance_0()
        jresult => BasicColor_jnew_3(j_alphaValue, j_value, jtemp3%f_EMPTY_STRING)
        return
  end function

  recursive function BasicColorFactory_jm_createInstanceAN_3(this, j_alphaValue, j_value, j_name) result(jresult)
    class(BasicColorFactory), target :: this
    integer(4), value :: j_alphaValue
    integer(4), value :: j_value
    character(len=*), intent(in) :: j_name
    class(BasicColor), pointer :: jresult
        jresult => BasicColor_jnew_3(j_alphaValue, j_value, j_name)
        return
  end function

  recursive function BasicColorFactory_jm_createInstanceARGB_5(this, j_alphaValue, j_r, j_g, j_b, j_name) result(jresult)
    class(BasicColorFactory), target :: this
    integer(4), value :: j_alphaValue
    integer(4), value :: j_r
    integer(4), value :: j_g
    integer(4), value :: j_b
    character(len=*), intent(in) :: j_name
    class(BasicColor), pointer :: jresult
    integer(4) :: j_ALPHA_MASK
    class(StringUtil), pointer :: jtemp4
        j_ALPHA_MASK = int(z'FF000000', 4)
        jtemp4 => StringUtil_jm_getInstance_0()
        jresult => BasicColor_jnew_3(j_alphaValue, ((((iand((shiftl(j_alphaValue, iand(24, 31))), j_ALPHA_MASK)) + (iand((shiftl(j_r, iand(16, 31))), int(z'00FF0000', 4)))) + (iand((shiftl(j_g, iand(8, 31))), int(z'0000FF00', 4)))) + (iand(j_b, int(z'000000FF', 4)))), jtemp4%f_EMPTY_STRING)
        return
  end function
end module BasicColorFactory_m

