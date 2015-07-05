.class Lcom/yelp/android/database/h;
.super Landroid/os/AsyncTask;
.source "AdapterRecentlyViewedBusinesses.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
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


# direct methods
.method public constructor <init>(Landroid/os/AsyncTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<**",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 411
    iput-object p1, p0, Lcom/yelp/android/database/h;->a:Landroid/os/AsyncTask;

    .line 412
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 416
    aget-object v8, p1, v6

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/h;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    const-string/jumbo v1, "recently_viewed_businesses"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "business_json"

    aput-object v3, v2, v6

    const-string/jumbo v3, "yelp_request_id"

    aput-object v3, v2, v4

    const-string/jumbo v3, "business_id= ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 431
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 434
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 435
    const-string/jumbo v2, "check_in_offer"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    const-string/jumbo v2, "check_in_offer"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 439
    const-string/jumbo v4, "business_json"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string/jumbo v3, "recently_viewed_businesses"

    const-string/jumbo v4, "business_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    invoke-virtual {v0, v3, v2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 449
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 451
    :goto_1
    return-object v5

    .line 420
    :catch_0
    move-exception v0

    .line 421
    const-string/jumbo v1, "AdapterRecentlyViewedBusinesses"

    const-string/jumbo v2, "Could not remove Offer from Recents"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 449
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 444
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 406
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/h;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
