page 90008 "Flight Ticket Card"
{
    PageType = Card;
    SourceTable = "Flight Ticket";

    layout
    {
        area(Content)
        {
            group("Flight Details")
            {
                field("Ticket Number"; Rec."Ticket Number") { ApplicationArea = All; }

                field("Customer Code"; Rec."Customer Name") { ApplicationArea = All; }
                field("Customer Name"; Rec."Customer Name") { ApplicationArea = All; }
                field("Source Location"; Rec."Source Location") { ApplicationArea = All; }
                field("Destination Location"; Rec."Destination Location") { ApplicationArea = All; }
                field("Flight No"; Rec."Flight No") { ApplicationArea = All; }
                field("Ticket Price"; Rec."Ticket Price") { ApplicationArea = All; }
                field("Flight Date"; Rec."Flight Date") { ApplicationArea = All; }
                field("Flight Time"; Rec."Flight Time") { ApplicationArea = All; }
                field("Age Group"; Rec."Age Group") { ApplicationArea = All; }
                field("Ticket Type"; Rec."Ticket Type") { ApplicationArea = All; }
            }

        }
    }
    actions
    {
        area(Processing)
        {
            action(Booking)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}