page 90004 "Flight Management Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Flight Manage";
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Flight Number "; Rec."Flight Number ")
                {
                    ApplicationArea = All;

                }

                field("Aircraft Weight"; Rec."Aircraft Weight")
                {
                    ApplicationArea = All;

                }

                field("Max.Baggage Capacity"; Rec."Max.Baggage Capacity")
                {
                    ApplicationArea = All;

                }

                field("No.of Seat"; Rec."No.of Seat")
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}