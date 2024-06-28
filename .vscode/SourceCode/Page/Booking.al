page 90012 "Booking Card"
{
    PageType = Card;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Ticket Number"; "Ticket Number")
                {
                    TableRelation = "Flight Ticket";
                    ApplicationArea = All;
                    ShowMandatory = true;

                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin

                    end;
                }

                field("Customer Name"; "Customer Name")
                {
                    ApplicationArea = All;
                }

                field("Customer No"; "Customer No")
                {
                    ApplicationArea = All;
                }

                field("Destination location"; "Destination location")
                {
                    ApplicationArea = All;
                    TableRelation = "Country/Region";
                }

                field("Source Location"; "Source Location")
                {
                    ApplicationArea = All;
                    TableRelation = "Country/Region";
                }


                field("Flight Date"; "Flight Date")
                {
                    ApplicationArea = All;
                }

                field("Flight Time"; "Flight Time")
                {
                    ApplicationArea = All;
                }

                field("Ticket Price"; "Ticket Price")
                {
                    ApplicationArea = All;
                }
            }

        }
    }

    actions
    {
        area(Processing)
        {
            action(BookFlight)
            {
                ApplicationArea = All;
                Image = BookingsLogo;
                Promoted = true;
                PromotedCategory = Process;
                Caption = 'Book Flight';

                trigger OnAction()
                begin



                end;
            }
        }
    }

    var
        myInt: Integer;
        FightTicket: Record "Flight Ticket";
        FligtManagement: Record "Flight Manage";
        "Ticket Number": Code[20];
        "Customer No": code[20];
        "Customer Name": code[100];
        "Source Location": Code[20];
        "Destination location": code[20];
        "Age Group": Enum AgeGroup;
        "Ticket Price": Decimal;
        "Flight Date": Date;
        "Flight Time": Time;












    local procedure BookFlightList(var Flight: Record "Flight Ticket"; var manageFlight: Record "Flight Manage")
    var
        myInt: Integer;
    begin

    end;

}