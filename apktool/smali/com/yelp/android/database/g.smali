.class Lcom/yelp/android/database/g;
.super Lcom/yelp/android/util/aa;
.source "AdapterRecentlyViewedBusinesses.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/util/aa",
        "<",
        "Ljava/lang/Void;",
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
    .line 311
    invoke-direct {p0}, Lcom/yelp/android/util/aa;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/yelp/android/database/g;->a:Landroid/os/AsyncTask;

    .line 313
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/g;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 319
    const-string/jumbo v1, "DELETE FROM recently_viewed_businesses"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    const-string/jumbo v1, "AdapterRecentlyViewedBusinesses"

    const-string/jumbo v2, "Error clearing recents table."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 307
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/g;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
