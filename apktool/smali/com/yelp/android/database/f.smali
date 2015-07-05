.class Lcom/yelp/android/database/f;
.super Landroid/os/AsyncTask;
.source "AdapterRecentlyViewedBusinesses.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<**",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/os/AsyncTask;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<**",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;",
            "Landroid/database/sqlite/SQLiteStatement;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/yelp/android/database/f;->a:Landroid/os/AsyncTask;

    .line 231
    iput-object p2, p0, Lcom/yelp/android/database/f;->b:Landroid/database/sqlite/SQLiteStatement;

    .line 232
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/Void;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 236
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/f;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    aget-object v9, p1, v10

    .line 245
    const-string/jumbo v1, "recently_viewed_businesses"

    const-string/jumbo v2, "business_id = ?"

    new-array v4, v11, [Ljava/lang/String;

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/yelp/android/database/f;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v1}, Lcom/yelp/android/database/d;->a(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v4

    .line 254
    const-wide/16 v6, 0x19

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    .line 255
    const-string/jumbo v1, "recently_viewed_businesses"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v10

    const-string/jumbo v4, "business_id"

    aput-object v4, v2, v11

    const-string/jumbo v8, "1"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_1

    .line 259
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    :try_start_1
    const-string/jumbo v1, "recently_viewed_businesses"

    const-string/jumbo v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_1
    :try_start_2
    const-string/jumbo v1, "recently_viewed_businesses"

    const/4 v2, 0x0

    invoke-static {v9}, Lcom/yelp/android/database/d;->b(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 282
    :goto_1
    return-object v3

    .line 239
    :catch_0
    move-exception v0

    .line 241
    const-string/jumbo v1, "AdapterRecentlyViewedBusinesses"

    const-string/jumbo v2, "Something went wrong writing recents"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 264
    :catch_1
    move-exception v1

    .line 265
    const-string/jumbo v4, "AdapterRecentlyViewedBusinesses"

    const-string/jumbo v5, "Error deleting oldest business entry from recents."

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v1, v6, v10

    invoke-static {v4, v5, v6}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 278
    :catch_2
    move-exception v0

    .line 279
    const-string/jumbo v1, "AdapterRecentlyViewedBusinesses"

    const-string/jumbo v2, "Error adding business to end of recents table."

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v0, v4, v10

    invoke-static {v1, v2, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    check-cast p1, [Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/f;->a([Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
