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
! package org.allbinary.string
module CommonSeps_m
  use JR_m
  use StringMaker_m
  implicit none

  type, extends(JObject) :: CommonSeps
    character(len=:), allocatable :: f_NEW_LINE
    character(len=:), allocatable :: f_SEMICOLON
    character(len=:), allocatable :: f_EQUALS
    character(len=:), allocatable :: f_SPACE
    character(len=:), allocatable :: f_COMMA
    character(len=:), allocatable :: f_COLON
    character(len=:), allocatable :: f_PERIOD
    character(len=:), allocatable :: f_UNDERSCORE
    character(len=:), allocatable :: f_COLON_SEP
    character(len=:), allocatable :: f_COMMA_SEP
    character(len=:), allocatable :: f_PARENTHESIS_OPEN
    character(len=:), allocatable :: f_PARENTHESIS_CLOSE
    character(len=:), allocatable :: f_BRACE_OPEN
    character(len=:), allocatable :: f_BRACE_CLOSE
    character(len=:), allocatable :: f_BRACKET_OPEN
    character(len=:), allocatable :: f_BRACKET_CLOSE
    character(len=:), allocatable :: f_DASH
    character(len=:), allocatable :: f_PERCENT
    character(len=:), allocatable :: f_AMPERSAND
    character(len=:), allocatable :: f_FORWARD_SLASH
    character(len=:), allocatable :: f_BACK_SLASH
    character(len=:), allocatable :: f_QUESTION
    character(len=:), allocatable :: f_QUOTE
    character(len=:), allocatable :: f_QUOTE_END
    character(len=:), allocatable :: f_COMMENT
    character(len=:), allocatable :: f_INDENT
  end type

  class(CommonSeps), pointer, save :: CommonSeps_jcell_instance => null()
  logical, save :: CommonSeps_jset_instance = .false.

contains

  function CommonSeps_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommonSeps), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommonSeps)
      jresult => object
    end select
  end function

  function CommonSeps_jstatic_instance() result(jresult)
    class(CommonSeps), pointer :: jresult
    if (.not. CommonSeps_jset_instance) then
      CommonSeps_jset_instance = .true.
      CommonSeps_jcell_instance => CommonSeps_jnew_0()
    end if
    jresult => CommonSeps_jcell_instance
  end function

  subroutine CommonSeps_jsetstatic_instance(jvalue)
    class(CommonSeps), target, optional :: jvalue
    CommonSeps_jset_instance = .true.
    if (present(jvalue)) then
      CommonSeps_jcell_instance => jvalue
    else
      CommonSeps_jcell_instance => null()
    end if
  end subroutine

  function CommonSeps_jnew_0() result(this)
    class(CommonSeps), pointer :: this
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    allocate(this)
    this%jclass = 'CommonSeps'
    this%f_NEW_LINE = ''
    this%f_SEMICOLON = ''
    this%f_EQUALS = ''
    this%f_SPACE = ''
    this%f_COMMA = ''
    this%f_COLON = ''
    this%f_PERIOD = ''
    this%f_UNDERSCORE = ''
    this%f_COLON_SEP = ''
    this%f_COMMA_SEP = ''
    this%f_PARENTHESIS_OPEN = ''
    this%f_PARENTHESIS_CLOSE = ''
    this%f_BRACE_OPEN = ''
    this%f_BRACE_CLOSE = ''
    this%f_BRACKET_OPEN = ''
    this%f_BRACKET_CLOSE = ''
    this%f_DASH = ''
    this%f_PERCENT = ''
    this%f_AMPERSAND = ''
    this%f_FORWARD_SLASH = ''
    this%f_BACK_SLASH = ''
    this%f_QUESTION = ''
    this%f_QUOTE = ''
    this%f_QUOTE_END = ''
    this%f_COMMENT = ''
    this%f_INDENT = ''
    this%f_NEW_LINE = JR_unescape('\n')
    this%f_SEMICOLON = ';'
    this%f_EQUALS = '='
    this%f_SPACE = ' '
    this%f_COMMA = ','
    this%f_COLON = ':'
    this%f_PERIOD = '.'
    this%f_UNDERSCORE = '_'
    jtemp3 => StringMaker_jnew_0()
    jtemp2 => jtemp3%jm_append_1(this%f_COLON)
    jtemp1 => jtemp2%jm_append_1(this%f_SPACE)
    this%f_COLON_SEP = jtemp1%jm_toString_0()
    jtemp6 => StringMaker_jnew_0()
    jtemp5 => jtemp6%jm_append_1(this%f_COMMA)
    jtemp4 => jtemp5%jm_append_1(this%f_SPACE)
    this%f_COMMA_SEP = jtemp4%jm_toString_0()
    this%f_PARENTHESIS_OPEN = '('
    this%f_PARENTHESIS_CLOSE = ')'
    this%f_BRACE_OPEN = '{'
    this%f_BRACE_CLOSE = '}'
    this%f_BRACKET_OPEN = '['
    this%f_BRACKET_CLOSE = ']'
    this%f_DASH = '-'
    this%f_PERCENT = '%'
    this%f_AMPERSAND = '&'
    this%f_FORWARD_SLASH = '/'
    this%f_BACK_SLASH = JR_unescape('\\')
    this%f_QUESTION = '?'
    this%f_QUOTE = JR_unescape('\"')
    this%f_QUOTE_END = JR_unescape('\",')
    this%f_COMMENT = '//'
    this%f_INDENT = '    '
  end function

  recursive function CommonSeps_jm_getInstance_0() result(jresult)
    class(CommonSeps), pointer :: jresult
        jresult => CommonSeps_jstatic_instance()
        return
  end function
end module CommonSeps_m

