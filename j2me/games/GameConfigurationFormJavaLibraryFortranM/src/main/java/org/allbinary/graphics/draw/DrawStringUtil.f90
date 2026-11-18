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
module DrawStringUtil_m
  use JR_m
  use Anchor_m
  use PreLogUtil_m
  use StringMaker_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: DrawStringUtil
    character(len=:), allocatable :: f_EMPTY_STRING
    integer(4) :: f_anchor = 0
  contains
    procedure :: jm_drawCenterString_6 => DrawStringUtil_jm_drawCenterString_6
    procedure :: jm_drawCenterStrings_6 => DrawStringUtil_jm_drawCenterStrings_6
  end type

  class(DrawStringUtil), pointer, save :: DrawStringUtil_jcell_instance => null()
  logical, save :: DrawStringUtil_jset_instance = .false.

contains

  function DrawStringUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DrawStringUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DrawStringUtil)
      jresult => object
    end select
  end function

  function DrawStringUtil_jstatic_instance() result(jresult)
    class(DrawStringUtil), pointer :: jresult
    if (.not. DrawStringUtil_jset_instance) then
      DrawStringUtil_jset_instance = .true.
      DrawStringUtil_jcell_instance => DrawStringUtil_jnew_0()
    end if
    jresult => DrawStringUtil_jcell_instance
  end function

  subroutine DrawStringUtil_jsetstatic_instance(jvalue)
    class(DrawStringUtil), target, optional :: jvalue
    DrawStringUtil_jset_instance = .true.
    if (present(jvalue)) then
      DrawStringUtil_jcell_instance => jvalue
    else
      DrawStringUtil_jcell_instance => null()
    end if
  end subroutine

  function DrawStringUtil_jnew_0() result(this)
    class(DrawStringUtil), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'DrawStringUtil'
    this%f_EMPTY_STRING = ''
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_EMPTY_STRING = jtemp1%f_EMPTY_STRING
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
  end function

  recursive function DrawStringUtil_jm_getInstance_0() result(jresult)
    class(DrawStringUtil), pointer :: jresult
        jresult => DrawStringUtil_jstatic_instance()
        return
  end function

  recursive subroutine DrawStringUtil_jm_drawCenterString_6(this, j_graphics, j_string, j_offset, j_length, j_x, j_y)
    class(DrawStringUtil), target :: this
    class(Graphics), target, optional :: j_graphics
    character(len=*), intent(in) :: j_string
    integer(4), value :: j_offset
    integer(4), value :: j_length
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: j_width
    class(JObject), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => j_graphics%jm_getFont_0()
        j_width = (shifta(jtemp2%jm_substringWidth_3(j_string, j_offset, j_length), iand(1, 31)))
        continue ! try
            call j_graphics%jm_drawSubstring_6(j_string, j_offset, j_length, (j_x - j_width), j_y, this%f_anchor)
  end subroutine

  recursive subroutine DrawStringUtil_jm_drawCenterStrings_6(this, j_graphics, j_stringArray, j_maxWidth, j_charHeight, j_x, j_y)
    class(DrawStringUtil), target :: this
    class(Graphics), target, optional :: j_graphics
    type(JString) :: j_stringArray(:)
    integer(4), value :: j_maxWidth
    integer(4), value :: j_charHeight
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
    class(JObject), pointer :: jtemp10
    integer(4) :: jtemp11
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
                jtemp10 => j_graphics%jm_getFont_0()
                j_width = jtemp10%jm_stringWidth_1(j_string)
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
                    jtemp11 = j_extraLines
                    j_extraLines = j_extraLines + 1
                    call this%jm_drawCenterString_6(j_graphics, j_string, j_offset, j_currentLength, j_x, (j_y + ((((j_index + jtemp11)) * j_charHeight))))
                    j_offset = (j_offset + j_currentLength)
                    j_currentLength = j_linePortion
                end do
                j_extraLines = j_extraLines - 1
            end if
            j_index = j_index + 1
        end do
  end subroutine
end module DrawStringUtil_m

