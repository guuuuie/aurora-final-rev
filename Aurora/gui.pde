/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void drawGUI(PApplet appc, GWinData data) { //_CODE_:GUI:651043:
  appc.background(230);
} //_CODE_:GUI:651043:

public void originTextfieldEnter(GTextField source, GEvent event) { //_CODE_:originTextfield:936942:
  origin = originTextfield.getText();
} //_CODE_:originTextfield:936942:

public void destTextfieldEnter(GTextField source, GEvent event) { //_CODE_:destTextfield:215619:
  destination = destTextfield.getText();
} //_CODE_:destTextfield:215619:

public void resetButtonClicked(GButton source, GEvent event) { //_CODE_:resetButton:924028:
  reset();
} //_CODE_:resetButton:924028:

public void submitButtonClicked(GButton source, GEvent event) { //_CODE_:submitButton:781352:
  ticketList.setVisible(true);  //Set the ticket drop list to visible.
  ticketPrice.setVisible(true);
  for (Seat s : reservedSeats){ //On click, generate new tickets for each seat that has been reserved.
    Ticket k = new Ticket(s, sampleCode);
    allTickets.add(k);
  }
  for (int i=0; i < allTickets.size(); i++){ //Add options to the drop list for each ticket. 
    ticketList.addItem("Ticket " + String.valueOf(i+1));  
  }
} //_CODE_:submitButton:781352:

public void numAdultsSlider(GCustomSlider source, GEvent event) { //_CODE_:numAdults:422791:
  numA = numAdults.getValueI(); 
  numTickets = numA; //Must be set in order to handle the case of someone booking tickets solely for adults.
} //_CODE_:numAdults:422791:

public void numChildrenSlider(GCustomSlider source, GEvent event) { //_CODE_:numChildren:288602:
  numC = numChildren.getValueI();
  numTickets = numA + numC;
} //_CODE_:numChildren:288602:

public void showSelectedSeatField(GTextField source, GEvent event) { //_CODE_:showSelectedSeat:601647:
} //_CODE_:showSelectedSeat:601647:

public void seatClassOptions(GDropList source, GEvent event) { //_CODE_:seatClassList:657673:
} //_CODE_:seatClassList:657673:

public void ticketListOptions(GDropList source, GEvent event) { //_CODE_:ticketList:473915:
  
} //_CODE_:ticketList:473915:

public void ticketPriceField(GTextField source, GEvent event) { //_CODE_:ticketPrice:524135:
} //_CODE_:ticketPrice:524135:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  GUI = GWindow.getWindow(this, "App Controls", 0, 0, 400, 200, JAVA2D);
  GUI.noLoop();
  GUI.setActionOnClose(G4P.KEEP_OPEN);
  GUI.addDrawHandler(this, "drawGUI");
  originTextfield = new GTextField(GUI, 6, 7, 120, 30, G4P.SCROLLBARS_NONE);
  originTextfield.setPromptText("Origin Airport Code");
  originTextfield.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  originTextfield.setOpaque(true);
  originTextfield.addEventHandler(this, "originTextfieldEnter");
  destTextfield = new GTextField(GUI, 132, 7, 155, 30, G4P.SCROLLBARS_NONE);
  destTextfield.setPromptText("Destination Airport Code");
  destTextfield.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  destTextfield.setOpaque(true);
  destTextfield.addEventHandler(this, "destTextfieldEnter");
  togGroup1 = new GToggleGroup();
  label1 = new GLabel(GUI, 6, 59, 41, 21);
  label1.setText("Adults");
  label1.setOpaque(false);
  label2 = new GLabel(GUI, 2, 113, 55, 21);
  label2.setText("Children");
  label2.setOpaque(false);
  resetButton = new GButton(GUI, 298, 7, 80, 30);
  resetButton.setText("Reset");
  resetButton.addEventHandler(this, "resetButtonClicked");
  submitButton = new GButton(GUI, 298, 47, 80, 30);
  submitButton.setText("Submit ");
  submitButton.addEventHandler(this, "submitButtonClicked");
  numAdults = new GCustomSlider(GUI, 53, 52, 104, 44, "grey_blue");
  numAdults.setShowValue(true);
  numAdults.setShowLimits(true);
  numAdults.setLimits(0, 0, 10);
  numAdults.setShowTicks(true);
  numAdults.setNumberFormat(G4P.INTEGER, 0);
  numAdults.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  numAdults.setOpaque(false);
  numAdults.addEventHandler(this, "numAdultsSlider");
  numChildren = new GCustomSlider(GUI, 61, 105, 104, 45, "grey_blue");
  numChildren.setShowValue(true);
  numChildren.setShowLimits(true);
  numChildren.setLimits(0, 0, 10);
  numChildren.setShowTicks(true);
  numChildren.setNumberFormat(G4P.INTEGER, 0);
  numChildren.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  numChildren.setOpaque(false);
  numChildren.addEventHandler(this, "numChildrenSlider");
  showSelectedSeat = new GTextField(GUI, 85, 159, 40, 28, G4P.SCROLLBARS_NONE);
  showSelectedSeat.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  showSelectedSeat.setOpaque(true);
  showSelectedSeat.addEventHandler(this, "showSelectedSeatField");
  seatClassList = new GDropList(GUI, 168, 52, 125, 120, 5, 10);
  seatClassList.setItems(loadStrings("list_657673"), 0);
  seatClassList.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  seatClassList.addEventHandler(this, "seatClassOptions");
  ticketList = new GDropList(GUI, 296, 84, 99, 88, 3, 10);
  ticketList.setItems(loadStrings("list_473915"), 0);
  ticketList.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  ticketList.addEventHandler(this, "ticketListOptions");
  label3 = new GLabel(GUI, 0, 163, 80, 20);
  label3.setText("Selected Seat");
  label3.setOpaque(false);
  ticketPrice = new GTextField(GUI, 130, 158, 120, 28, G4P.SCROLLBARS_NONE);
  ticketPrice.setPromptText("Ticket Price.");
  ticketPrice.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  ticketPrice.setOpaque(true);
  ticketPrice.addEventHandler(this, "ticketPriceField");
  GUI.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow GUI;
GTextField originTextfield; 
GTextField destTextfield; 
GToggleGroup togGroup1; 
GLabel label1; 
GLabel label2; 
GButton resetButton; 
GButton submitButton; 
GCustomSlider numAdults; 
GCustomSlider numChildren; 
GTextField showSelectedSeat; 
GDropList seatClassList; 
GDropList ticketList; 
GLabel label3; 
GTextField ticketPrice; 
