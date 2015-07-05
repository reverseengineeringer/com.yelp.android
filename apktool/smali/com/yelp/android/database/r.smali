.class public final Lcom/yelp/android/database/r;
.super Lcom/yelp/android/util/aa;
.source "Database.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/util/aa",
        "<",
        "Landroid/database/sqlite/SQLiteOpenHelper;",
        "Ljava/lang/Void;",
        "Landroid/database/sqlite/SQLiteDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Lcom/yelp/android/database/t;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/yelp/android/util/aa;-><init>()V

    .line 264
    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 278
    aget-object v1, p1, v0

    .line 280
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 281
    const-string/jumbo v2, "Took %s ms to load the databases"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/yelp/android/database/r;->b:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 283
    iget-object v2, p0, Lcom/yelp/android/database/r;->a:[Lcom/yelp/android/database/t;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 284
    invoke-interface {v4, v1}, Lcom/yelp/android/database/t;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    const-string/jumbo v0, "vacuum;"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 287
    return-object v1
.end method

.method public a([Lcom/yelp/android/database/t;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/yelp/android/database/r;->a:[Lcom/yelp/android/database/t;

    .line 268
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    check-cast p1, [Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/r;->a([Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lcom/yelp/android/util/aa;->onPreExecute()V

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/database/r;->b:J

    .line 274
    return-void
.end method
