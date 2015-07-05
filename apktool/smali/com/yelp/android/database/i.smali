.class Lcom/yelp/android/database/i;
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
    .line 129
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/yelp/android/database/i;->a:Landroid/os/AsyncTask;

    .line 131
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 135
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/i;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    aget-object v1, p1, v6

    .line 143
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v0, v2}, Lcom/yelp/android/database/d;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    const-string/jumbo v3, "recently_viewed_businesses"

    invoke-static {v1}, Lcom/yelp/android/database/d;->b(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/ContentValues;

    move-result-object v1

    const-string/jumbo v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_0
    return-object v7

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string/jumbo v1, "AdapterRecentlyViewedBusinesses"

    const-string/jumbo v2, "Could not update the business"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    check-cast p1, [Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/i;->a([Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
