! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.animation.image
module AnimationFactoryInitializationVisitor_m
  use JR_m
  use StringMaker_m
  use PositionStrings_m
  use CommonLabels_m
  use CommonSeps_m
  implicit none

  type, extends(JObject) :: AnimationFactoryInitializationVisitor
    integer(4) :: f_width = 0
    integer(4) :: f_height = 0
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
    integer(4) :: f_originalDx = 0
    integer(4) :: f_originalDy = 0
  contains
    procedure :: jm_visit_0 => AnimationFactoryInitializationVisitor_jm_visit_0
    procedure :: jm_toString_0 => AnimationFactoryInitializationVisitor_jm_toString_0
  end type


contains

  function AnimationFactoryInitializationVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationFactoryInitializationVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationFactoryInitializationVisitor)
      jresult => object
    end select
  end function

  function AnimationFactoryInitializationVisitor_jnew_0() result(this)
    class(AnimationFactoryInitializationVisitor), pointer :: this
    allocate(this)
    this%jclass = 'AnimationFactoryInitializationVisitor'
    
    
    
    
    
    
  end function

  recursive subroutine AnimationFactoryInitializationVisitor_jm_visit_0(this)
    class(AnimationFactoryInitializationVisitor), target :: this
    continue
  end subroutine

  recursive function AnimationFactoryInitializationVisitor_jm_toString_0(this) result(jresult)
    class(AnimationFactoryInitializationVisitor), target :: this
    character(len=:), allocatable :: jresult
    class(CommonSeps), pointer :: j_commonSeps
    class(CommonLabels), pointer :: j_commonLabels
    class(StringMaker), pointer :: j_stringBuffer
    class(StringMaker), pointer :: jtemp1
    class(PositionStrings), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(PositionStrings), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonSeps => CommonSeps_jm_getInstance_0()
        j_commonLabels => CommonLabels_jm_getInstance_0()
        j_stringBuffer => StringMaker_jnew_0()
        jtemp2 => PositionStrings_jm_getInstance_0()
        jtemp1 => j_stringBuffer%jm_append_1(jtemp2%f_DX_LABEL)
        jdiscardRef => jtemp1%jm_appendfloat_1(real(this%f_dx, 4))
        jtemp4 => PositionStrings_jm_getInstance_0()
        jtemp3 => j_stringBuffer%jm_append_1(jtemp4%f_DY_LABEL)
        jdiscardRef => jtemp3%jm_appendfloat_1(real(this%f_dy, 4))
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonLabels%f_WIDTH_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_width)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonLabels%f_HEIGHT_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_height)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module AnimationFactoryInitializationVisitor_m

