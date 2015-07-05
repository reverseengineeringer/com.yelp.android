.class final enum Lcom/yelp/android/database/ColumnType$1;
.super Lcom/yelp/android/database/ColumnType;
.source "ColumnType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/database/ColumnType;-><init>(Ljava/lang/String;ILcom/yelp/android/database/ColumnType$1;)V

    return-void
.end method


# virtual methods
.method public writeContentValues(Landroid/database/Cursor;Ljava/lang/String;ILandroid/content/ContentValues;)V
    .locals 1

    .prologue
    .line 11
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 12
    return-void
.end method
