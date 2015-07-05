.class final enum Lcom/yelp/android/database/ColumnModifier$2;
.super Lcom/yelp/android/database/ColumnModifier;
.source "ColumnModifier.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/database/ColumnModifier;-><init>(Ljava/lang/String;ILcom/yelp/android/database/ColumnModifier$1;)V

    return-void
.end method


# virtual methods
.method public getSQLRepresentation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "primary key"

    return-object v0
.end method
