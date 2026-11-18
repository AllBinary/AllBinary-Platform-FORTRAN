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
! package org.allbinary.logic.io.file
module SimpleFileUtil_m
  use JR_m
  use ByteArrayOutputStream_m
  use InputStream_m
  use OutputStream_m
  use Reader_m
  use Writer_m
  use NullUtil_m
  use LogUtil_m
  use NullOutputStream_m
  use NullReader_m
  use NullWriter_m
  use StreamUtil_m
  use StringMaker_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: SimpleFileUtil
    class(LogUtil), pointer :: f_logUtil => null()
    class(Writer), pointer :: f_NULL_WRITER => null()
    class(Reader), pointer :: f_NULL_READER => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(NullUtil), pointer :: f_nullUtil => null()
    class(StreamUtil), pointer :: f_streamUtil => null()
  contains
    procedure :: jm_loadFileAsList_3 => SimpleFileUtil_jm_loadFileAsList_3
    procedure :: jm_loadFileAsListReturnLine_4 => SimpleFileUtil_jm_loadFileAsListReturnLine_4
    procedure :: jm_createStringFromArrayOfStrings_1 => SimpleFileUtil_jm_createStringFromArrayOfStrings_1
  end type

  class(SimpleFileUtil), pointer, save :: SimpleFileUtil_jcell_instance => null()
  logical, save :: SimpleFileUtil_jset_instance = .false.

contains

  function SimpleFileUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SimpleFileUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SimpleFileUtil)
      jresult => object
    end select
  end function

  function SimpleFileUtil_jstatic_instance() result(jresult)
    class(SimpleFileUtil), pointer :: jresult
    if (.not. SimpleFileUtil_jset_instance) then
      SimpleFileUtil_jset_instance = .true.
      SimpleFileUtil_jcell_instance => SimpleFileUtil_jnew_0()
    end if
    jresult => SimpleFileUtil_jcell_instance
  end function

  subroutine SimpleFileUtil_jsetstatic_instance(jvalue)
    class(SimpleFileUtil), target, optional :: jvalue
    SimpleFileUtil_jset_instance = .true.
    if (present(jvalue)) then
      SimpleFileUtil_jcell_instance => jvalue
    else
      SimpleFileUtil_jcell_instance => null()
    end if
  end subroutine

  function SimpleFileUtil_jnew_0() result(this)
    class(SimpleFileUtil), pointer :: this
    allocate(this)
    this%jclass = 'SimpleFileUtil'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_NULL_WRITER => SimpleFileUtil_jm_nullWriter_0()
    this%f_NULL_READER => SimpleFileUtil_jm_nullReader_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_nullUtil => NullUtil_jm_getInstance_0()
    this%f_streamUtil => StreamUtil_jm_getInstance_0()
  end function

  recursive function SimpleFileUtil_jm_getInstance_0() result(jresult)
    class(SimpleFileUtil), pointer :: jresult
        jresult => SimpleFileUtil_jstatic_instance()
        return
  end function

  recursive function SimpleFileUtil_jm_nullOutputStream_0() result(jresult)
    class(OutputStream), pointer :: jresult
        jresult => NullOutputStream_jstatic_NULL_OUTPUT_STREAM()
        return
  end function

  recursive function SimpleFileUtil_jm_nullWriter_0() result(jresult)
    class(Writer), pointer :: jresult
        jresult => NullWriter_jstatic_NULL_WRITER()
        return
  end function

  recursive function SimpleFileUtil_jm_nullReader_0() result(jresult)
    class(Reader), pointer :: jresult
        jresult => NullReader_jstatic_NULL_READER()
        return
  end function

  recursive function SimpleFileUtil_jm_loadFileAsList_3(this, j_inputStream, j_max, j_byteArray1) result(jresult)
    class(SimpleFileUtil), target :: this
    class(InputStream), target, optional :: j_inputStream
    integer(4), value :: j_max
    integer(4) :: j_byteArray1(:)
    class(BasicArrayList), pointer :: jresult
        jresult => this%jm_loadFileAsListReturnLine_4(j_inputStream, j_max, j_byteArray1, 0)
        return
  end function

  recursive function SimpleFileUtil_jm_loadFileAsListReturnLine_4(this, j_inputStream, j_max, j_byteArray1, j_includeReturnLine) result(jresult)
    class(SimpleFileUtil), target :: this
    class(InputStream), target, optional :: j_inputStream
    integer(4), value :: j_max
    integer(4) :: j_byteArray1(:)
    integer(4), value :: j_includeReturnLine
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_stringList
    integer(4), allocatable :: j_byteArray(:)
    class(ByteArrayOutputStream), pointer :: j_outputStream2
    integer(4) :: j_size
    integer(4) :: j_index
    integer(4) :: j_startIndex
    integer(4) :: j_returnLine
    character(len=:), allocatable :: j_s
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringList => BasicArrayListD_jnew_0()
        if ((.not. present(j_inputStream))) then
            jresult => j_stringList
            return
        end if
        j_byteArray = this%f_nullUtil%f_NULL_BYTE_ARRAY
        continue ! try
            j_outputStream2 => ByteArrayOutputStream_jnew_1(j_max)
            j_byteArray = this%f_streamUtil%jm_getByteArray_3(j_inputStream, j_outputStream2, j_byteArray1)
            jdiscardBoolean = this%f_streamUtil%jm_close_1(j_inputStream)
        if ((.not. allocated(j_byteArray))) then
            jresult => j_stringList
            return
        end if
        j_size = size(j_byteArray, 1)
        j_index = 0
        continue
        j_returnLine = 0
        do while ((j_index < j_size))
            j_startIndex = j_index
            do while (((j_index < (j_size - 1)) .and. (j_byteArray((j_index) + 1) /= JR_i8(10))))
                j_index = j_index + 1
            end do
            if ((j_includeReturnLine == 0)) then
                if (((j_index > 0) .and. (j_byteArray(((j_index - 1)) + 1) == JR_i8(13)))) then
                    j_returnLine = 1
                else
                    j_returnLine = 0
                end if
            end if
            j_s = JR_fromChars(j_byteArray, j_startIndex, ((((j_index + j_includeReturnLine) - j_returnLine) - j_startIndex)))
            jdiscardBoolean = j_stringList%jm_add_1(JR_boxString(j_s))
            j_index = j_index + 1
        end do
        jresult => j_stringList
        return
  end function

  recursive function SimpleFileUtil_jm_createStringFromArrayOfStrings_1(this, j_stringArray) result(jresult)
    class(SimpleFileUtil), target :: this
    type(JString) :: j_stringArray(:)
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringMaker
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringMaker => StringMaker_jnew_0()
        j_size = size(j_stringArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            jdiscardRef => j_stringMaker%jm_append_1(j_stringArray((j_index) + 1)%v)
            j_index = j_index + 1
        end do
        jresult = j_stringMaker%jm_toString_0()
        return
  end function
end module SimpleFileUtil_m

