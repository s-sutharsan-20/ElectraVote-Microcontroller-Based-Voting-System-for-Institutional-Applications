
_main:

;voting3.c,28 :: 		void main() {
;voting3.c,29 :: 		int votes[6] = {0}; // Array to store votes for each candidate
	CLRF       main_votes_L0+0
	CLRF       main_votes_L0+1
	CLRF       main_votes_L0+2
	CLRF       main_votes_L0+3
	CLRF       main_votes_L0+4
	CLRF       main_votes_L0+5
	CLRF       main_votes_L0+6
	CLRF       main_votes_L0+7
	CLRF       main_votes_L0+8
	CLRF       main_votes_L0+9
	CLRF       main_votes_L0+10
	CLRF       main_votes_L0+11
;voting3.c,30 :: 		Lcd_Init();         // Initialize the LCD
	CALL       _Lcd_Init+0
;voting3.c,31 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); // Turn off LCD cursor
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;voting3.c,34 :: 		TRISB0_bit = 1; TRISB1_bit = 1; TRISB2_bit = 1; TRISB3_bit = 1;
	BSF        TRISB0_bit+0, BitPos(TRISB0_bit+0)
	BSF        TRISB1_bit+0, BitPos(TRISB1_bit+0)
	BSF        TRISB2_bit+0, BitPos(TRISB2_bit+0)
	BSF        TRISB3_bit+0, BitPos(TRISB3_bit+0)
;voting3.c,35 :: 		TRISB4_bit = 1; TRISB5_bit = 1; TRISB6_bit = 1;
	BSF        TRISB4_bit+0, BitPos(TRISB4_bit+0)
	BSF        TRISB5_bit+0, BitPos(TRISB5_bit+0)
	BSF        TRISB6_bit+0, BitPos(TRISB6_bit+0)
;voting3.c,37 :: 		while (1) {
L_main0:
;voting3.c,38 :: 		scrollMessage();  // Display the scrolling message on the home screen
	CALL       _scrollMessage+0
;voting3.c,41 :: 		if (switch1) { votes[0]++; displayThankYou(1); while (switch1); }
	BTFSS      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_main2
	INCF       main_votes_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_votes_L0+1, 1
	MOVLW      1
	MOVWF      FARG_displayThankYou_candidate+0
	MOVLW      0
	MOVWF      FARG_displayThankYou_candidate+1
	CALL       _displayThankYou+0
L_main3:
	BTFSS      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_main4
	GOTO       L_main3
L_main4:
L_main2:
;voting3.c,42 :: 		if (switch2) { votes[1]++; displayThankYou(2); while (switch2); }
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_main5
	INCF       main_votes_L0+2, 1
	BTFSC      STATUS+0, 2
	INCF       main_votes_L0+3, 1
	MOVLW      2
	MOVWF      FARG_displayThankYou_candidate+0
	MOVLW      0
	MOVWF      FARG_displayThankYou_candidate+1
	CALL       _displayThankYou+0
L_main6:
	BTFSS      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_main7
	GOTO       L_main6
L_main7:
L_main5:
;voting3.c,43 :: 		if (switch3) { votes[2]++; displayThankYou(3); while (switch3); }
	BTFSS      RB2_bit+0, BitPos(RB2_bit+0)
	GOTO       L_main8
	INCF       main_votes_L0+4, 1
	BTFSC      STATUS+0, 2
	INCF       main_votes_L0+5, 1
	MOVLW      3
	MOVWF      FARG_displayThankYou_candidate+0
	MOVLW      0
	MOVWF      FARG_displayThankYou_candidate+1
	CALL       _displayThankYou+0
L_main9:
	BTFSS      RB2_bit+0, BitPos(RB2_bit+0)
	GOTO       L_main10
	GOTO       L_main9
L_main10:
L_main8:
;voting3.c,44 :: 		if (switch4) { votes[3]++; displayThankYou(4); while (switch4); }
	BTFSS      RB3_bit+0, BitPos(RB3_bit+0)
	GOTO       L_main11
	INCF       main_votes_L0+6, 1
	BTFSC      STATUS+0, 2
	INCF       main_votes_L0+7, 1
	MOVLW      4
	MOVWF      FARG_displayThankYou_candidate+0
	MOVLW      0
	MOVWF      FARG_displayThankYou_candidate+1
	CALL       _displayThankYou+0
L_main12:
	BTFSS      RB3_bit+0, BitPos(RB3_bit+0)
	GOTO       L_main13
	GOTO       L_main12
L_main13:
L_main11:
;voting3.c,45 :: 		if (switch5) { votes[4]++; displayThankYou(5); while (switch5); }
	BTFSS      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_main14
	INCF       main_votes_L0+8, 1
	BTFSC      STATUS+0, 2
	INCF       main_votes_L0+9, 1
	MOVLW      5
	MOVWF      FARG_displayThankYou_candidate+0
	MOVLW      0
	MOVWF      FARG_displayThankYou_candidate+1
	CALL       _displayThankYou+0
L_main15:
	BTFSS      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_main16
	GOTO       L_main15
L_main16:
L_main14:
;voting3.c,46 :: 		if (switch6) { votes[5]++; displayThankYou(6); while (switch6); }
	BTFSS      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_main17
	INCF       main_votes_L0+10, 1
	BTFSC      STATUS+0, 2
	INCF       main_votes_L0+11, 1
	MOVLW      6
	MOVWF      FARG_displayThankYou_candidate+0
	MOVLW      0
	MOVWF      FARG_displayThankYou_candidate+1
	CALL       _displayThankYou+0
L_main18:
	BTFSS      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_main19
	GOTO       L_main18
L_main19:
L_main17:
;voting3.c,49 :: 		if (switchResults) {
	BTFSS      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_main20
;voting3.c,50 :: 		showResults(votes);
	MOVLW      main_votes_L0+0
	MOVWF      FARG_showResults_votes+0
	CALL       _showResults+0
;voting3.c,51 :: 		while (switchResults);
L_main21:
	BTFSS      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_main22
	GOTO       L_main21
L_main22:
;voting3.c,52 :: 		}
L_main20:
;voting3.c,53 :: 		}
	GOTO       L_main0
