.class public Lcom/yelp/android/database/savedsearch/a;
.super Ljava/lang/Object;
.source "AdapterCachedSearch.java"


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

.field private b:Lcom/yelp/android/database/aa;

.field private c:Lcom/yelp/android/database/aa;


# direct methods
.method public constructor <init>(Landroid/os/AsyncTask;)V
    .locals 1
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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yelp/android/database/savedsearch/a;->a:Landroid/os/AsyncTask;

    .line 22
    new-instance v0, Lcom/yelp/android/database/savedsearch/j;

    invoke-direct {v0}, Lcom/yelp/android/database/savedsearch/j;-><init>()V

    invoke-virtual {v0}, Lcom/yelp/android/database/savedsearch/j;->a()Lcom/yelp/android/database/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/a;->b:Lcom/yelp/android/database/aa;

    .line 23
    new-instance v0, Lcom/yelp/android/database/savedsearch/h;

    invoke-direct {v0}, Lcom/yelp/android/database/savedsearch/h;-><init>()V

    invoke-virtual {v0}, Lcom/yelp/android/database/savedsearch/h;->a()Lcom/yelp/android/database/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/a;->c:Lcom/yelp/android/database/aa;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/database/savedsearch/a;)Lcom/yelp/android/database/aa;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/a;->b:Lcom/yelp/android/database/aa;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/database/savedsearch/a;)Lcom/yelp/android/database/aa;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/a;->c:Lcom/yelp/android/database/aa;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/database/savedsearch/i;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/a;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/yelp/android/appdata/i;->N()J

    move-result-wide v2

    .line 37
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    move-object v0, v1

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 31
    goto :goto_0

    .line 41
    :cond_1
    new-instance v4, Lcom/yelp/android/database/z;

    iget-object v5, p0, Lcom/yelp/android/database/savedsearch/a;->b:Lcom/yelp/android/database/aa;

    invoke-direct {v4, v5, v0}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 42
    const-string/jumbo v5, "id"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/yelp/android/database/z;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 45
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 46
    new-instance v6, Lcom/yelp/android/database/z;

    iget-object v7, p0, Lcom/yelp/android/database/savedsearch/a;->c:Lcom/yelp/android/database/aa;

    invoke-direct {v6, v7, v0}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    const-string/jumbo v0, "filter_id"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/yelp/android/database/z;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 51
    new-instance v0, Lcom/yelp/android/database/savedsearch/i;

    invoke-direct {v0, v5, v2}, Lcom/yelp/android/database/savedsearch/i;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 52
    invoke-virtual {v0}, Lcom/yelp/android/database/savedsearch/i;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v0, v4, v6}, Lcom/yelp/android/database/savedsearch/i;->b(Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;)V

    :cond_2
    move-object v0, v1

    .line 58
    goto :goto_0
.end method

.method public a(Lcom/yelp/android/database/savedsearch/i;)V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lcom/yelp/android/database/savedsearch/b;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/database/savedsearch/b;-><init>(Lcom/yelp/android/database/savedsearch/a;Lcom/yelp/android/database/savedsearch/i;)V

    .line 72
    new-instance v1, Lcom/yelp/android/database/u;

    iget-object v2, p0, Lcom/yelp/android/database/savedsearch/a;->a:Landroid/os/AsyncTask;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/database/u;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/w;Lcom/yelp/android/database/v;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method
