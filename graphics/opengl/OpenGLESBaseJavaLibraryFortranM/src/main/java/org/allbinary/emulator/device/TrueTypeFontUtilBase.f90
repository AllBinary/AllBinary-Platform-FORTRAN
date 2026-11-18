! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.emulator.device
module TrueTypeFontUtilBase_m
  use JR_m
  use AvianUtil_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: TrueTypeFontUtilBase
    character(len=:), allocatable :: f_shortPattern
    integer(4), allocatable :: f_patternAsBytes(:)
    character(len=:), allocatable :: f_pattern
    integer(4), allocatable :: f_charArray(:)
    integer(4), allocatable :: f__characterWidth(:)
    integer(4), allocatable :: f_characterArray(:)
    integer(4) :: f_size = 0
    integer(4) :: f_lastCapIndex = 0
    class(Font), pointer :: f_currentFont => null()
    integer(4) :: f_scale = 0
    integer(4) :: f_CELLS_PER_ROW = 0
    integer(4) :: f_fontSize = 0
    integer(4) :: f_baseCharWidth = 0
    integer(4) :: f_cellSize = 0
    integer(4) :: f_textureSize = 0
    integer(4) :: f_actualCellsPerRow = 0
  contains
    procedure :: jm_getAsTextureSize_1 => TrueTypeFontUtilBase_jm_getAsTextureSize_1
    procedure :: jm_getCellSize_1 => TrueTypeFontUtilBase_jm_getCellSize_1
    procedure :: jm_getYOffset_0 => TrueTypeFontUtilBase_jm_getYOffset_0
  end type


