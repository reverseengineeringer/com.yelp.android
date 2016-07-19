.class public final Lcom/yelp/android/database/g$a;
.super Lcom/yelp/android/util/q;
.source "Database.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/database/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/util/q",
        "<",
        "Landroid/database/sqlite/SQLiteOpenHelper;",
        "Ljava/lang/Void;",
        "Landroid/database/sqlite/SQLiteDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Lcom/yelp/android/database/g$c;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/yelp/android/util/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 264
    aget-object v1, p1, v0

    .line 266
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 267
    const-string/jumbo v2, "Took %s ms to load the databases"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/yelp/android/database/g$a;->b:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/yelp/android/database/g$a;->a:[Lcom/yelp/android/database/g$c;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 273
    invoke-interface {v4, v1}, Lcom/yelp/android/database/g$c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    const-string/jumbo v0, "vacuum;"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    return-object v1
.end method

.method public a([Lcom/yelp/android/database/g$c;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/yelp/android/database/g$a;->a:[Lcom/yelp/android/database/g$c;

    .line 254
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    check-cast p1, [Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/g$a;->a([Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Lcom/yelp/android/util/q;->onPreExecute()V

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/database/g$a;->b:J

    .line 260
    return-void
.end method
