sbit switch1 at RB0_bit;
sbit switch2 at RB1_bit;
sbit switch3 at RB2_bit;
sbit switch4 at RB3_bit;
sbit switch5 at RB4_bit;
sbit switch6 at RB5_bit;
sbit switchResults at RB6_bit;

sbit LCD_RS at RD0_bit;
sbit LCD_EN at RD1_bit;
sbit LCD_D4 at RD2_bit;
sbit LCD_D5 at RD3_bit;
sbit LCD_D6 at RD4_bit;
sbit LCD_D7 at RD5_bit;

sbit LCD_RS_Direction at TRISD0_bit;
sbit LCD_EN_Direction at TRISD1_bit;
sbit LCD_D4_Direction at TRISD2_bit;
sbit LCD_D5_Direction at TRISD3_bit;
sbit LCD_D6_Direction at TRISD4_bit;
sbit LCD_D7_Direction at TRISD5_bit;

char numbers[] = "0123456789";
void displayThankYou(int candidate);
void showResults(int *votes);
void scrollMessage();

void main() {
    int votes[6] = {0}; // Array to store votes for each candidate
    Lcd_Init();         // Initialize the LCD
    Lcd_Cmd(_LCD_CURSOR_OFF); // Turn off LCD cursor

    // Configure PORTB pins as input for switches
    TRISB0_bit = 1; TRISB1_bit = 1; TRISB2_bit = 1; TRISB3_bit = 1;
    TRISB4_bit = 1; TRISB5_bit = 1; TRISB6_bit = 1;

    while (1) {
        scrollMessage();  // Display the scrolling message on the home screen

        // Check if any vote button is pressed
        if (switch1) { votes[0]++; displayThankYou(1); while (switch1); }
        if (switch2) { votes[1]++; displayThankYou(2); while (switch2); }
        if (switch3) { votes[2]++; displayThankYou(3); while (switch3); }
        if (switch4) { votes[3]++; displayThankYou(4); while (switch4); }
        if (switch5) { votes[4]++; displayThankYou(5); while (switch5); }
        if (switch6) { votes[5]++; displayThankYou(6); while (switch6); }

        // Display results if the result button is pressed
        if (switchResults) {
            showResults(votes);
            while (switchResults);
        }
    }
}

void displayThankYou(int candidate) {
    char thankYouMsg[] = "Thank You for Voting!";
    int i, j;

    // Scroll "Thank You for Voting!" message on the first line
    for (i = 0; i < strlen(thankYouMsg); i++) {
        // Clear line 1 before updating
        Lcd_Out(1, 1, "                "); // Clear line 1

        // Display a scrolling portion of thankYouMsg on line 1
        for (j = 0; j < 16 && (i + j) < strlen(thankYouMsg); j++) {
            Lcd_Chr(1, j + 1, thankYouMsg[(i + j) % strlen(thankYouMsg)]);
             Lcd_Out(2, 1, "Candidate ");
             Lcd_Chr(2, 11, numbers[candidate]);
        }

        Delay_ms(200); // Delay for visible scrolling
    }
    Delay_ms(1000);
    Lcd_Cmd(_LCD_CLEAR); // Clear LCD before returning
}


void scrollMessage() {
    char welcomeMsg[] = "Welcome to ElectraVote   ";
    char voteMsg[] = "Press button to vote for Candidates 1-6   ";
    int i, j;
    // Calculate the maximum length of scrolling for each message
    int maxScroll = (strlen(welcomeMsg) > strlen(voteMsg)) ? strlen(welcomeMsg) : strlen(voteMsg);
    // Scroll "Welcome to ElectraVote" on the first line and "Press button..." on the second line
    for (i = 0; i < maxScroll - 15; i++) {
    // Display scrolling portion of welcomeMsg on line 1
        for (j = 0; j < 16; j++) {
            if (i + j < strlen(welcomeMsg)) {
                Lcd_Chr(1, j + 1, welcomeMsg[i + j]);
            } else {
                Lcd_Chr(1, j + 1, ' '); // Clear leftover characters
            }
        }
// Display scrolling portion of voteMsg on line 2
        for (j = 0; j < 16; j++) {
            if (i + j < strlen(voteMsg)) {
                Lcd_Chr(2, j + 1, voteMsg[i + j]);
            } else {
                Lcd_Chr(2, j + 1, ' '); // Clear leftover characters
            }
        }
        Delay_ms(300);  // Delay for scrolling effect
        // Check if any button is pressed to interrupt the scrolling
        if (switch1 || switch2 || switch3 || switch4 || switch5 || switch6 || switchResults) {
            return;  // Exit scrolling if any button is pressed
        }
    }
}
void showResults(int *votes) {
    int maxVote = 0, winner = -1;
    int i, countMaxVote = 0;
    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out(1, 1, "Results:");

    for (i = 0; i < 6; i++) {
        Lcd_Out(2, 1, "Candidate ");
        Lcd_Chr(2, 11, numbers[i + 1]);
        Lcd_Out(2, 12, "=");
        Lcd_Chr(2, 14, numbers[(votes[i] / 100) % 10]);
        Lcd_Chr(2, 15, numbers[(votes[i] / 10) % 10]);
        Lcd_Chr(2, 16, numbers[votes[i] % 10]);
        Delay_ms(2000);
        Lcd_Cmd(_LCD_CLEAR);

        // Determine the winner by finding the candidate with the highest votes
        if (votes[i] > maxVote) {
            maxVote = votes[i];
            winner = i + 1;
        }
    }

    for (i = 0; i < 6; i++) {
        if (votes[i] == maxVote) {
            countMaxVote++;
        }
    }

    Lcd_Cmd(_LCD_CLEAR);
    if (countMaxVote > 1) {
        Lcd_Out(1, 1, "No clear winner");
    } else if (winner != -1) {
        Lcd_Out(1, 1, "WinnerCandidate");
        Lcd_Chr(1, 16, numbers[winner]);
        Lcd_Out(2, 1, "Votes: ");
        Lcd_Chr(2, 8, numbers[(maxVote / 100) % 10]);
        Lcd_Chr(2, 9, numbers[(maxVote / 10) % 10]);
        Lcd_Chr(2, 10, numbers[maxVote % 10]);
    }
    Delay_ms(10000);
}