contains

  function TrueTypeFontUtilBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TrueTypeFontUtilBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TrueTypeFontUtilBase)
      jresult => object
    end select
  end function

  recursive function TrueTypeFontUtilBase_jnew_1(j_scale) result(this)
    integer(4), value :: j_scale
    class(TrueTypeFontUtilBase), pointer :: this
    character(len=:), allocatable :: j_shortPattern
    integer(4), allocatable :: j_shortPatterAsByteArray(:)
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'TrueTypeFontUtilBase'
    this%f_shortPattern = ''
    this%f_pattern = ''
    
    this%f_patternAsBytes = [integer(4) :: 32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 32, 32, 32, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 32, 32, 32, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 32, 32, 32, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 32, 32, 32, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 32, 32, 32, 33, 36, 37, 96, JR_i8((-62)), JR_i8((-84)), JR_i8((-62)), JR_i8((-84)), 34, JR_i8((-62)), JR_i8((-93)), JR_i8((-62)), JR_i8((-93)), 94, 38, 42, 40, 32, 32, 32, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 32, 32, 32, 64, 126, 44, 47, 60, 62, 92, 124, JR_i8((-62)), JR_i8((-82)), JR_i8((-62)), JR_i8((-82)), JR_i8((-62)), JR_i8((-87)), JR_i8((-62)), JR_i8((-87))]
    this%f_pattern = this%f_patternAsBytes
    this%f_charArray = [integer(4) :: int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'6f', 4), int(z'50', 4), int(z'56', 4), int(z'6b', 4), int(z'51', 4), int(z'52', 4), int(z'5a', 4), int(z'6a', 4), int(z'5c', 4), int(z'60', 4), int(z'5b', 4), int(z'62', 4), int(z'72', 4), int(z'63', 4), int(z'4b', 4), int(z'73', 4), int(z'1', 4), int(z'2', 4), int(z'3', 4), int(z'4', 4), int(z'5', 4), int(z'6', 4), int(z'7', 4), int(z'8', 4), int(z'9', 4), int(z'a', 4), int(z'6c', 4), int(z'69', 4), int(z'74', 4), int(z'64', 4), int(z'75', 4), int(z'4c', 4), int(z'70', 4), int(z'b', 4), int(z'c', 4), int(z'10', 4), int(z'11', 4), int(z'12', 4), int(z'13', 4), int(z'14', 4), int(z'15', 4), int(z'16', 4), int(z'17', 4), int(z'18', 4), int(z'19', 4), int(z'1a', 4), int(z'1b', 4), int(z'1c', 4), int(z'20', 4), int(z'21', 4), int(z'22', 4), int(z'23', 4), int(z'24', 4), int(z'25', 4), int(z'26', 4), int(z'27', 4), int(z'28', 4), int(z'29', 4), int(z'2a', 4), int(z'65', 4), int(z'76', 4), int(z'66', 4), int(z'59', 4), int(z'61', 4), int(z'53', 4), int(z'2b', 4), int(z'2c', 4), int(z'30', 4), int(z'31', 4), int(z'32', 4), int(z'33', 4), int(z'34', 4), int(z'35', 4), int(z'36', 4), int(z'37', 4), int(z'38', 4), int(z'39', 4), int(z'3a', 4), int(z'3b', 4), int(z'3c', 4), int(z'40', 4), int(z'41', 4), int(z'42', 4), int(z'43', 4), int(z'44', 4), int(z'45', 4), int(z'46', 4), int(z'47', 4), int(z'48', 4), int(z'49', 4), int(z'4a', 4), int(z'67', 4), int(z'77', 4), int(z'68', 4), int(z'71', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'58', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'7b', 4), int(z'0', 4), int(z'0', 4), int(z'55', 4), int(z'0', 4), int(z'79', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4), int(z'0', 4)]
    this%f__characterWidth = JR_newIntArray(len(this%f_pattern))
    this%f_characterArray = JR_newIntArray(1)
    this%f_size = len(this%f_pattern)
    this%f_lastCapIndex = JR_indexOf(this%f_pattern, iachar('Z'))
    this%f_currentFont => Font_jm_getDefaultFont_0()
    
    
    
    
    
    
    
        jtemp1 => StringUtil_jm_getInstance_0()
        j_shortPattern = jtemp1%f_EMPTY_STRING
        if (AvianUtil_jm_isAvian_0()) then
            j_shortPatterAsByteArray = [integer(4) :: 32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 33, 36, 37, 96, JR_i8((-62)), JR_i8((-84)), JR_i8((-62)), JR_i8((-84)), 34, JR_i8((-62)), JR_i8((-93)), JR_i8((-62)), JR_i8((-93)), 94, 38, 42, 40, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 64, 126, 44, 47, 60, 62, 92, 124, JR_i8((-62)), JR_i8((-82)), JR_i8((-62)), JR_i8((-82)), JR_i8((-62)), JR_i8((-87)), JR_i8((-62)), JR_i8((-87))]
            j_shortPattern = j_shortPatterAsByteArray
        else
            j_shortPatterAsByteArray = [integer(4) :: 32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 33, 36, 37, 96, JR_i8((-62)), JR_i8((-84)), 34, JR_i8((-62)), JR_i8((-93)), 94, 38, 42, 40, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 64, 126, 44, 47, 60, 62, 92, 124, JR_i8((-62)), JR_i8((-82)), JR_i8((-62)), JR_i8((-87))]
            j_shortPattern = j_shortPatterAsByteArray
        end if
        this%f_shortPattern = j_shortPattern
        this%f_scale = j_scale
        this%f_CELLS_PER_ROW = 16
        this%f_fontSize = (((20 + 6)) * this%f_scale)
        this%f_baseCharWidth = (this%f_fontSize + ((6 * this%f_scale)))
        this%f_cellSize = (this%f_fontSize + ((6 * this%f_scale)))
        this%f_textureSize = this%jm_getAsTextureSize_1((this%f_CELLS_PER_ROW * this%f_cellSize))
        this%f_actualCellsPerRow = (this%f_textureSize / this%f_cellSize)
  end function

  recursive function TrueTypeFontUtilBase_jm_getAsTextureSize_1(this, j_textureSize) result(jresult)
    class(TrueTypeFontUtilBase), target :: this
    integer(4), value :: j_textureSize
    integer(4) :: jresult
        if ((j_textureSize <= 64)) then
            j_textureSize = 64
        else if ((j_textureSize <= 128)) then
            j_textureSize = 128
        else if ((j_textureSize <= 256)) then
            j_textureSize = 256
        else if ((j_textureSize <= 512)) then
            j_textureSize = 512
        else if ((j_textureSize <= 1024)) then
            j_textureSize = 1024
        end if
        jresult = j_textureSize
        return
  end function

  recursive function TrueTypeFontUtilBase_jm_getCellSize_1(this, j_cellSize) result(jresult)
    class(TrueTypeFontUtilBase), target :: this
    integer(4), value :: j_cellSize
    integer(4) :: jresult
        if ((j_cellSize <= 16)) then
            j_cellSize = 16
        else if ((j_cellSize <= 32)) then
            j_cellSize = 32
        else if ((j_cellSize <= 64)) then
            j_cellSize = 64
        else if ((j_cellSize <= 128)) then
            j_cellSize = 128
        else if ((j_cellSize <= 256)) then
            j_cellSize = 256
        end if
        jresult = j_cellSize
        return
  end function

  recursive function TrueTypeFontUtilBase_jm_getYOffset_0(this) result(jresult)
    class(TrueTypeFontUtilBase), target :: this
    integer(4) :: jresult
        jresult = ((((this%f_scale - 1)) * this%f_cellSize))
        return
  end function
end module TrueTypeFontUtilBase_m

