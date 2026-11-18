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
! package org.allbinary.graphics.draw
module DrawVerticalStringUtil_m
  use JR_m
  use AndroidUtil_m
  use J2MEUtil_m
  use Anchor_m
  use OpenGLFeatureUtil_m
  use NullUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: DrawVerticalStringUtil
    character(len=:), allocatable :: f_EMPTY_STRING
    integer(4) :: f_anchor = 0
    integer(4) :: f_charHeight = 0
    integer(4) :: f_offsetY = 0
    integer(4), allocatable :: f_offsetXArray(:)
  contains
    procedure :: jm_updateMeasurement_2 => DrawVerticalStringUtil_jm_updateMeasurement_2
    procedure :: jm_paintVerticle_5 => DrawVerticalStringUtil_jm_paintVerticle_5
    procedure :: jm_drawCenterString_6 => DrawVerticalStringUtil_jm_drawCenterString_6
    procedure :: jm_drawCenterStrings_5 => DrawVerticalStringUtil_jm_drawCenterStrings_5
  end type

  class(DrawVerticalStringUtil), pointer, save :: DrawVerticalStringUtil_jcell_instance => null()
  logical, save :: DrawVerticalStringUtil_jset_instance = .false.

contains

  function DrawVerticalStringUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DrawVerticalStringUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DrawVerticalStringUtil)
      jresult => object
    end select
  end function

  function DrawVerticalStringUtil_jstatic_instance() result(jresult)
    class(DrawVerticalStringUtil), pointer :: jresult
    if (.not. DrawVerticalStringUtil_jset_instance) then
      DrawVerticalStringUtil_jset_instance = .true.
      DrawVerticalStringUtil_jcell_instance => DrawVerticalStringUtil_jnew_0()
    end if
    jresult => DrawVerticalStringUtil_jcell_instance
  end function

  subroutine DrawVerticalStringUtil_jsetstatic_instance(jvalue)
    class(DrawVerticalStringUtil), target, optional :: jvalue
    DrawVerticalStringUtil_jset_instance = .true.
    if (present(jvalue)) then
      DrawVerticalStringUtil_jcell_instance => jvalue
    else
      DrawVerticalStringUtil_jcell_instance => null()
    end if
  end subroutine

  function DrawVerticalStringUtil_jnew_0() result(this)
    class(DrawVerticalStringUtil), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(NullUtil), pointer :: jtemp2
    allocate(this)
    this%jclass = 'DrawVerticalStringUtil'
    this%f_EMPTY_STRING = ''
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_EMPTY_STRING = jtemp1%f_EMPTY_STRING
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
    
    
    jtemp2 => NullUtil_jm_getInstance_0()
    this%f_offsetXArray = jtemp2%f_NULL_INT_ARRAY
  end function

  recursive function DrawVerticalStringUtil_jm_getInstance_0() result(jresult)
    class(DrawVerticalStringUtil), pointer :: jresult
        jresult => DrawVerticalStringUtil_jstatic_instance()
        return
  end function

  recursive subroutine DrawVerticalStringUtil_jm_updateMeasurement_2(this, j_graphics, j_string)
    class(DrawVerticalStringUtil), target :: this
    class(Graphics), target, optional :: j_graphics
    character(len=*), intent(in) :: j_string
    class(OpenGLFeatureUtil), pointer :: j_openGLFeatureUtil
    class(Font), pointer :: j_font
    integer(4) :: j_size
    integer(4) :: j_aChar
    integer(4), allocatable :: j_offsetXArray(:)
    integer(4) :: j_index
        j_openGLFeatureUtil => OpenGLFeatureUtil_jm_getInstance_0()
        j_font => j_graphics%jm_getFont_0()
        this%f_charHeight = j_font%jm_getHeight_0()
        this%f_offsetY = 0
        if (J2MEUtil_jm_isHTML_0()) then
            this%f_charHeight = (this%f_charHeight + 1)
        else if (j_openGLFeatureUtil%jm_isAnyThreed_0()) then
            this%f_charHeight = (this%f_charHeight + 2)
            if (AndroidUtil_jm_isAndroid_0()) then
                continue
            else
                this%f_offsetY = (2 + (((this%f_charHeight * 2) / 3)))
            end if
        end if
        j_size = len(j_string)
        continue
        j_offsetXArray = JR_newIntArray(j_size)
        j_index = (j_size - 1)
        do while ((j_index >= 0))
            j_aChar = JR_charAt(j_string, j_index)
            if (j_openGLFeatureUtil%jm_isAnyThreed_0()) then
                j_offsetXArray((j_index) + 1) = (j_font%jm_charWidth_1(j_aChar) / 2)
            end if
            j_index = j_index - 1
        end do
        this%f_offsetXArray = j_offsetXArray
  end subroutine

  recursive subroutine DrawVerticalStringUtil_jm_paintVerticle_5(this, j_graphics, j_string, j_x, j_y, j_anchor)
    class(DrawVerticalStringUtil), target :: this
    class(Graphics), target, optional :: j_graphics
    character(len=*), intent(in) :: j_string
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_anchor
    integer(4) :: j_size
    integer(4) :: j_aChar
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = len(j_string)
        continue
        j_index = (j_size - 1)
        do while ((j_index >= 0))
            j_aChar = JR_charAt(j_string, j_index)
            call j_graphics%jm_drawChar_4(j_aChar, (j_x + this%f_offsetXArray((j_index) + 1)), ((j_y + ((this%f_charHeight * j_index))) + this%f_offsetY), j_anchor)
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine DrawVerticalStringUtil_jm_drawCenterString_6(this, j_graphics, j_string, j_offset, j_length, j_x, j_y)
    class(DrawVerticalStringUtil), target :: this
    class(Graphics), target, optional :: j_graphics
    character(len=*), intent(in) :: j_string
    integer(4), value :: j_offset
    integer(4), value :: j_length
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: j_width
    class(JObject), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp3 => j_graphics%jm_getFont_0()
        j_width = (shifta(jtemp3%jm_substringWidth_3(j_string, j_offset, j_length), iand(1, 31)))
        continue ! try
            call j_graphics%jm_drawSubstring_6(j_string, j_offset, j_length, (j_x - j_width), j_y, this%f_anchor)
  end subroutine

  recursive subroutine DrawVerticalStringUtil_jm_drawCenterStrings_5(this, j_graphics, j_stringArray, j_maxWidth, j_x, j_y)
    class(DrawVerticalStringUtil), target :: this
    class(Graphics), target, optional :: j_graphics
    type(JString) :: j_stringArray(:)
    integer(4), value :: j_maxWidth
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: j_extraLines
    character(len=:), allocatable :: j_string
    integer(4) :: j_width
    integer(4) :: j_minTotalLines
    integer(4) :: j_linePortion
    integer(4) :: j_offset
    integer(4) :: j_currentLength
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jtemp11
    integer(4) :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_extraLines = 0
        j_index = 0
        do while ((j_index < size(j_stringArray, 1)))
            j_string = j_stringArray((j_index) + 1)%v
            if ((.not. JR_strEquals(j_string, this%f_EMPTY_STRING))) then
                jtemp11 => j_graphics%jm_getFont_0()
                j_width = jtemp11%jm_stringWidth_1(j_string)
                j_minTotalLines = 1
                if ((j_width > j_maxWidth)) then
                    j_minTotalLines = (((j_width / j_maxWidth)) + 1)
                end if
                j_linePortion = (len(j_string) / j_minTotalLines)
                j_offset = 0
                j_currentLength = j_linePortion
                j_size = len(j_string)
                do while ((j_offset < j_size))
                    if (((j_offset + j_currentLength) > j_size)) then
                        j_currentLength = (j_size - j_offset)
                    end if
                    if (((j_offset + j_currentLength) /= j_size)) then
                        do while (((j_currentLength > 0) .and. (j_stringArray((j_index) + 1)%v%jm_charAt_1((j_offset + j_currentLength)) /= iachar(' '))))
                            j_currentLength = j_currentLength - 1
                        end do
                        if ((j_currentLength <= 4)) then
                            j_currentLength = j_linePortion
                        end if
                    end if
                    jtemp12 = j_extraLines
                    j_extraLines = j_extraLines + 1
                    call this%jm_drawCenterString_6(j_graphics, j_string, j_offset, j_currentLength, j_x, (j_y + ((((j_index + jtemp12)) * this%f_charHeight))))
                    j_offset = (j_offset + j_currentLength)
                    j_currentLength = j_linePortion
                end do
                j_extraLines = j_extraLines - 1
            end if
            j_index = j_index + 1
        end do
  end subroutine
end module DrawVerticalStringUtil_m

