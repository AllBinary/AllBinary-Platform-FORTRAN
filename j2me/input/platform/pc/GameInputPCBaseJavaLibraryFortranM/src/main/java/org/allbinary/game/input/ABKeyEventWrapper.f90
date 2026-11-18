! 
! AllBinary Open License Version 1 
! Copyright (c) 2026 AllBinary 
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
! package org.allbinary.game.input
module ABKeyEventWrapper_m
  use JR_m
  use KeyEvent_m
  implicit none

  type, extends(JObject) :: ABKeyEventWrapper
    integer(4) :: f_VK_ENTER = 0
    integer(4) :: f_VK_BACK_SPACE = 0
    integer(4) :: f_VK_TAB = 0
    integer(4) :: f_VK_CANCEL = 0
    integer(4) :: f_VK_CLEAR = 0
    integer(4) :: f_VK_SHIFT = 0
    integer(4) :: f_VK_CONTROL = 0
    integer(4) :: f_VK_ALT = 0
    integer(4) :: f_VK_PAUSE = 0
    integer(4) :: f_VK_CAPS_LOCK = 0
    integer(4) :: f_VK_ESCAPE = 0
    integer(4) :: f_VK_SPACE = 0
    integer(4) :: f_VK_PAGE_UP = 0
    integer(4) :: f_VK_PAGE_DOWN = 0
    integer(4) :: f_VK_END = 0
    integer(4) :: f_VK_HOME = 0
    integer(4) :: f_VK_LEFT = 0
    integer(4) :: f_VK_UP = 0
    integer(4) :: f_VK_RIGHT = 0
    integer(4) :: f_VK_DOWN = 0
    integer(4) :: f_VK_COMMA = 0
    integer(4) :: f_VK_MINUS = 0
    integer(4) :: f_VK_PERIOD = 0
    integer(4) :: f_VK_SLASH = 0
    integer(4) :: f_VK_0 = 0
    integer(4) :: f_VK_1 = 0
    integer(4) :: f_VK_2 = 0
    integer(4) :: f_VK_3 = 0
    integer(4) :: f_VK_4 = 0
    integer(4) :: f_VK_5 = 0
    integer(4) :: f_VK_6 = 0
    integer(4) :: f_VK_7 = 0
    integer(4) :: f_VK_8 = 0
    integer(4) :: f_VK_9 = 0
    integer(4) :: f_VK_SEMICOLON = 0
    integer(4) :: f_VK_EQUALS = 0
    integer(4) :: f_VK_A = 0
    integer(4) :: f_VK_B = 0
    integer(4) :: f_VK_C = 0
    integer(4) :: f_VK_D = 0
    integer(4) :: f_VK_E = 0
    integer(4) :: f_VK_F = 0
    integer(4) :: f_VK_G = 0
    integer(4) :: f_VK_H = 0
    integer(4) :: f_VK_I = 0
    integer(4) :: f_VK_J = 0
    integer(4) :: f_VK_K = 0
    integer(4) :: f_VK_L = 0
    integer(4) :: f_VK_M = 0
    integer(4) :: f_VK_N = 0
    integer(4) :: f_VK_O = 0
    integer(4) :: f_VK_P = 0
    integer(4) :: f_VK_Q = 0
    integer(4) :: f_VK_R = 0
    integer(4) :: f_VK_S = 0
    integer(4) :: f_VK_T = 0
    integer(4) :: f_VK_U = 0
    integer(4) :: f_VK_V = 0
    integer(4) :: f_VK_W = 0
    integer(4) :: f_VK_X = 0
    integer(4) :: f_VK_Y = 0
    integer(4) :: f_VK_Z = 0
    integer(4) :: f_VK_OPEN_BRACKET = 0
    integer(4) :: f_VK_BACK_SLASH = 0
    integer(4) :: f_VK_CLOSE_BRACKET = 0
    integer(4) :: f_VK_NUMPAD0 = 0
    integer(4) :: f_VK_NUMPAD1 = 0
    integer(4) :: f_VK_NUMPAD2 = 0
    integer(4) :: f_VK_NUMPAD3 = 0
    integer(4) :: f_VK_NUMPAD4 = 0
    integer(4) :: f_VK_NUMPAD5 = 0
    integer(4) :: f_VK_NUMPAD6 = 0
    integer(4) :: f_VK_NUMPAD7 = 0
    integer(4) :: f_VK_NUMPAD8 = 0
    integer(4) :: f_VK_NUMPAD9 = 0
    integer(4) :: f_VK_MULTIPLY = 0
    integer(4) :: f_VK_ADD = 0
    integer(4) :: f_VK_SEPARATER = 0
    integer(4) :: f_VK_SEPARATOR = 0
    integer(4) :: f_VK_SUBTRACT = 0
    integer(4) :: f_VK_DECIMAL = 0
    integer(4) :: f_VK_DIVIDE = 0
    integer(4) :: f_VK_DELETE = 0
    integer(4) :: f_VK_NUM_LOCK = 0
    integer(4) :: f_VK_SCROLL_LOCK = 0
    integer(4) :: f_VK_F1 = 0
    integer(4) :: f_VK_F2 = 0
    integer(4) :: f_VK_F3 = 0
    integer(4) :: f_VK_F4 = 0
    integer(4) :: f_VK_F5 = 0
    integer(4) :: f_VK_F6 = 0
    integer(4) :: f_VK_F7 = 0
    integer(4) :: f_VK_F8 = 0
    integer(4) :: f_VK_F9 = 0
    integer(4) :: f_VK_F10 = 0
    integer(4) :: f_VK_F11 = 0
    integer(4) :: f_VK_F12 = 0
    integer(4) :: f_VK_F13 = 0
    integer(4) :: f_VK_F14 = 0
    integer(4) :: f_VK_F15 = 0
    integer(4) :: f_VK_F16 = 0
    integer(4) :: f_VK_F17 = 0
    integer(4) :: f_VK_F18 = 0
    integer(4) :: f_VK_F19 = 0
    integer(4) :: f_VK_F20 = 0
    integer(4) :: f_VK_F21 = 0
    integer(4) :: f_VK_F22 = 0
    integer(4) :: f_VK_F23 = 0
    integer(4) :: f_VK_F24 = 0
    integer(4) :: f_VK_PRINTSCREEN = 0
    integer(4) :: f_VK_INSERT = 0
    integer(4) :: f_VK_HELP = 0
    integer(4) :: f_VK_META = 0
    integer(4) :: f_VK_BACK_QUOTE = 0
    integer(4) :: f_VK_QUOTE = 0
    integer(4) :: f_VK_KP_UP = 0
    integer(4) :: f_VK_KP_DOWN = 0
    integer(4) :: f_VK_KP_LEFT = 0
    integer(4) :: f_VK_KP_RIGHT = 0
    integer(4) :: f_VK_DEAD_GRAVE = 0
    integer(4) :: f_VK_DEAD_ACUTE = 0
    integer(4) :: f_VK_DEAD_CIRCUMFLEX = 0
    integer(4) :: f_VK_DEAD_TILDE = 0
    integer(4) :: f_VK_DEAD_MACRON = 0
    integer(4) :: f_VK_DEAD_BREVE = 0
    integer(4) :: f_VK_DEAD_ABOVEDOT = 0
    integer(4) :: f_VK_DEAD_DIAERESIS = 0
    integer(4) :: f_VK_DEAD_ABOVERING = 0
    integer(4) :: f_VK_DEAD_DOUBLEACUTE = 0
    integer(4) :: f_VK_DEAD_CARON = 0
    integer(4) :: f_VK_DEAD_CEDILLA = 0
    integer(4) :: f_VK_DEAD_OGONEK = 0
    integer(4) :: f_VK_DEAD_IOTA = 0
    integer(4) :: f_VK_DEAD_VOICED_SOUND = 0
    integer(4) :: f_VK_DEAD_SEMIVOICED_SOUND = 0
    integer(4) :: f_VK_AMPERSAND = 0
    integer(4) :: f_VK_ASTERISK = 0
    integer(4) :: f_VK_QUOTEDBL = 0
    integer(4) :: f_VK_LESS = 0
    integer(4) :: f_VK_GREATER = 0
    integer(4) :: f_VK_BRACELEFT = 0
    integer(4) :: f_VK_BRACERIGHT = 0
    integer(4) :: f_VK_AT = 0
    integer(4) :: f_VK_COLON = 0
    integer(4) :: f_VK_CIRCUMFLEX = 0
    integer(4) :: f_VK_DOLLAR = 0
    integer(4) :: f_VK_EURO_SIGN = 0
    integer(4) :: f_VK_EXCLAMATION_MARK = 0
    integer(4) :: f_VK_INVERTED_EXCLAMATION_MARK = 0
    integer(4) :: f_VK_LEFT_PARENTHESIS = 0
    integer(4) :: f_VK_NUMBER_SIGN = 0
    integer(4) :: f_VK_PLUS = 0
    integer(4) :: f_VK_RIGHT_PARENTHESIS = 0
    integer(4) :: f_VK_UNDERSCORE = 0
    integer(4) :: f_VK_WINDOWS = 0
    integer(4) :: f_VK_CONTEXT_MENU = 0
    integer(4) :: f_VK_FINAL = 0
    integer(4) :: f_VK_CONVERT = 0
    integer(4) :: f_VK_NONCONVERT = 0
    integer(4) :: f_VK_ACCEPT = 0
    integer(4) :: f_VK_MODECHANGE = 0
    integer(4) :: f_VK_KANA = 0
    integer(4) :: f_VK_KANJI = 0
    integer(4) :: f_VK_ALPHANUMERIC = 0
    integer(4) :: f_VK_KATAKANA = 0
    integer(4) :: f_VK_HIRAGANA = 0
    integer(4) :: f_VK_FULL_WIDTH = 0
    integer(4) :: f_VK_HALF_WIDTH = 0
    integer(4) :: f_VK_ROMAN_CHARACTERS = 0
    integer(4) :: f_VK_ALL_CANDIDATES = 0
    integer(4) :: f_VK_PREVIOUS_CANDIDATE = 0
    integer(4) :: f_VK_CODE_INPUT = 0
    integer(4) :: f_VK_JAPANESE_KATAKANA = 0
    integer(4) :: f_VK_JAPANESE_HIRAGANA = 0
    integer(4) :: f_VK_JAPANESE_ROMAN = 0
    integer(4) :: f_VK_KANA_LOCK = 0
    integer(4) :: f_VK_INPUT_METHOD_ON_OFF = 0
    integer(4) :: f_VK_CUT = 0
    integer(4) :: f_VK_COPY = 0
    integer(4) :: f_VK_PASTE = 0
    integer(4) :: f_VK_UNDO = 0
    integer(4) :: f_VK_AGAIN = 0
    integer(4) :: f_VK_FIND = 0
    integer(4) :: f_VK_PROPS = 0
    integer(4) :: f_VK_STOP = 0
    integer(4) :: f_VK_COMPOSE = 0
    integer(4) :: f_VK_ALT_GRAPH = 0
    integer(4) :: f_VK_BEGIN = 0
    integer(4) :: f_VK_UNDEFINED = 0
  end type

  class(ABKeyEventWrapper), pointer, save :: ABKeyEventWrapper_jcell_instance => null()
  logical, save :: ABKeyEventWrapper_jset_instance = .false.

