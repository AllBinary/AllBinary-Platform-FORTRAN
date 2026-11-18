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
! package org.allbinary.layer
module LayerManagerLogging_m
  use JR_m
  use TsUtil_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonSeps_m
  use Integer_m
  use LayerManagerLoggingBase_m
  use AllBinaryLayer_m
  use ABLayerManager_m
  implicit none

  type, extends(LayerManagerLoggingBase) :: LayerManagerLogging
    class(LogUtil), pointer :: f_logUtil => null()
    class(StringMaker), pointer :: f_stringBuilder => null()
    character(len=:), allocatable :: f_APPEND
    character(len=:), allocatable :: f_APPEND_
    character(len=:), allocatable :: f__AT_
    character(len=:), allocatable :: f_ATTEMPT_REMOVE_
    character(len=:), allocatable :: f_REMOVE_
    character(len=:), allocatable :: f_REMOVE
    character(len=:), allocatable :: f_DID_NOT_REMOVE
    character(len=:), allocatable :: f_CLEAR
  contains
    procedure :: jm_append_1 => LayerManagerLogging_jm_append_1
    procedure :: jm_appendAt_2 => LayerManagerLogging_jm_appendAt_2
    procedure :: jm_remove_1 => LayerManagerLogging_jm_remove_1
    procedure :: jm_removeResult_3 => LayerManagerLogging_jm_removeResult_3
    procedure :: jm_log_1 => LayerManagerLogging_jm_log_1
    procedure :: jm_clear_0 => LayerManagerLogging_jm_clear_0
  end type

  class(LayerManagerLogging), pointer, save :: LayerManagerLogging_jcell_instance => null()
  logical, save :: LayerManagerLogging_jset_instance = .false.
  logical, save :: LayerManagerLogging_jcell_removeFailed
  logical, save :: LayerManagerLogging_jset_removeFailed = .false.

