table 90003 "Flight Manage"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Flight Number "; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Aircraft Weight"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(3; "No.of Seat"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Max.Baggage Capacity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Flight Number ")
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

    trigger OnInsert()
    begin

    end;

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