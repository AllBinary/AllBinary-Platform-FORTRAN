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
module TextItemUserIdentifierVisitor_m
  use JR_m
  use TextNotificationUtil_m
  use LogUtil_m
  use BooleanFactory_m
  use StringValidationUtil_m
  use Visitor_m
  use CommonStrings_m
  implicit none

  type, extends(Visitor) :: TextItemUserIdentifierVisitor
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_visit_1 => TextItemUserIdentifierVisitor_jm_visit_1
    procedure :: jm_isLetter_1 => TextItemUserIdentifierVisitor_jm_isLetter_1
  end type


contains

  function TextItemUserIdentifierVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TextItemUserIdentifierVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TextItemUserIdentifierVisitor)
      jresult => object
    end select
  end function

  recursive function TextItemUserIdentifierVisitor_jnew_0() result(this)
    class(TextItemUserIdentifierVisitor), pointer :: this
    allocate(this)
    this%jclass = 'TextItemUserIdentifierVisitor'
    this%f_logUtil => LogUtil_jm_getInstance_0()
        continue
  end function

  recursive function TextItemUserIdentifierVisitor_jm_visit_1(this, j_anyType) result(jresult)
    class(TextItemUserIdentifierVisitor), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jresult
    character(len=:), allocatable :: j_value
    integer(4) :: j_charValue
    class(StringValidationUtil), pointer :: j_stringValidationUtil
    class(CommonStrings), pointer :: j_commonStrings
    class(BooleanFactory), pointer :: jtemp1
    class(TextNotificationUtil), pointer :: jtemp2
    class(BooleanFactory), pointer :: jtemp3
    class(BooleanFactory), pointer :: jtemp4
    class(BooleanFactory), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_value = j_anyType
        if ((len(j_value) < 2)) then
            j_charValue = JR_charAt(j_value, 0)
            j_stringValidationUtil => StringValidationUtil_jm_getInstance_0()
            if (j_stringValidationUtil%jm_isNumber_1(j_value)) then
                jtemp5 => BooleanFactory_jm_getInstance_0()
                jresult => jtemp5%f_TRUE
                return
            else if (this%jm_isLetter_1(j_charValue)) then
                jtemp4 => BooleanFactory_jm_getInstance_0()
                jresult => jtemp4%f_TRUE
                return
            else
                continue ! try
                    jtemp2 => TextNotificationUtil_jm_getInstance_0()
                    call jtemp2%jm_fireError_1('Only Letters & Numbers Allowed')
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

  recursive function TextItemUserIdentifierVisitor_jm_isLetter_1(this, j_charValue) result(jresult)
    class(TextItemUserIdentifierVisitor), target :: this
    integer(4), value :: j_charValue
    logical :: jresult
    integer(4) :: j_value
        j_value = j_charValue
        jresult = ((((j_value > 64) .and. (j_value < 91))) .or. (((j_value > 96) .and. (j_value < 123))))
        return
  end function
end module TextItemUserIdentifierVisitor_m

function TextItemUserIdentifierVisitor_jnew_0_jext() result(this)
  use TextItemUserIdentifierVisitor_m, only: JObject, TextItemUserIdentifierVisitor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TextItemUserIdentifierVisitor_jnew_0()
end function

