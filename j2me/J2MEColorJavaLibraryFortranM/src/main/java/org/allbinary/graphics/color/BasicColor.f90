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
module BasicColor_m
  use JR_m
  use StringMaker_m
  use BasicColorUtil_m
  implicit none

  type, extends(JObject) :: BasicColor
    character(len=:), allocatable :: f_name
    integer(4) :: f_value = 0
    real(4) :: f_redComponent = 0.0
    real(4) :: f_greenComponent = 0.0
    real(4) :: f_blueComponent = 0.0
    real(4) :: f_alphaComponent = 0.0
    integer(4) :: f_red = 0
    integer(4) :: f_green = 0
    integer(4) :: f_blue = 0
    integer(4) :: f_alpha = 0
  contains
    procedure :: jm_intValue_0 => BasicColor_jm_intValue_0
    procedure :: jm_toInt_0 => BasicColor_jm_toInt_0
    procedure :: jm_toString_0 => BasicColor_jm_toString_0
    procedure :: jm_getName_0 => BasicColor_jm_getName_0
    procedure :: jm_getRedComponent_0 => BasicColor_jm_getRedComponent_0
    procedure :: jm_getGreenComponent_0 => BasicColor_jm_getGreenComponent_0
    procedure :: jm_getBlueComponent_0 => BasicColor_jm_getBlueComponent_0
    procedure :: jm_getAlphaComponent_0 => BasicColor_jm_getAlphaComponent_0
  end type


contains

  function BasicColor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicColor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicColor)
      jresult => object
    end select
  end function

  recursive function BasicColor_jnew_3(j_alphaValue, j_value, j_name) result(this)
    integer(4), value :: j_alphaValue
    integer(4), value :: j_value
    character(len=*), intent(in) :: j_name
    class(BasicColor), pointer :: this
    integer(4) :: j_tempValue
    class(BasicColorUtil), pointer :: j_basicColorUtil
    integer(4) :: j_alphaInt
    integer(4) :: j_redInt
    integer(4) :: j_greenInt
    integer(4) :: j_blueInt
    allocate(this)
    this%jclass = 'BasicColor'
    this%f_name = ''
    
    
    
    
    
    
    
    
    
    
        this%f_name = j_name
        continue
        j_basicColorUtil => BasicColorUtil_jm_getInstance_0()
        if (j_basicColorUtil%f_isAlpha) then
            if (j_basicColorUtil%f_ffOpaque) then
                j_tempValue = ior(j_alphaValue, j_value)
            else
                j_tempValue = ior(int(z'00000000', 4), j_value)
            end if
        else
            j_tempValue = j_value
        end if
        j_alphaInt = (iand((shifta(j_tempValue, iand(24, 31))), 255))
        this%f_alpha = JR_i16(j_alphaInt)
        this%f_alphaComponent = ((real(j_alphaInt, 4)) / 255.0)
        j_redInt = (iand((shifta(j_tempValue, iand(16, 31))), 255))
        this%f_red = JR_i16(j_redInt)
        this%f_redComponent = ((real(j_redInt, 4)) / 255.0)
        j_greenInt = (iand((shifta(j_tempValue, iand(8, 31))), 255))
        this%f_green = JR_i16(j_greenInt)
        this%f_greenComponent = ((real(j_greenInt, 4)) / 255.0)
        j_blueInt = (iand(j_tempValue, 255))
        this%f_blue = JR_i16(j_blueInt)
        this%f_blueComponent = ((real(j_blueInt, 4)) / 255.0)
        this%f_value = j_tempValue
  end function

  recursive function BasicColor_jm_intValue_0(this) result(jresult)
    class(BasicColor), target :: this
    integer(4) :: jresult
        jresult = this%f_value
        return
  end function

  recursive function BasicColor_jm_toInt_0(this) result(jresult)
    class(BasicColor), target :: this
    integer(4) :: jresult
        jresult = this%f_value
        return
  end function

  recursive function BasicColor_jm_toString_0(this) result(jresult)
    class(BasicColor), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('BasicColor: ')
        jdiscardRef => j_stringBuffer%jm_append_1('Alpha: ')
        jdiscardRef => j_stringBuffer%jm_appendshort_1(this%f_alpha)
        jdiscardRef => j_stringBuffer%jm_append_1(' Red: ')
        jdiscardRef => j_stringBuffer%jm_appendshort_1(this%f_red)
        jdiscardRef => j_stringBuffer%jm_append_1(' Green: ')
        jdiscardRef => j_stringBuffer%jm_appendshort_1(this%f_green)
        jdiscardRef => j_stringBuffer%jm_append_1(' Blue: ')
        jdiscardRef => j_stringBuffer%jm_appendshort_1(this%f_blue)
        jdiscardRef => j_stringBuffer%jm_append_1(' Value: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_value)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function BasicColor_jm_getName_0(this) result(jresult)
    class(BasicColor), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive function BasicColor_jm_getRedComponent_0(this) result(jresult)
    class(BasicColor), target :: this
    real(4) :: jresult
        jresult = this%f_redComponent
        return
  end function

  recursive function BasicColor_jm_getGreenComponent_0(this) result(jresult)
    class(BasicColor), target :: this
    real(4) :: jresult
        jresult = this%f_greenComponent
        return
  end function

  recursive function BasicColor_jm_getBlueComponent_0(this) result(jresult)
    class(BasicColor), target :: this
    real(4) :: jresult
        jresult = this%f_blueComponent
        return
  end function

  recursive function BasicColor_jm_getAlphaComponent_0(this) result(jresult)
    class(BasicColor), target :: this
    real(4) :: jresult
        jresult = this%f_alphaComponent
        return
  end function
end module BasicColor_m

