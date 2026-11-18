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
! package org.allbinary.logic.io
module StreamUtil_m
  use JR_m
  use ByteArrayOutputStream_m
  use Closeable_m
  use InputStream_m
  use OutputStream_m
  use LogUtil_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: StreamUtil
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_get_3 => StreamUtil_jm_get_3
    procedure :: jm_getByteArray_3 => StreamUtil_jm_getByteArray_3
    procedure :: jm_close_1 => StreamUtil_jm_close_1
  end type

  class(StreamUtil), pointer, save :: StreamUtil_jcell_instance => null()
  logical, save :: StreamUtil_jset_instance = .false.

contains

  function StreamUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StreamUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StreamUtil)
      jresult => object
    end select
  end function

  function StreamUtil_jstatic_instance() result(jresult)
    class(StreamUtil), pointer :: jresult
    if (.not. StreamUtil_jset_instance) then
      StreamUtil_jset_instance = .true.
      StreamUtil_jcell_instance => StreamUtil_jnew_0()
    end if
    jresult => StreamUtil_jcell_instance
  end function

  subroutine StreamUtil_jsetstatic_instance(jvalue)
    class(StreamUtil), target, optional :: jvalue
    StreamUtil_jset_instance = .true.
    if (present(jvalue)) then
      StreamUtil_jcell_instance => jvalue
    else
      StreamUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function StreamUtil_jnew_0() result(this)
    class(StreamUtil), pointer :: this
    allocate(this)
    this%jclass = 'StreamUtil'
    this%f_logUtil => LogUtil_jm_getInstance_0()
        continue
  end function

  recursive function StreamUtil_jm_getInstance_0() result(jresult)
    class(StreamUtil), pointer :: jresult
        jresult => StreamUtil_jstatic_instance()
        return
  end function

  recursive function StreamUtil_jm_get_3(this, j_inputStream, j_outputStream, j_buffer) result(jresult)
    class(StreamUtil), target :: this
    class(InputStream), target, optional :: j_inputStream
    class(OutputStream), target, optional :: j_outputStream
    integer(4) :: j_buffer(:)
    class(OutputStream), pointer :: jresult
    integer(4) :: j_len
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_len = 0
        do while (.true.)
            j_len = j_inputStream%jm_read_3(j_buffer, 0, size(j_buffer, 1))
            if ((j_len /= (-1))) then
                continue
            else
                exit
            end if
            call j_outputStream%jm_write_3(j_buffer, 0, j_len)
        end do
        jresult => j_outputStream
        return
  end function

  recursive function StreamUtil_jm_getByteArray_3(this, j_inputStream, j_outputStream2, j_byteArray) result(jresult)
    class(StreamUtil), target :: this
    class(InputStream), target, optional :: j_inputStream
    class(ByteArrayOutputStream), target, optional :: j_outputStream2
    integer(4) :: j_byteArray(:)
    integer(4), allocatable :: jresult(:)
    class(ByteArrayOutputStream), pointer :: j_outputStream
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_outputStream => j_outputStream2
        continue ! try
            jdiscardRef => this%jm_get_3(j_inputStream, j_outputStream, j_byteArray)
            jresult = j_outputStream%jm_toByteArray_0()
            return
            jdiscardBoolean = this%jm_close_1(j_outputStream)
  end function

  recursive function StreamUtil_jm_close_1(this, j_closeable) result(jresult)
    class(StreamUtil), target :: this
    class(JObject), target, optional :: j_closeable
    logical :: jresult
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if (present(j_closeable)) then
                call j_closeable%jm_close_0()
            end if
            jresult = .true.
            return
  end function
end module StreamUtil_m

