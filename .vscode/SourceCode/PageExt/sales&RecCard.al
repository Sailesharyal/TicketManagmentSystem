pageextension 90008 "Sales&RecCard" extends "Sales & Receivables Setup"
{
    layout
    {
        addbefore("Customer Nos.")
        {
            field("Flight Ticket"; Rec."Flight Ticket")
            {
                ApplicationArea = All;
                TableRelation = "No. Series";
            }
        }


    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}