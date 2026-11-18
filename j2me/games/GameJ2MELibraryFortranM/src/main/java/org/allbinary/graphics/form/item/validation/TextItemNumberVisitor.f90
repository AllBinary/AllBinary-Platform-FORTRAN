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
! package org.allbinary.graphics.form.item.validation
module TextItemNumberVisitor_m
  use JR_m
  use TextNotificationUtil_m
  use LogUtil_m
  use BooleanFactory_m
  use StringValidationUtil_m
  use Visitor_m
  use CommonStrings_m
  implicit none

  type, extends(Visitor) :: TextItemNumberVisitor
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_visit_1 => TextItemNumberVisitor_jm_visit_1
  end type


contains

  function TextItemNumberVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TextItemNumberVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TextItemNumberVisitor)
      jresult => object
    end select
  end function

  recursive function TextItemNumberVisitor_jnew_0() result(this)
    class(TextItemNumberVisitor), pointer :: this
    allocate(this)
    this%jclass = 'TextItemNumberVisitor'
    this%f_logUtil => LogUtil_jm_getInstance_0()
        continue
  end function

  recursive function TextItemNumberVisitor_jm_visit_1(this, j_anyType) result(jresult)
    class(TextItemNumberVisitor), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jresult
    character(len=:), allocatable :: j_value
    class(StringValidationUtil), pointer :: j_stringValidationUtil
    class(CommonStrings), pointer :: j_commonStrings
    class(BooleanFactory), pointer :: jtemp1
    class(TextNotificationUtil), pointer :: jtemp2
    class(BooleanFactory), pointer :: jtemp3
    class(BooleanFactory), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_value = j_anyType
        if ((len(j_value) < 2)) then
            j_stringValidationUtil => StringValidationUtil_jm_getInstance_0()
            if (j_stringValidationUtil%jm_isNumber_1(j_value)) then
                jtemp4 => BooleanFactory_jm_getInstance_0()
                jresult => jtemp4%f_TRUE
                return
            else
                continue ! try
                    jtemp2 => TextNotificationUtil_jm_getInstance_0()
                    call jtemp2%jm_fireError_1('Numbers Only')
                jtemp3 => BooleanFactory_jm_getInstance_0()
                jresult => jtemp3%f_FALSE
                return
            end if
        else
            jtemp1 => BooleanFactory_jm_getInstance_0()
            jresult => jtemp1%f_FALSE
            return
        end if
  end function
end module TextItemNumberVisitor_m

function TextItemNumberVisitor_jnew_0_jext() result(this)
  use TextItemNumberVisitor_m, only: JObject, TextItemNumberVisitor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TextItemNumberVisitor_jnew_0()
end function

