page 90003 "Flight Management List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Flight Manage";
    CardPageId = "Flight Management Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
        area(Factboxes)
        {

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
}