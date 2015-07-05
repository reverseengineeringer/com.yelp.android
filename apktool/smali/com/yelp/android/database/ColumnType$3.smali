.class final enum Lcom/yelp/android/database/ColumnType$3;
.super Lcom/yelp/android/database/ColumnType;
.source "ColumnType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/database/ColumnType;-><init>(Ljava/lang/String;ILcom/yelp/android/database/ColumnType$1;)V

    return-void
.end method


# virtual methods
.method public writeContentValues(Landroid/database/Cursor;Ljava/lang/String;ILandroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 25
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    return-void
.end method