;voting3.c,54 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_displayThankYou:

;voting3.c,56 :: 		void displayThankYou(int candidate) {
;voting3.c,57 :: 		char thankYouMsg[] = "Thank You for Voting!";
	MOVLW      84
	MOVWF      displayThankYou_thankYouMsg_L0+0
	MOVLW      104
	MOVWF      displayThankYou_thankYouMsg_L0+1
	MOVLW      97
	MOVWF      displayThankYou_thankYouMsg_L0+2
	MOVLW      110
	MOVWF      displayThankYou_thankYouMsg_L0+3
	MOVLW      107
	MOVWF      displayThankYou_thankYouMsg_L0+4
	MOVLW      32
	MOVWF      displayThankYou_thankYouMsg_L0+5
	MOVLW      89
	MOVWF      displayThankYou_thankYouMsg_L0+6
	MOVLW      111
	MOVWF      displayThankYou_thankYouMsg_L0+7
	MOVLW      117
	MOVWF      displayThankYou_thankYouMsg_L0+8
	MOVLW      32
	MOVWF      displayThankYou_thankYouMsg_L0+9
	MOVLW      102
	MOVWF      displayThankYou_thankYouMsg_L0+10
	MOVLW      111
	MOVWF      displayThankYou_thankYouMsg_L0+11
	MOVLW      114
	MOVWF      displayThankYou_thankYouMsg_L0+12
	MOVLW      32
	MOVWF      displayThankYou_thankYouMsg_L0+13
	MOVLW      86
	MOVWF      displayThankYou_thankYouMsg_L0+14
	MOVLW      111
	MOVWF      displayThankYou_thankYouMsg_L0+15
	MOVLW      116
	MOVWF      displayThankYou_thankYouMsg_L0+16
	MOVLW      105
	MOVWF      displayThankYou_thankYouMsg_L0+17
	MOVLW      110
	MOVWF      displayThankYou_thankYouMsg_L0+18
	MOVLW      103
	MOVWF      displayThankYou_thankYouMsg_L0+19
	MOVLW      33
	MOVWF      displayThankYou_thankYouMsg_L0+20
	CLRF       displayThankYou_thankYouMsg_L0+21
;voting3.c,61 :: 		for (i = 0; i < strlen(thankYouMsg); i++) {
	CLRF       displayThankYou_i_L0+0
	CLRF       displayThankYou_i_L0+1
L_displayThankYou23:
	MOVLW      displayThankYou_thankYouMsg_L0+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVLW      128
	XORWF      displayThankYou_i_L0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__displayThankYou69
	MOVF       R0+0, 0
	SUBWF      displayThankYou_i_L0+0, 0
L__displayThankYou69:
	BTFSC      STATUS+0, 0
	GOTO       L_displayThankYou24
;voting3.c,63 :: 		Lcd_Out(1, 1, "                "); // Clear line 1
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_voting3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;voting3.c,66 :: 		for (j = 0; j < 16 && (i + j) < strlen(thankYouMsg); j++) {
	CLRF       displayThankYou_j_L0+0
	CLRF       displayThankYou_j_L0+1
L_displayThankYou26:
	MOVLW      128
	XORWF      displayThankYou_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__displayThankYou70
	MOVLW      16
	SUBWF      displayThankYou_j_L0+0, 0
L__displayThankYou70:
	BTFSC      STATUS+0, 0
	GOTO       L_displayThankYou27
	MOVF       displayThankYou_j_L0+0, 0
	ADDWF      displayThankYou_i_L0+0, 0
	MOVWF      FLOC__displayThankYou+0
	MOVF       displayThankYou_i_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      displayThankYou_j_L0+1, 0
	MOVWF      FLOC__displayThankYou+1
	MOVLW      displayThankYou_thankYouMsg_L0+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVLW      128
	XORWF      FLOC__displayThankYou+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__displayThankYou71
	MOVF       R0+0, 0
	SUBWF      FLOC__displayThankYou+0, 0
L__displayThankYou71:
	BTFSC      STATUS+0, 0
	GOTO       L_displayThankYou27
L__displayThankYou65:
;voting3.c,67 :: 		Lcd_Chr(1, j + 1, thankYouMsg[(i + j) % strlen(thankYouMsg)]);
	MOVF       displayThankYou_j_L0+0, 0
	ADDWF      displayThankYou_i_L0+0, 0
	MOVWF      FLOC__displayThankYou+0
	MOVF       displayThankYou_i_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      displayThankYou_j_L0+1, 0
	MOVWF      FLOC__displayThankYou+1
	MOVLW      displayThankYou_thankYouMsg_L0+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       FLOC__displayThankYou+0, 0
	MOVWF      R0+0
	MOVF       FLOC__displayThankYou+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      displayThankYou_thankYouMsg_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       displayThankYou_j_L0+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	CALL       _Lcd_Chr+0
;voting3.c,68 :: 		Lcd_Out(2, 1, "Candidate ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_voting3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;voting3.c,69 :: 		Lcd_Chr(2, 11, numbers[candidate]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       FARG_displayThankYou_candidate+0, 0
	ADDLW      _numbers+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;voting3.c,66 :: 		for (j = 0; j < 16 && (i + j) < strlen(thankYouMsg); j++) {
	INCF       displayThankYou_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       displayThankYou_j_L0+1, 1
;voting3.c,70 :: 		}
	GOTO       L_displayThankYou26
L_displayThankYou27:
;voting3.c,72 :: 		Delay_ms(200); // Delay for visible scrolling
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_displayThankYou31:
	DECFSZ     R13+0, 1
	GOTO       L_displayThankYou31
	DECFSZ     R12+0, 1
	GOTO       L_displayThankYou31
	DECFSZ     R11+0, 1
	GOTO       L_displayThankYou31
;voting3.c,61 :: 		for (i = 0; i < strlen(thankYouMsg); i++) {
	INCF       displayThankYou_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       displayThankYou_i_L0+1, 1
;voting3.c,73 :: 		}
	GOTO       L_displayThankYou23
L_displayThankYou24:
;voting3.c,74 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_displayThankYou32:
	DECFSZ     R13+0, 1
	GOTO       L_displayThankYou32
	DECFSZ     R12+0, 1
	GOTO       L_displayThankYou32
	DECFSZ     R11+0, 1
	GOTO       L_displayThankYou32
	NOP
	NOP
;voting3.c,75 :: 		Lcd_Cmd(_LCD_CLEAR); // Clear LCD before returning
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;voting3.c,76 :: 		}
L_end_displayThankYou:
	RETURN
; end of _displayThankYou

_scrollMessage:

;voting3.c,79 :: 		void scrollMessage() {
;voting3.c,80 :: 		char welcomeMsg[] = "Welcome to ElectraVote   ";
	MOVLW      87
	MOVWF      scrollMessage_welcomeMsg_L0+0
	MOVLW      101
	MOVWF      scrollMessage_welcomeMsg_L0+1
	MOVLW      108
	MOVWF      scrollMessage_welcomeMsg_L0+2
	MOVLW      99
	MOVWF      scrollMessage_welcomeMsg_L0+3
	MOVLW      111
	MOVWF      scrollMessage_welcomeMsg_L0+4
	MOVLW      109
	MOVWF      scrollMessage_welcomeMsg_L0+5
	MOVLW      101
	MOVWF      scrollMessage_welcomeMsg_L0+6
	MOVLW      32
	MOVWF      scrollMessage_welcomeMsg_L0+7
	MOVLW      116
	MOVWF      scrollMessage_welcomeMsg_L0+8
	MOVLW      111
	MOVWF      scrollMessage_welcomeMsg_L0+9
	MOVLW      32
	MOVWF      scrollMessage_welcomeMsg_L0+10
	MOVLW      69
	MOVWF      scrollMessage_welcomeMsg_L0+11
	MOVLW      108
	MOVWF      scrollMessage_welcomeMsg_L0+12
	MOVLW      101
	MOVWF      scrollMessage_welcomeMsg_L0+13
	MOVLW      99
	MOVWF      scrollMessage_welcomeMsg_L0+14
	MOVLW      116
	MOVWF      scrollMessage_welcomeMsg_L0+15
	MOVLW      114
	MOVWF      scrollMessage_welcomeMsg_L0+16
	MOVLW      97
	MOVWF      scrollMessage_welcomeMsg_L0+17
	MOVLW      86
	MOVWF      scrollMessage_welcomeMsg_L0+18
	MOVLW      111
	MOVWF      scrollMessage_welcomeMsg_L0+19
	MOVLW      116
	MOVWF      scrollMessage_welcomeMsg_L0+20
	MOVLW      101
	MOVWF      scrollMessage_welcomeMsg_L0+21
	MOVLW      32
	MOVWF      scrollMessage_welcomeMsg_L0+22
	MOVLW      32
	MOVWF      scrollMessage_welcomeMsg_L0+23
	MOVLW      32
	MOVWF      scrollMessage_welcomeMsg_L0+24
	CLRF       scrollMessage_welcomeMsg_L0+25
	MOVLW      80
	MOVWF      scrollMessage_voteMsg_L0+0
	MOVLW      114
	MOVWF      scrollMessage_voteMsg_L0+1
	MOVLW      101
	MOVWF      scrollMessage_voteMsg_L0+2
	MOVLW      115
	MOVWF      scrollMessage_voteMsg_L0+3
	MOVLW      115
	MOVWF      scrollMessage_voteMsg_L0+4
	MOVLW      32
	MOVWF      scrollMessage_voteMsg_L0+5
	MOVLW      98
	MOVWF      scrollMessage_voteMsg_L0+6
	MOVLW      117
	MOVWF      scrollMessage_voteMsg_L0+7
	MOVLW      116
	MOVWF      scrollMessage_voteMsg_L0+8
	MOVLW      116
	MOVWF      scrollMessage_voteMsg_L0+9
	MOVLW      111
	MOVWF      scrollMessage_voteMsg_L0+10
	MOVLW      110
	MOVWF      scrollMessage_voteMsg_L0+11
	MOVLW      32
	MOVWF      scrollMessage_voteMsg_L0+12
	MOVLW      116
	MOVWF      scrollMessage_voteMsg_L0+13
	MOVLW      111
	MOVWF      scrollMessage_voteMsg_L0+14
	MOVLW      32
	MOVWF      scrollMessage_voteMsg_L0+15
	MOVLW      118
	MOVWF      scrollMessage_voteMsg_L0+16
	MOVLW      111
	MOVWF      scrollMessage_voteMsg_L0+17
	MOVLW      116
	MOVWF      scrollMessage_voteMsg_L0+18
	MOVLW      101
	MOVWF      scrollMessage_voteMsg_L0+19
	MOVLW      32
	MOVWF      scrollMessage_voteMsg_L0+20
	MOVLW      102
	MOVWF      scrollMessage_voteMsg_L0+21
	MOVLW      111
	MOVWF      scrollMessage_voteMsg_L0+22
	MOVLW      114
	MOVWF      scrollMessage_voteMsg_L0+23
	MOVLW      32
	MOVWF      scrollMessage_voteMsg_L0+24
	MOVLW      67
	MOVWF      scrollMessage_voteMsg_L0+25
	MOVLW      97
	MOVWF      scrollMessage_voteMsg_L0+26
	MOVLW      110
	MOVWF      scrollMessage_voteMsg_L0+27
	MOVLW      100
	MOVWF      scrollMessage_voteMsg_L0+28
	MOVLW      105
	MOVWF      scrollMessage_voteMsg_L0+29
	MOVLW      100
	MOVWF      scrollMessage_voteMsg_L0+30
	MOVLW      97
	MOVWF      scrollMessage_voteMsg_L0+31
	MOVLW      116
	MOVWF      scrollMessage_voteMsg_L0+32
	MOVLW      101
	MOVWF      scrollMessage_voteMsg_L0+33
	MOVLW      115
	MOVWF      scrollMessage_voteMsg_L0+34
	MOVLW      32
	MOVWF      scrollMessage_voteMsg_L0+35
	MOVLW      49
	MOVWF      scrollMessage_voteMsg_L0+36
	MOVLW      45
	MOVWF      scrollMessage_voteMsg_L0+37
	MOVLW      54
	MOVWF      scrollMessage_voteMsg_L0+38
	MOVLW      32
	MOVWF      scrollMessage_voteMsg_L0+39
	MOVLW      32
	MOVWF      scrollMessage_voteMsg_L0+40
	MOVLW      32
	MOVWF      scrollMessage_voteMsg_L0+41
	CLRF       scrollMessage_voteMsg_L0+42
;voting3.c,85 :: 		int maxScroll = (strlen(welcomeMsg) > strlen(voteMsg)) ? strlen(welcomeMsg) : strlen(voteMsg);
	MOVLW      scrollMessage_welcomeMsg_L0+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVF       R0+0, 0
	MOVWF      FLOC__scrollMessage+0
	MOVF       R0+1, 0
	MOVWF      FLOC__scrollMessage+1
	MOVLW      scrollMessage_voteMsg_L0+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      FLOC__scrollMessage+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__scrollMessage73
	MOVF       FLOC__scrollMessage+0, 0
	SUBWF      R0+0, 0
L__scrollMessage73:
	BTFSC      STATUS+0, 0
	GOTO       L_scrollMessage33
	MOVLW      scrollMessage_welcomeMsg_L0+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVF       R0+0, 0
	MOVWF      ?FLOC___scrollMessageT40+0
	MOVF       R0+1, 0
	MOVWF      ?FLOC___scrollMessageT40+1
	GOTO       L_scrollMessage34
L_scrollMessage33:
	MOVLW      scrollMessage_voteMsg_L0+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVF       R0+0, 0
	MOVWF      ?FLOC___scrollMessageT40+0
	MOVF       R0+1, 0
	MOVWF      ?FLOC___scrollMessageT40+1
L_scrollMessage34:
	MOVF       ?FLOC___scrollMessageT40+0, 0
	MOVWF      scrollMessage_maxScroll_L0+0
	MOVF       ?FLOC___scrollMessageT40+1, 0
	MOVWF      scrollMessage_maxScroll_L0+1
;voting3.c,88 :: 		for (i = 0; i < maxScroll - 15; i++) {
	CLRF       scrollMessage_i_L0+0
	CLRF       scrollMessage_i_L0+1
L_scrollMessage35:
	MOVLW      15
	SUBWF      scrollMessage_maxScroll_L0+0, 0
	MOVWF      R1+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      scrollMessage_maxScroll_L0+1, 0
	MOVWF      R1+1
	MOVLW      128
	XORWF      scrollMessage_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__scrollMessage74
	MOVF       R1+0, 0
	SUBWF      scrollMessage_i_L0+0, 0
L__scrollMessage74:
	BTFSC      STATUS+0, 0
	GOTO       L_scrollMessage36
;voting3.c,91 :: 		for (j = 0; j < 16; j++) {
	CLRF       scrollMessage_j_L0+0
	CLRF       scrollMessage_j_L0+1
L_scrollMessage38:
	MOVLW      128
	XORWF      scrollMessage_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__scrollMessage75
	MOVLW      16
	SUBWF      scrollMessage_j_L0+0, 0
L__scrollMessage75:
	BTFSC      STATUS+0, 0
	GOTO       L_scrollMessage39
;voting3.c,92 :: 		if (i + j < strlen(welcomeMsg)) {
	MOVF       scrollMessage_j_L0+0, 0
	ADDWF      scrollMessage_i_L0+0, 0
	MOVWF      FLOC__scrollMessage+0
	MOVF       scrollMessage_i_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      scrollMessage_j_L0+1, 0
	MOVWF      FLOC__scrollMessage+1
	MOVLW      scrollMessage_welcomeMsg_L0+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVLW      128
	XORWF      FLOC__scrollMessage+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__scrollMessage76
	MOVF       R0+0, 0
	SUBWF      FLOC__scrollMessage+0, 0
L__scrollMessage76:
	BTFSC      STATUS+0, 0
	GOTO       L_scrollMessage41
;voting3.c,93 :: 		Lcd_Chr(1, j + 1, welcomeMsg[i + j]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       scrollMessage_j_L0+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       scrollMessage_j_L0+0, 0
	ADDWF      scrollMessage_i_L0+0, 0
	MOVWF      R0+0
	MOVF       scrollMessage_i_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      scrollMessage_j_L0+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      scrollMessage_welcomeMsg_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;voting3.c,94 :: 		} else {
	GOTO       L_scrollMessage42
L_scrollMessage41:
;voting3.c,95 :: 		Lcd_Chr(1, j + 1, ' '); // Clear leftover characters
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       scrollMessage_j_L0+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      32
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;voting3.c,96 :: 		}
L_scrollMessage42:
;voting3.c,91 :: 		for (j = 0; j < 16; j++) {
	INCF       scrollMessage_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       scrollMessage_j_L0+1, 1
;voting3.c,97 :: 		}
	GOTO       L_scrollMessage38
L_scrollMessage39:
;voting3.c,100 :: 		for (j = 0; j < 16; j++) {
	CLRF       scrollMessage_j_L0+0
	CLRF       scrollMessage_j_L0+1
L_scrollMessage43:
	MOVLW      128
	XORWF      scrollMessage_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__scrollMessage77
	MOVLW      16
	SUBWF      scrollMessage_j_L0+0, 0
L__scrollMessage77:
	BTFSC      STATUS+0, 0
	GOTO       L_scrollMessage44
;voting3.c,101 :: 		if (i + j < strlen(voteMsg)) {
	MOVF       scrollMessage_j_L0+0, 0
	ADDWF      scrollMessage_i_L0+0, 0
	MOVWF      FLOC__scrollMessage+0
	MOVF       scrollMessage_i_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      scrollMessage_j_L0+1, 0
	MOVWF      FLOC__scrollMessage+1
	MOVLW      scrollMessage_voteMsg_L0+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVLW      128
	XORWF      FLOC__scrollMessage+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__scrollMessage78
	MOVF       R0+0, 0
	SUBWF      FLOC__scrollMessage+0, 0
L__scrollMessage78:
	BTFSC      STATUS+0, 0
	GOTO       L_scrollMessage46
;voting3.c,102 :: 		Lcd_Chr(2, j + 1, voteMsg[i + j]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       scrollMessage_j_L0+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       scrollMessage_j_L0+0, 0
	ADDWF      scrollMessage_i_L0+0, 0
	MOVWF      R0+0
	MOVF       scrollMessage_i_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      scrollMessage_j_L0+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      scrollMessage_voteMsg_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;voting3.c,103 :: 		} else {
	GOTO       L_scrollMessage47
L_scrollMessage46:
;voting3.c,104 :: 		Lcd_Chr(2, j + 1, ' '); // Clear leftover characters
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       scrollMessage_j_L0+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      32
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;voting3.c,105 :: 		}
L_scrollMessage47:
;voting3.c,100 :: 		for (j = 0; j < 16; j++) {
	INCF       scrollMessage_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       scrollMessage_j_L0+1, 1
;voting3.c,106 :: 		}
	GOTO       L_scrollMessage43
L_scrollMessage44:
;voting3.c,108 :: 		Delay_ms(300);  // Delay for scrolling effect
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_scrollMessage48:
	DECFSZ     R13+0, 1
	GOTO       L_scrollMessage48
	DECFSZ     R12+0, 1
	GOTO       L_scrollMessage48
	DECFSZ     R11+0, 1
	GOTO       L_scrollMessage48
	NOP
	NOP
;voting3.c,111 :: 		if (switch1 || switch2 || switch3 || switch4 || switch5 || switch6 || switchResults) {
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L__scrollMessage66
	BTFSC      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L__scrollMessage66
	BTFSC      RB2_bit+0, BitPos(RB2_bit+0)
	GOTO       L__scrollMessage66
	BTFSC      RB3_bit+0, BitPos(RB3_bit+0)
	GOTO       L__scrollMessage66
	BTFSC      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L__scrollMessage66
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L__scrollMessage66
	BTFSC      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L__scrollMessage66
	GOTO       L_scrollMessage51
L__scrollMessage66:
;voting3.c,112 :: 		return;  // Exit scrolling if any button is pressed
	GOTO       L_end_scrollMessage
;voting3.c,113 :: 		}
L_scrollMessage51:
;voting3.c,88 :: 		for (i = 0; i < maxScroll - 15; i++) {
	INCF       scrollMessage_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       scrollMessage_i_L0+1, 1
;voting3.c,114 :: 		}
	GOTO       L_scrollMessage35
L_scrollMessage36:
;voting3.c,115 :: 		}
L_end_scrollMessage:
	RETURN
; end of _scrollMessage

_showResults:

;voting3.c,117 :: 		void showResults(int *votes) {
;voting3.c,118 :: 		int maxVote = 0, winner = -1;
	CLRF       showResults_maxVote_L0+0
	CLRF       showResults_maxVote_L0+1
	MOVLW      255
	MOVWF      showResults_winner_L0+0
	MOVLW      255
	MOVWF      showResults_winner_L0+1
	CLRF       showResults_countMaxVote_L0+0
	CLRF       showResults_countMaxVote_L0+1
;voting3.c,120 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;voting3.c,121 :: 		Lcd_Out(1, 1, "Results:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_voting3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;voting3.c,123 :: 		for (i = 0; i < 6; i++) {
	CLRF       showResults_i_L0+0
	CLRF       showResults_i_L0+1
L_showResults52:
	MOVLW      128
	XORWF      showResults_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__showResults80
	MOVLW      6
	SUBWF      showResults_i_L0+0, 0
L__showResults80:
	BTFSC      STATUS+0, 0
	GOTO       L_showResults53
;voting3.c,124 :: 		Lcd_Out(2, 1, "Candidate ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_voting3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;voting3.c,125 :: 		Lcd_Chr(2, 11, numbers[i + 1]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       showResults_i_L0+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      showResults_i_L0+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      _numbers+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;voting3.c,126 :: 		Lcd_Out(2, 12, "=");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_voting3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;voting3.c,127 :: 		Lcd_Chr(2, 14, numbers[(votes[i] / 100) % 10]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       showResults_i_L0+0, 0
	MOVWF      R0+0
	MOVF       showResults_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDWF      FARG_showResults_votes+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+1
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      _numbers+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;voting3.c,128 :: 		Lcd_Chr(2, 15, numbers[(votes[i] / 10) % 10]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       showResults_i_L0+0, 0
	MOVWF      R0+0
	MOVF       showResults_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDWF      FARG_showResults_votes+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      _numbers+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;voting3.c,129 :: 		Lcd_Chr(2, 16, numbers[votes[i] % 10]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       showResults_i_L0+0, 0
	MOVWF      R0+0
	MOVF       showResults_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDWF      FARG_showResults_votes+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      _numbers+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;voting3.c,130 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_showResults55:
	DECFSZ     R13+0, 1
	GOTO       L_showResults55
	DECFSZ     R12+0, 1
	GOTO       L_showResults55
	DECFSZ     R11+0, 1
	GOTO       L_showResults55
	NOP
	NOP
;voting3.c,131 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;voting3.c,134 :: 		if (votes[i] > maxVote) {
	MOVF       showResults_i_L0+0, 0
	MOVWF      R0+0
	MOVF       showResults_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDWF      FARG_showResults_votes+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      128
	XORWF      showResults_maxVote_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__showResults81
	MOVF       R1+0, 0
	SUBWF      showResults_maxVote_L0+0, 0
L__showResults81:
	BTFSC      STATUS+0, 0
	GOTO       L_showResults56
;voting3.c,135 :: 		maxVote = votes[i];
	MOVF       showResults_i_L0+0, 0
	MOVWF      R0+0
	MOVF       showResults_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDWF      FARG_showResults_votes+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      showResults_maxVote_L0+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      showResults_maxVote_L0+1
;voting3.c,136 :: 		winner = i + 1;
	MOVF       showResults_i_L0+0, 0
	ADDLW      1
	MOVWF      showResults_winner_L0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      showResults_i_L0+1, 0
	MOVWF      showResults_winner_L0+1
;voting3.c,137 :: 		}
L_showResults56:
;voting3.c,123 :: 		for (i = 0; i < 6; i++) {
	INCF       showResults_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       showResults_i_L0+1, 1
;voting3.c,138 :: 		}
	GOTO       L_showResults52
L_showResults53:
;voting3.c,140 :: 		for (i = 0; i < 6; i++) {
	CLRF       showResults_i_L0+0
	CLRF       showResults_i_L0+1
L_showResults57:
	MOVLW      128
	XORWF      showResults_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__showResults82
	MOVLW      6
	SUBWF      showResults_i_L0+0, 0
L__showResults82:
	BTFSC      STATUS+0, 0
	GOTO       L_showResults58
;voting3.c,141 :: 		if (votes[i] == maxVote) {
	MOVF       showResults_i_L0+0, 0
	MOVWF      R0+0
	MOVF       showResults_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDWF      FARG_showResults_votes+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVF       R1+1, 0
	XORWF      showResults_maxVote_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__showResults83
	MOVF       showResults_maxVote_L0+0, 0
	XORWF      R1+0, 0
L__showResults83:
	BTFSS      STATUS+0, 2
	GOTO       L_showResults60
;voting3.c,142 :: 		countMaxVote++;
	INCF       showResults_countMaxVote_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       showResults_countMaxVote_L0+1, 1
;voting3.c,143 :: 		}
L_showResults60:
;voting3.c,140 :: 		for (i = 0; i < 6; i++) {
	INCF       showResults_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       showResults_i_L0+1, 1
;voting3.c,144 :: 		}
	GOTO       L_showResults57
L_showResults58:
;voting3.c,146 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;voting3.c,147 :: 		if (countMaxVote > 1) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      showResults_countMaxVote_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__showResults84
	MOVF       showResults_countMaxVote_L0+0, 0
	SUBLW      1
L__showResults84:
	BTFSC      STATUS+0, 0
	GOTO       L_showResults61
;voting3.c,148 :: 		Lcd_Out(1, 1, "No clear winner");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_voting3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;voting3.c,149 :: 		} else if (winner != -1) {
	GOTO       L_showResults62
L_showResults61:
	MOVLW      255
	XORWF      showResults_winner_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__showResults85
	MOVLW      255
	XORWF      showResults_winner_L0+0, 0
L__showResults85:
	BTFSC      STATUS+0, 2
	GOTO       L_showResults63
;voting3.c,150 :: 		Lcd_Out(1, 1, "Winner Candidate");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_voting3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;voting3.c,151 :: 		Lcd_Chr(1, 16, numbers[winner]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       showResults_winner_L0+0, 0
	ADDLW      _numbers+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;voting3.c,152 :: 		Lcd_Out(2, 1, "Votes: ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_voting3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;voting3.c,153 :: 		Lcd_Chr(2, 8, numbers[(maxVote / 100) % 10]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       showResults_maxVote_L0+0, 0
	MOVWF      R0+0
	MOVF       showResults_maxVote_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      _numbers+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;voting3.c,154 :: 		Lcd_Chr(2, 9, numbers[(maxVote / 10) % 10]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       showResults_maxVote_L0+0, 0
	MOVWF      R0+0
	MOVF       showResults_maxVote_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      _numbers+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;voting3.c,155 :: 		Lcd_Chr(2, 10, numbers[maxVote % 10]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       showResults_maxVote_L0+0, 0
	MOVWF      R0+0
	MOVF       showResults_maxVote_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      _numbers+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;voting3.c,156 :: 		}
L_showResults63:
L_showResults62:
;voting3.c,157 :: 		Delay_ms(10000);
	MOVLW      102
	MOVWF      R11+0
	MOVLW      118
	MOVWF      R12+0
	MOVLW      193
	MOVWF      R13+0
L_showResults64:
	DECFSZ     R13+0, 1
	GOTO       L_showResults64
	DECFSZ     R12+0, 1
	GOTO       L_showResults64
	DECFSZ     R11+0, 1
	GOTO       L_showResults64
;voting3.c,158 :: 		}
L_end_showResults:
	RETURN
; end of _showResults
