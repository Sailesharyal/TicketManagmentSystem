table 90010 "Flight Ticket"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Ticket Number"; Code[20]) { DataClassification = ToBeClassified; }
        field(2; "For No.Series"; Code[30]) { DataClassification = ToBeClassified; TableRelation = "No. Series"; }
        field(3; "Customer Code"; Text[100]) { DataClassification = ToBeClassified; TableRelation = Customer; }
        field(4; "Source Location"; Code[20]) { DataClassification = ToBeClassified; TableRelation = "Country/Region"; }
        field(5; "Destination Location"; Code[20]) { DataClassification = ToBeClassified; TableRelation = "Country/Region"; }
        field(6; "Flight No"; Code[20]) { DataClassification = ToBeClassified; TableRelation = "Flight Manage"; }
        field(7; "Ticket Price"; Decimal) { DataClassification = ToBeClassified; }
        field(8; "Flight Date"; Date) { DataClassification = ToBeClassified; }
        field(9; "Flight Time"; Time) { DataClassification = ToBeClassified; }
        field(10; "Age Group"; Enum "AgeGroup") { DataClassification = ToBeClassified; }
        field(11; "Ticket Type"; Enum "TicketType") { DataClassification = ToBeClassified; }
        field(12; "Customer Name"; Code[100]) { FieldClass = FlowField; CalcFormula = lookup(Customer.Name where("No." = field("Customer Code"))); }




    }

    keys
    {
        key(Key1; "Ticket Number")
        {
            Clustered = true;

        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
        "Sales&Recivable": Record "Sales & Receivables Setup";
        "NoSeriesManagment": Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if rec."Ticket Number" = '' then
            "Sales&Recivable".Get();
        NoSeriesManagment.InitSeries("Sales&Recivable"."Flight Ticket", "Sales&Recivable"."Flight Ticket", 0D, "Ticket Number", "For No.Series");
    End;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}