contains

  function ABKeyEventWrapper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABKeyEventWrapper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABKeyEventWrapper)
      jresult => object
    end select
  end function

  function ABKeyEventWrapper_jstatic_instance() result(jresult)
    class(ABKeyEventWrapper), pointer :: jresult
    if (.not. ABKeyEventWrapper_jset_instance) then
      ABKeyEventWrapper_jset_instance = .true.
      ABKeyEventWrapper_jcell_instance => ABKeyEventWrapper_jnew_0()
    end if
    jresult => ABKeyEventWrapper_jcell_instance
  end function

  subroutine ABKeyEventWrapper_jsetstatic_instance(jvalue)
    class(ABKeyEventWrapper), target, optional :: jvalue
    ABKeyEventWrapper_jset_instance = .true.
    if (present(jvalue)) then
      ABKeyEventWrapper_jcell_instance => jvalue
    else
      ABKeyEventWrapper_jcell_instance => null()
    end if
  end subroutine

  function ABKeyEventWrapper_jnew_0() result(this)
    class(ABKeyEventWrapper), pointer :: this
    allocate(this)
    this%jclass = 'ABKeyEventWrapper'
    this%f_VK_ENTER = KeyEvent_jstatic_VK_ENTER()
    this%f_VK_BACK_SPACE = KeyEvent_jstatic_VK_BACK_SPACE()
    this%f_VK_TAB = KeyEvent_jstatic_VK_TAB()
    this%f_VK_CANCEL = KeyEvent_jstatic_VK_CANCEL()
    this%f_VK_CLEAR = KeyEvent_jstatic_VK_CLEAR()
    this%f_VK_SHIFT = KeyEvent_jstatic_VK_SHIFT()
    this%f_VK_CONTROL = KeyEvent_jstatic_VK_CONTROL()
    this%f_VK_ALT = KeyEvent_jstatic_VK_ALT()
    this%f_VK_PAUSE = KeyEvent_jstatic_VK_PAUSE()
    this%f_VK_CAPS_LOCK = KeyEvent_jstatic_VK_CAPS_LOCK()
    this%f_VK_ESCAPE = KeyEvent_jstatic_VK_ESCAPE()
    this%f_VK_SPACE = KeyEvent_jstatic_VK_SPACE()
    this%f_VK_PAGE_UP = KeyEvent_jstatic_VK_PAGE_UP()
    this%f_VK_PAGE_DOWN = KeyEvent_jstatic_VK_PAGE_DOWN()
    this%f_VK_END = KeyEvent_jstatic_VK_END()
    this%f_VK_HOME = KeyEvent_jstatic_VK_HOME()
    this%f_VK_LEFT = KeyEvent_jstatic_VK_LEFT()
    this%f_VK_UP = KeyEvent_jstatic_VK_UP()
    this%f_VK_RIGHT = KeyEvent_jstatic_VK_RIGHT()
    this%f_VK_DOWN = KeyEvent_jstatic_VK_DOWN()
    this%f_VK_COMMA = KeyEvent_jstatic_VK_COMMA()
    this%f_VK_MINUS = KeyEvent_jstatic_VK_MINUS()
    this%f_VK_PERIOD = KeyEvent_jstatic_VK_PERIOD()
    this%f_VK_SLASH = KeyEvent_jstatic_VK_SLASH()
    this%f_VK_0 = KeyEvent_jstatic_VK_0()
    this%f_VK_1 = KeyEvent_jstatic_VK_1()
    this%f_VK_2 = KeyEvent_jstatic_VK_2()
    this%f_VK_3 = KeyEvent_jstatic_VK_3()
    this%f_VK_4 = KeyEvent_jstatic_VK_4()
    this%f_VK_5 = KeyEvent_jstatic_VK_5()
    this%f_VK_6 = KeyEvent_jstatic_VK_6()
    this%f_VK_7 = KeyEvent_jstatic_VK_7()
    this%f_VK_8 = KeyEvent_jstatic_VK_8()
    this%f_VK_9 = KeyEvent_jstatic_VK_9()
    this%f_VK_SEMICOLON = KeyEvent_jstatic_VK_SEMICOLON()
    this%f_VK_EQUALS = KeyEvent_jstatic_VK_EQUALS()
    this%f_VK_A = KeyEvent_jstatic_VK_A()
    this%f_VK_B = KeyEvent_jstatic_VK_B()
    this%f_VK_C = KeyEvent_jstatic_VK_C()
    this%f_VK_D = KeyEvent_jstatic_VK_D()
    this%f_VK_E = KeyEvent_jstatic_VK_E()
    this%f_VK_F = KeyEvent_jstatic_VK_F()
    this%f_VK_G = KeyEvent_jstatic_VK_G()
    this%f_VK_H = KeyEvent_jstatic_VK_H()
    this%f_VK_I = KeyEvent_jstatic_VK_I()
    this%f_VK_J = KeyEvent_jstatic_VK_J()
    this%f_VK_K = KeyEvent_jstatic_VK_K()
    this%f_VK_L = KeyEvent_jstatic_VK_L()
    this%f_VK_M = KeyEvent_jstatic_VK_M()
    this%f_VK_N = KeyEvent_jstatic_VK_N()
    this%f_VK_O = KeyEvent_jstatic_VK_O()
    this%f_VK_P = KeyEvent_jstatic_VK_P()
    this%f_VK_Q = KeyEvent_jstatic_VK_Q()
    this%f_VK_R = KeyEvent_jstatic_VK_R()
    this%f_VK_S = KeyEvent_jstatic_VK_S()
    this%f_VK_T = KeyEvent_jstatic_VK_T()
    this%f_VK_U = KeyEvent_jstatic_VK_U()
    this%f_VK_V = KeyEvent_jstatic_VK_V()
    this%f_VK_W = KeyEvent_jstatic_VK_W()
    this%f_VK_X = KeyEvent_jstatic_VK_X()
    this%f_VK_Y = KeyEvent_jstatic_VK_Y()
    this%f_VK_Z = KeyEvent_jstatic_VK_Z()
    this%f_VK_OPEN_BRACKET = KeyEvent_jstatic_VK_OPEN_BRACKET()
    this%f_VK_BACK_SLASH = KeyEvent_jstatic_VK_BACK_SLASH()
    this%f_VK_CLOSE_BRACKET = KeyEvent_jstatic_VK_CLOSE_BRACKET()
    this%f_VK_NUMPAD0 = KeyEvent_jstatic_VK_NUMPAD0()
    this%f_VK_NUMPAD1 = KeyEvent_jstatic_VK_NUMPAD1()
    this%f_VK_NUMPAD2 = KeyEvent_jstatic_VK_NUMPAD2()
    this%f_VK_NUMPAD3 = KeyEvent_jstatic_VK_NUMPAD3()
    this%f_VK_NUMPAD4 = KeyEvent_jstatic_VK_NUMPAD4()
    this%f_VK_NUMPAD5 = KeyEvent_jstatic_VK_NUMPAD5()
    this%f_VK_NUMPAD6 = KeyEvent_jstatic_VK_NUMPAD6()
    this%f_VK_NUMPAD7 = KeyEvent_jstatic_VK_NUMPAD7()
    this%f_VK_NUMPAD8 = KeyEvent_jstatic_VK_NUMPAD8()
    this%f_VK_NUMPAD9 = KeyEvent_jstatic_VK_NUMPAD9()
    this%f_VK_MULTIPLY = KeyEvent_jstatic_VK_MULTIPLY()
    this%f_VK_ADD = KeyEvent_jstatic_VK_ADD()
    this%f_VK_SEPARATER = KeyEvent_jstatic_VK_SEPARATER()
    this%f_VK_SEPARATOR = KeyEvent_jstatic_VK_SEPARATOR()
    this%f_VK_SUBTRACT = KeyEvent_jstatic_VK_SUBTRACT()
    this%f_VK_DECIMAL = KeyEvent_jstatic_VK_DECIMAL()
    this%f_VK_DIVIDE = KeyEvent_jstatic_VK_DIVIDE()
    this%f_VK_DELETE = KeyEvent_jstatic_VK_DELETE()
    this%f_VK_NUM_LOCK = KeyEvent_jstatic_VK_NUM_LOCK()
    this%f_VK_SCROLL_LOCK = KeyEvent_jstatic_VK_SCROLL_LOCK()
    this%f_VK_F1 = KeyEvent_jstatic_VK_F1()
    this%f_VK_F2 = KeyEvent_jstatic_VK_F2()
    this%f_VK_F3 = KeyEvent_jstatic_VK_F3()
    this%f_VK_F4 = KeyEvent_jstatic_VK_F4()
    this%f_VK_F5 = KeyEvent_jstatic_VK_F5()
    this%f_VK_F6 = KeyEvent_jstatic_VK_F6()
    this%f_VK_F7 = KeyEvent_jstatic_VK_F7()
    this%f_VK_F8 = KeyEvent_jstatic_VK_F8()
    this%f_VK_F9 = KeyEvent_jstatic_VK_F9()
    this%f_VK_F10 = KeyEvent_jstatic_VK_F10()
    this%f_VK_F11 = KeyEvent_jstatic_VK_F11()
    this%f_VK_F12 = KeyEvent_jstatic_VK_F12()
    this%f_VK_F13 = KeyEvent_jstatic_VK_F13()
    this%f_VK_F14 = KeyEvent_jstatic_VK_F14()
    this%f_VK_F15 = KeyEvent_jstatic_VK_F15()
    this%f_VK_F16 = KeyEvent_jstatic_VK_F16()
    this%f_VK_F17 = KeyEvent_jstatic_VK_F17()
    this%f_VK_F18 = KeyEvent_jstatic_VK_F18()
    this%f_VK_F19 = KeyEvent_jstatic_VK_F19()
    this%f_VK_F20 = KeyEvent_jstatic_VK_F20()
    this%f_VK_F21 = KeyEvent_jstatic_VK_F21()
    this%f_VK_F22 = KeyEvent_jstatic_VK_F22()
    this%f_VK_F23 = KeyEvent_jstatic_VK_F23()
    this%f_VK_F24 = KeyEvent_jstatic_VK_F24()
    this%f_VK_PRINTSCREEN = KeyEvent_jstatic_VK_PRINTSCREEN()
    this%f_VK_INSERT = KeyEvent_jstatic_VK_INSERT()
    this%f_VK_HELP = KeyEvent_jstatic_VK_HELP()
    this%f_VK_META = KeyEvent_jstatic_VK_META()
    this%f_VK_BACK_QUOTE = KeyEvent_jstatic_VK_BACK_QUOTE()
    this%f_VK_QUOTE = KeyEvent_jstatic_VK_QUOTE()
    this%f_VK_KP_UP = KeyEvent_jstatic_VK_KP_UP()
    this%f_VK_KP_DOWN = KeyEvent_jstatic_VK_KP_DOWN()
    this%f_VK_KP_LEFT = KeyEvent_jstatic_VK_KP_LEFT()
    this%f_VK_KP_RIGHT = KeyEvent_jstatic_VK_KP_RIGHT()
    this%f_VK_DEAD_GRAVE = KeyEvent_jstatic_VK_DEAD_GRAVE()
    this%f_VK_DEAD_ACUTE = KeyEvent_jstatic_VK_DEAD_ACUTE()
    this%f_VK_DEAD_CIRCUMFLEX = KeyEvent_jstatic_VK_DEAD_CIRCUMFLEX()
    this%f_VK_DEAD_TILDE = KeyEvent_jstatic_VK_DEAD_TILDE()
    this%f_VK_DEAD_MACRON = KeyEvent_jstatic_VK_DEAD_MACRON()
    this%f_VK_DEAD_BREVE = KeyEvent_jstatic_VK_DEAD_BREVE()
    this%f_VK_DEAD_ABOVEDOT = KeyEvent_jstatic_VK_DEAD_ABOVEDOT()
    this%f_VK_DEAD_DIAERESIS = KeyEvent_jstatic_VK_DEAD_DIAERESIS()
    this%f_VK_DEAD_ABOVERING = KeyEvent_jstatic_VK_DEAD_ABOVERING()
    this%f_VK_DEAD_DOUBLEACUTE = KeyEvent_jstatic_VK_DEAD_DOUBLEACUTE()
    this%f_VK_DEAD_CARON = KeyEvent_jstatic_VK_DEAD_CARON()
    this%f_VK_DEAD_CEDILLA = KeyEvent_jstatic_VK_DEAD_CEDILLA()
    this%f_VK_DEAD_OGONEK = KeyEvent_jstatic_VK_DEAD_OGONEK()
    this%f_VK_DEAD_IOTA = KeyEvent_jstatic_VK_DEAD_IOTA()
    this%f_VK_DEAD_VOICED_SOUND = KeyEvent_jstatic_VK_DEAD_VOICED_SOUND()
    this%f_VK_DEAD_SEMIVOICED_SOUND = KeyEvent_jstatic_VK_DEAD_SEMIVOICED_SOUND()
    this%f_VK_AMPERSAND = KeyEvent_jstatic_VK_AMPERSAND()
    this%f_VK_ASTERISK = KeyEvent_jstatic_VK_ASTERISK()
    this%f_VK_QUOTEDBL = KeyEvent_jstatic_VK_QUOTEDBL()
    this%f_VK_LESS = KeyEvent_jstatic_VK_LESS()
    this%f_VK_GREATER = KeyEvent_jstatic_VK_GREATER()
    this%f_VK_BRACELEFT = KeyEvent_jstatic_VK_BRACELEFT()
    this%f_VK_BRACERIGHT = KeyEvent_jstatic_VK_BRACERIGHT()
    this%f_VK_AT = KeyEvent_jstatic_VK_AT()
    this%f_VK_COLON = KeyEvent_jstatic_VK_COLON()
    this%f_VK_CIRCUMFLEX = KeyEvent_jstatic_VK_CIRCUMFLEX()
    this%f_VK_DOLLAR = KeyEvent_jstatic_VK_DOLLAR()
    this%f_VK_EURO_SIGN = KeyEvent_jstatic_VK_EURO_SIGN()
    this%f_VK_EXCLAMATION_MARK = KeyEvent_jstatic_VK_EXCLAMATION_MARK()
    this%f_VK_INVERTED_EXCLAMATION_MARK = KeyEvent_jstatic_VK_INVERTED_EXCLAMATION_MARK()
    this%f_VK_LEFT_PARENTHESIS = KeyEvent_jstatic_VK_LEFT_PARENTHESIS()
    this%f_VK_NUMBER_SIGN = KeyEvent_jstatic_VK_NUMBER_SIGN()
    this%f_VK_PLUS = KeyEvent_jstatic_VK_PLUS()
    this%f_VK_RIGHT_PARENTHESIS = KeyEvent_jstatic_VK_RIGHT_PARENTHESIS()
    this%f_VK_UNDERSCORE = KeyEvent_jstatic_VK_UNDERSCORE()
    this%f_VK_WINDOWS = KeyEvent_jstatic_VK_WINDOWS()
    this%f_VK_CONTEXT_MENU = KeyEvent_jstatic_VK_CONTEXT_MENU()
    this%f_VK_FINAL = KeyEvent_jstatic_VK_FINAL()
    this%f_VK_CONVERT = KeyEvent_jstatic_VK_CONVERT()
    this%f_VK_NONCONVERT = KeyEvent_jstatic_VK_NONCONVERT()
    this%f_VK_ACCEPT = KeyEvent_jstatic_VK_ACCEPT()
    this%f_VK_MODECHANGE = KeyEvent_jstatic_VK_MODECHANGE()
    this%f_VK_KANA = KeyEvent_jstatic_VK_KANA()
    this%f_VK_KANJI = KeyEvent_jstatic_VK_KANJI()
    this%f_VK_ALPHANUMERIC = KeyEvent_jstatic_VK_ALPHANUMERIC()
    this%f_VK_KATAKANA = KeyEvent_jstatic_VK_KATAKANA()
    this%f_VK_HIRAGANA = KeyEvent_jstatic_VK_HIRAGANA()
    this%f_VK_FULL_WIDTH = KeyEvent_jstatic_VK_FULL_WIDTH()
    this%f_VK_HALF_WIDTH = KeyEvent_jstatic_VK_HALF_WIDTH()
    this%f_VK_ROMAN_CHARACTERS = KeyEvent_jstatic_VK_ROMAN_CHARACTERS()
    this%f_VK_ALL_CANDIDATES = KeyEvent_jstatic_VK_ALL_CANDIDATES()
    this%f_VK_PREVIOUS_CANDIDATE = KeyEvent_jstatic_VK_PREVIOUS_CANDIDATE()
    this%f_VK_CODE_INPUT = KeyEvent_jstatic_VK_CODE_INPUT()
    this%f_VK_JAPANESE_KATAKANA = KeyEvent_jstatic_VK_JAPANESE_KATAKANA()
    this%f_VK_JAPANESE_HIRAGANA = KeyEvent_jstatic_VK_JAPANESE_HIRAGANA()
    this%f_VK_JAPANESE_ROMAN = KeyEvent_jstatic_VK_JAPANESE_ROMAN()
    this%f_VK_KANA_LOCK = KeyEvent_jstatic_VK_KANA_LOCK()
    this%f_VK_INPUT_METHOD_ON_OFF = KeyEvent_jstatic_VK_INPUT_METHOD_ON_OFF()
    this%f_VK_CUT = KeyEvent_jstatic_VK_CUT()
    this%f_VK_COPY = KeyEvent_jstatic_VK_COPY()
    this%f_VK_PASTE = KeyEvent_jstatic_VK_PASTE()
    this%f_VK_UNDO = KeyEvent_jstatic_VK_UNDO()
    this%f_VK_AGAIN = KeyEvent_jstatic_VK_AGAIN()
    this%f_VK_FIND = KeyEvent_jstatic_VK_FIND()
    this%f_VK_PROPS = KeyEvent_jstatic_VK_PROPS()
    this%f_VK_STOP = KeyEvent_jstatic_VK_STOP()
    this%f_VK_COMPOSE = KeyEvent_jstatic_VK_COMPOSE()
    this%f_VK_ALT_GRAPH = KeyEvent_jstatic_VK_ALT_GRAPH()
    this%f_VK_BEGIN = KeyEvent_jstatic_VK_BEGIN()
    this%f_VK_UNDEFINED = KeyEvent_jstatic_VK_UNDEFINED()
  end function

  recursive function ABKeyEventWrapper_jm_getInstance_0() result(jresult)
    class(ABKeyEventWrapper), pointer :: jresult
        jresult => ABKeyEventWrapper_jstatic_instance()
        return
  end function
end module ABKeyEventWrapper_m

