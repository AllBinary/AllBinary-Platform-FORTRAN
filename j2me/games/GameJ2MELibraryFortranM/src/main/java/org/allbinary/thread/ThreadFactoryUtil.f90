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
! package org.allbinary.thread
module ThreadFactoryUtil_m
  use JR_m
  use J2MEUtil_m
  use RunnableCanvas_m
  use AllBinaryGameCanvas_m
  use DemoCanvas_m
  use GameCanvasRunnableInterface_m
  use RunnableCanvasSingleThreadStartRunnable_m
  use LogUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonStrings_m
  use Thread_m
  use ABRunnable_m
  use PrimaryThreadPool_m
  use ThreadPool_m
  implicit none

  type, extends(JObject) :: ThreadFactoryUtil
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_getInstanceGameCanvasRunnable_1 => ThreadFactoryUtil_jm_getInstanceGameCanvasRunnable_1
    procedure :: jm_getInstanceForRunnable_1 => ThreadFactoryUtil_jm_getInstanceForRunnable_1
    procedure :: jm_getInstanceType_2 => ThreadFactoryUtil_jm_getInstanceType_2
    procedure :: jm_start_1 => ThreadFactoryUtil_jm_start_1
  end type

  class(ThreadFactoryUtil), pointer, save :: ThreadFactoryUtil_jcell_instance => null()
  logical, save :: ThreadFactoryUtil_jset_instance = .false.

contains

  function ThreadFactoryUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ThreadFactoryUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ThreadFactoryUtil)
      jresult => object
    end select
  end function

  function ThreadFactoryUtil_jstatic_instance() result(jresult)
    class(ThreadFactoryUtil), pointer :: jresult
    if (.not. ThreadFactoryUtil_jset_instance) then
      ThreadFactoryUtil_jset_instance = .true.
      ThreadFactoryUtil_jcell_instance => ThreadFactoryUtil_jnew_0()
    end if
    jresult => ThreadFactoryUtil_jcell_instance
  end function

  subroutine ThreadFactoryUtil_jsetstatic_instance(jvalue)
    class(ThreadFactoryUtil), target, optional :: jvalue
    ThreadFactoryUtil_jset_instance = .true.
    if (present(jvalue)) then
      ThreadFactoryUtil_jcell_instance => jvalue
    else
      ThreadFactoryUtil_jcell_instance => null()
    end if
  end subroutine

  function ThreadFactoryUtil_jnew_0() result(this)
    class(ThreadFactoryUtil), pointer :: this
    allocate(this)
    this%jclass = 'ThreadFactoryUtil'
    this%f_logUtil => LogUtil_jm_getInstance_0()
  end function

  recursive function ThreadFactoryUtil_jm_getInstance_0() result(jresult)
    class(ThreadFactoryUtil), pointer :: jresult
        jresult => ThreadFactoryUtil_jstatic_instance()
        return
  end function

  recursive function ThreadFactoryUtil_jm_getInstanceGameCanvasRunnable_1(this, j_runnable) result(jresult)
    class(ThreadFactoryUtil), target :: this
    class(GameCanvasRunnableInterface), target, optional :: j_runnable
    class(Thread), pointer :: jresult
        jresult => this%jm_getInstanceType_2(j_runnable, j_runnable%jm_getType_0())
        return
  end function

  recursive function ThreadFactoryUtil_jm_getInstanceForRunnable_1(this, j_runnable) result(jresult)
    class(ThreadFactoryUtil), target :: this
    class(ABRunnable), target, optional :: j_runnable
    class(Thread), pointer :: jresult
        jresult => this%jm_getInstanceType_2(j_runnable, j_runnable%jm_getType_0())
        return
  end function

  recursive function ThreadFactoryUtil_jm_getInstanceType_2(this, j_runnable, j_type) result(jresult)
    class(ThreadFactoryUtil), target :: this
    class(JObject), target, optional :: j_runnable
    integer(4), value :: j_type
    class(Thread), pointer :: jresult
    class(CommonStrings), pointer :: j_commonStrings
    class(ThreadPool), pointer :: j_primaryThreadPool
    class(RunnableCanvasSingleThreadStartRunnable), pointer :: j_demoGameSingleThreadStartRunnable
    class(Thread), pointer :: j_thread
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringUtil), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringUtil), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        if (J2MEUtil_jm_isHTML_0()) then
            if (((j_type == DemoCanvas_jstatic_TYPE()) .or. (j_type == AllBinaryGameCanvas_jstatic_TYPE()))) then
                j_demoGameSingleThreadStartRunnable => RunnableCanvasSingleThreadStartRunnable_jnew_1(RunnableCanvas_jcast(j_runnable))
                jtemp8 => StringUtil_jm_getInstance_0()
                jtemp7 => StringMaker_jnew_0()
                jtemp6 => jtemp7%jm_append_1('Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ')
                jtemp5 => jtemp6%jm_append_1(jtemp8%jm_toString_1(j_runnable))
                call PreLogUtil_jm_put_3(jtemp5%jm_toString_0(), this, j_commonStrings%f_CONSTRUCTOR)
                j_primaryThreadPool => PrimaryThreadPool_jm_getInstance_0()
                call j_primaryThreadPool%jm_runTask_1(j_demoGameSingleThreadStartRunnable)
            else
                jtemp4 => StringUtil_jm_getInstance_0()
                jtemp3 => StringMaker_jnew_0()
                jtemp2 => jtemp3%jm_append_1('Using Pseudo Thread for Runnable under PlayN/HTML5: ')
                jtemp1 => jtemp2%jm_append_1(jtemp4%jm_toString_1(j_runnable))
                call PreLogUtil_jm_put_3(jtemp1%jm_toString_0(), this, j_commonStrings%f_CONSTRUCTOR)
                j_primaryThreadPool => PrimaryThreadPool_jm_getInstance_0()
                call j_primaryThreadPool%jm_runTask_1(j_runnable)
            end if
        end if
        j_thread => Thread_jnew_2(j_runnable, j_runnable%jm_toString_0())
        call this%f_logUtil%jm_putF_3(j_thread%jm_toString_0(), this, j_commonStrings%f_CONSTRUCTOR)
        jresult => j_thread
        return
  end function

  recursive subroutine ThreadFactoryUtil_jm_start_1(this, j_thread)
    class(ThreadFactoryUtil), target :: this
    class(Thread), target, optional :: j_thread
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_thread%jm_start_0()
  end subroutine
end module ThreadFactoryUtil_m