contains

  function LayerManagerLogging_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerManagerLogging), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerManagerLogging)
      jresult => object
    end select
  end function

  function LayerManagerLogging_jstatic_instance() result(jresult)
    class(LayerManagerLogging), pointer :: jresult
    if (.not. LayerManagerLogging_jset_instance) then
      LayerManagerLogging_jset_instance = .true.
      LayerManagerLogging_jcell_instance => LayerManagerLogging_jnew_0()
    end if
    jresult => LayerManagerLogging_jcell_instance
  end function

  subroutine LayerManagerLogging_jsetstatic_instance(jvalue)
    class(LayerManagerLogging), target, optional :: jvalue
    LayerManagerLogging_jset_instance = .true.
    if (present(jvalue)) then
      LayerManagerLogging_jcell_instance => jvalue
    else
      LayerManagerLogging_jcell_instance => null()
    end if
  end subroutine

  function LayerManagerLogging_jstatic_removeFailed() result(jresult)
    logical :: jresult
    if (.not. LayerManagerLogging_jset_removeFailed) then
      LayerManagerLogging_jset_removeFailed = .true.
      LayerManagerLogging_jcell_removeFailed = .false.
    end if
    jresult = LayerManagerLogging_jcell_removeFailed
  end function

  subroutine LayerManagerLogging_jsetstatic_removeFailed(jvalue)
    logical, value :: jvalue
    LayerManagerLogging_jset_removeFailed = .true.
    LayerManagerLogging_jcell_removeFailed = jvalue
  end subroutine

  function LayerManagerLogging_jnew_0() result(this)
    class(LayerManagerLogging), pointer :: this
    allocate(this)
    this%jclass = 'LayerManagerLogging'
    this%f_APPEND = ''
    this%f_APPEND_ = ''
    this%f__AT_ = ''
    this%f_ATTEMPT_REMOVE_ = ''
    this%f_REMOVE_ = ''
    this%f_REMOVE = ''
    this%f_DID_NOT_REMOVE = ''
    this%f_CLEAR = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_stringBuilder => StringMaker_jnew_0()
    this%f_APPEND = 'append'
    this%f_APPEND_ = ' append: '
    this%f__AT_ = ' at: '
    this%f_ATTEMPT_REMOVE_ = ' Remove Attempt: '
    this%f_REMOVE_ = ' Remove: '
    this%f_REMOVE = 'remove'
    this%f_DID_NOT_REMOVE = ' Did not remove: '
    this%f_CLEAR = ' Clear List'
  end function

  recursive function LayerManagerLogging_jm_getInstance_0() result(jresult)
    class(LayerManagerLogging), pointer :: jresult
        jresult => LayerManagerLogging_jstatic_instance()
        return
  end function

  recursive subroutine LayerManagerLogging_jm_append_1(this, j_layerInterface)
    class(LayerManagerLogging), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(TsUtil), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%f_stringBuilder%jm_delete_2(0, this%f_stringBuilder%jm_length_0())
        jtemp4 => TsUtil_jm_getInstance_0()
        jtemp3 => this%f_stringBuilder%jm_appendint_1(jtemp4%jm_hashCode_1(this))
        jtemp2 => jtemp3%jm_append_1(this%f_APPEND_)
        jtemp1 => jtemp2%jm_append_1(j_layerInterface%jm_getName_0())
        call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, this%f_APPEND)
  end subroutine

  recursive subroutine LayerManagerLogging_jm_appendAt_2(this, j_layerInterface, j_index)
    class(LayerManagerLogging), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_index
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(TsUtil), pointer :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%f_stringBuilder%jm_delete_2(0, this%f_stringBuilder%jm_length_0())
        jtemp10 => TsUtil_jm_getInstance_0()
        jtemp9 => this%f_stringBuilder%jm_appendint_1(jtemp10%jm_hashCode_1(this))
        jtemp8 => jtemp9%jm_append_1(this%f_APPEND_)
        jtemp7 => jtemp8%jm_append_1(j_layerInterface%jm_getName_0())
        jtemp6 => jtemp7%jm_append_1(this%f__AT_)
        jtemp5 => jtemp6%jm_appendint_1(j_index)
        call this%f_logUtil%jm_putF_3(jtemp5%jm_toString_0(), this, this%f_APPEND)
  end subroutine

  recursive subroutine LayerManagerLogging_jm_remove_1(this, j_layerInterface)
    class(LayerManagerLogging), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(TsUtil), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(StringMaker), pointer :: jtemp17
    class(TsUtil), pointer :: jtemp18
    class(StringUtil), pointer :: jtemp19
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. present(j_layerInterface))) then
            jdiscardRef => this%f_stringBuilder%jm_delete_2(0, this%f_stringBuilder%jm_length_0())
            jtemp18 => TsUtil_jm_getInstance_0()
            jtemp19 => StringUtil_jm_getInstance_0()
            jtemp17 => this%f_stringBuilder%jm_appendint_1(jtemp18%jm_hashCode_1(this))
            jtemp16 => jtemp17%jm_append_1(this%f_ATTEMPT_REMOVE_)
            jtemp15 => jtemp16%jm_append_1(jtemp19%jm_toString_1(j_layerInterface))
            call this%f_logUtil%jm_putF_3(jtemp15%jm_toString_0(), this, this%f_REMOVE)
        else
            jdiscardRef => this%f_stringBuilder%jm_delete_2(0, this%f_stringBuilder%jm_length_0())
            jtemp14 => TsUtil_jm_getInstance_0()
            jtemp13 => this%f_stringBuilder%jm_appendint_1(jtemp14%jm_hashCode_1(this))
            jtemp12 => jtemp13%jm_append_1(this%f_ATTEMPT_REMOVE_)
            jtemp11 => jtemp12%jm_append_1(j_layerInterface%jm_getName_0())
            call this%f_logUtil%jm_putF_3(jtemp11%jm_toString_0(), this, this%f_REMOVE)
        end if
  end subroutine

  recursive subroutine LayerManagerLogging_jm_removeResult_3(this, j_layerManager, j_layerInterface, j_result)
    class(LayerManagerLogging), target :: this
    class(ABLayerManager), target, optional :: j_layerManager
    class(AllBinaryLayer), target, optional :: j_layerInterface
    logical, value :: j_result
    class(StringMaker), pointer :: jtemp20
    class(StringMaker), pointer :: jtemp21
    class(StringMaker), pointer :: jtemp22
    class(TsUtil), pointer :: jtemp23
    class(StringMaker), pointer :: jtemp24
    class(StringMaker), pointer :: jtemp25
    class(StringMaker), pointer :: jtemp26
    class(TsUtil), pointer :: jtemp27
    class(StringMaker), pointer :: jtemp28
    class(StringMaker), pointer :: jtemp29
    class(StringMaker), pointer :: jtemp30
    class(TsUtil), pointer :: jtemp31
    class(StringUtil), pointer :: jtemp32
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. present(j_layerInterface))) then
            jdiscardRef => this%f_stringBuilder%jm_delete_2(0, this%f_stringBuilder%jm_length_0())
            jtemp31 => TsUtil_jm_getInstance_0()
            jtemp32 => StringUtil_jm_getInstance_0()
            jtemp30 => this%f_stringBuilder%jm_appendint_1(jtemp31%jm_hashCode_1(this))
            jtemp29 => jtemp30%jm_append_1(this%f_REMOVE_)
            jtemp28 => jtemp29%jm_append_1(jtemp32%jm_toString_1(j_layerInterface))
            call this%f_logUtil%jm_putF_3(jtemp28%jm_toString_0(), this, this%f_REMOVE)
        else if (j_result) then
            if (LayerManagerLogging_jstatic_removeFailed()) then
                jdiscardRef => this%f_stringBuilder%jm_delete_2(0, this%f_stringBuilder%jm_length_0())
                jtemp27 => TsUtil_jm_getInstance_0()
                jtemp26 => this%f_stringBuilder%jm_appendint_1(jtemp27%jm_hashCode_1(this))
                jtemp25 => jtemp26%jm_append_1(this%f_REMOVE_)
                jtemp24 => jtemp25%jm_append_1(j_layerInterface%jm_getName_0())
                call this%f_logUtil%jm_putF_3(jtemp24%jm_toString_0(), this, this%f_REMOVE)
            end if
        else
            jdiscardRef => this%f_stringBuilder%jm_delete_2(0, this%f_stringBuilder%jm_length_0())
            jtemp23 => TsUtil_jm_getInstance_0()
            jtemp22 => this%f_stringBuilder%jm_appendint_1(jtemp23%jm_hashCode_1(this))
            jtemp21 => jtemp22%jm_append_1(this%f_DID_NOT_REMOVE)
            jtemp20 => jtemp21%jm_append_1(j_layerInterface%jm_getName_0())
            call this%f_logUtil%jm_putF_3(jtemp20%jm_toString_0(), this, this%f_REMOVE)
            call LayerManagerLogging_jsetstatic_removeFailed(.true.)
        end if
  end subroutine

  recursive subroutine LayerManagerLogging_jm_log_1(this, j_layerManager)
    class(LayerManagerLogging), target :: this
    class(ABLayerManager), target, optional :: j_layerManager
    integer(4) :: j_size
    class(CommonSeps), pointer :: j_commonSeps
    class(AllBinaryLayer), pointer :: j_allBinaryLayer
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp33
    class(TsUtil), pointer :: jtemp34
    class(StringMaker), pointer :: jtemp35
    class(StringMaker), pointer :: jtemp36
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%f_stringBuilder%jm_delete_2(0, this%f_stringBuilder%jm_length_0())
        j_size = j_layerManager%jm_getSize_0()
        j_commonSeps => CommonSeps_jm_getInstance_0()
        jtemp34 => TsUtil_jm_getInstance_0()
        jtemp33 => this%f_stringBuilder%jm_append_1(Integer_jm_toHexString_1(jtemp34%jm_hashCode_1(j_layerManager)))
        jdiscardRef => jtemp33%jm_append_1(j_commonSeps%f_COLON_SEP)
        jtemp35 => this%f_stringBuilder%jm_appendint_1(j_size)
        jdiscardRef => jtemp35%jm_append_1(j_commonSeps%f_COLON_SEP)
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_allBinaryLayer => AllBinaryLayer_jcast(j_layerManager%jm_getLayerAt_1(j_index))
            jtemp36 => this%f_stringBuilder%jm_append_1(j_allBinaryLayer%jm_getName_0())
            jdiscardRef => jtemp36%jm_append_1(j_commonSeps%f_COMMA)
            j_index = j_index + 1
        end do
        call this%f_logUtil%jm_putF_3(this%f_stringBuilder%jm_toString_0(), this, this%f_REMOVE)
  end subroutine

  recursive subroutine LayerManagerLogging_jm_clear_0(this)
    class(LayerManagerLogging), target :: this
    class(StringMaker), pointer :: jtemp37
    class(StringMaker), pointer :: jtemp38
    class(TsUtil), pointer :: jtemp39
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%f_stringBuilder%jm_delete_2(0, this%f_stringBuilder%jm_length_0())
        jtemp39 => TsUtil_jm_getInstance_0()
        jtemp38 => this%f_stringBuilder%jm_appendint_1(jtemp39%jm_hashCode_1(this))
        jtemp37 => jtemp38%jm_append_1(this%f_CLEAR)
        call this%f_logUtil%jm_putF_3(jtemp37%jm_toString_0(), this, this%f_CLEAR)
  end subroutine
end module LayerManagerLogging_m

function LayerManagerLogging_jnew_0_jext() result(this)
  use LayerManagerLogging_m, only: JObject, LayerManagerLogging_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => LayerManagerLogging_jnew_0()
end function

