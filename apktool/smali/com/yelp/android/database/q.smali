.class public Lcom/yelp/android/database/q;
.super Ljava/lang/Object;
.source "Database.java"


# instance fields
.field a:Lcom/yelp/android/database/r;

.field private b:Lcom/yelp/android/database/s;

.field private c:Lcom/yelp/android/database/l;

.field private d:Lcom/yelp/android/database/savedsearch/a;

.field private e:Lcom/yelp/android/database/j;

.field private f:Lcom/yelp/android/database/d;

.field private g:Lcom/yelp/android/ax/a;

.field private h:Lcom/yelp/android/ay/a;

.field private i:Lcom/yelp/android/ay/e;

.field private j:Lcom/yelp/android/database/savedsearch/c;

.field private k:Lcom/yelp/android/ay/i;

.field private l:Lcom/yelp/android/database/AdapterNearbyFilters;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/yelp/android/database/s;

    invoke-direct {v0, p1}, Lcom/yelp/android/database/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/database/q;->b:Lcom/yelp/android/database/s;

    .line 50
    invoke-direct {p0}, Lcom/yelp/android/database/q;->k()V

    .line 51
    return-void
.end method

.method private k()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    new-instance v0, Lcom/yelp/android/database/r;

    invoke-direct {v0}, Lcom/yelp/android/database/r;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    .line 76
    new-instance v0, Lcom/yelp/android/database/l;

    iget-object v1, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/l;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/q;->c:Lcom/yelp/android/database/l;

    .line 77
    new-instance v0, Lcom/yelp/android/database/savedsearch/a;

    iget-object v1, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/savedsearch/a;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/q;->d:Lcom/yelp/android/database/savedsearch/a;

    .line 78
    new-instance v0, Lcom/yelp/android/database/c;

    iget-object v1, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/c;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/q;->e:Lcom/yelp/android/database/j;

    .line 79
    new-instance v0, Lcom/yelp/android/database/d;

    iget-object v1, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/d;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/q;->f:Lcom/yelp/android/database/d;

    .line 80
    new-instance v0, Lcom/yelp/android/ax/a;

    iget-object v1, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    invoke-direct {v0, v1}, Lcom/yelp/android/ax/a;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/q;->g:Lcom/yelp/android/ax/a;

    .line 81
    new-instance v0, Lcom/yelp/android/ay/a;

    iget-object v1, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    invoke-direct {v0, v1}, Lcom/yelp/android/ay/a;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/q;->h:Lcom/yelp/android/ay/a;

    .line 82
    new-instance v0, Lcom/yelp/android/ay/e;

    iget-object v1, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    invoke-direct {v0, v1}, Lcom/yelp/android/ay/e;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/q;->i:Lcom/yelp/android/ay/e;

    .line 83
    new-instance v0, Lcom/yelp/android/database/savedsearch/c;

    iget-object v1, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/savedsearch/c;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/q;->j:Lcom/yelp/android/database/savedsearch/c;

    .line 84
    new-instance v0, Lcom/yelp/android/database/AdapterNearbyFilters;

    iget-object v1, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/AdapterNearbyFilters;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/q;->l:Lcom/yelp/android/database/AdapterNearbyFilters;

    .line 85
    new-instance v0, Lcom/yelp/android/ay/i;

    iget-object v1, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    invoke-direct {v0, v1}, Lcom/yelp/android/ay/i;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/q;->k:Lcom/yelp/android/ay/i;

    .line 87
    iget-object v0, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/yelp/android/database/t;

    iget-object v2, p0, Lcom/yelp/android/database/q;->c:Lcom/yelp/android/database/l;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/yelp/android/database/q;->e:Lcom/yelp/android/database/j;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/yelp/android/database/q;->f:Lcom/yelp/android/database/d;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/yelp/android/database/q;->g:Lcom/yelp/android/ax/a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/r;->a([Lcom/yelp/android/database/t;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    new-array v1, v5, [Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v2, p0, Lcom/yelp/android/database/q;->b:Lcom/yelp/android/database/s;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/r;->b([Ljava/lang/Object;)Lcom/yelp/android/util/aa;

    .line 94
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/q;->a:Lcom/yelp/android/database/r;

    invoke-virtual {v0}, Lcom/yelp/android/database/r;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 106
    :cond_0
    if-nez v2, :cond_1

    .line 107
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 115
    :goto_0
    return v0

    .line 112
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public b()Lcom/yelp/android/database/savedsearch/c;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/database/q;->j:Lcom/yelp/android/database/savedsearch/c;

    return-object v0
.end method

.method public c()Lcom/yelp/android/database/l;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/yelp/android/database/q;->c:Lcom/yelp/android/database/l;

    return-object v0
.end method

.method public d()Lcom/yelp/android/database/savedsearch/a;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yelp/android/database/q;->d:Lcom/yelp/android/database/savedsearch/a;

    return-object v0
.end method

.method public e()Lcom/yelp/android/database/j;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yelp/android/database/q;->e:Lcom/yelp/android/database/j;

    return-object v0
.end method

.method public f()Lcom/yelp/android/database/d;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/database/q;->f:Lcom/yelp/android/database/d;

    return-object v0
.end method

.method public g()Lcom/yelp/android/ax/a;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yelp/android/database/q;->g:Lcom/yelp/android/ax/a;

    return-object v0
.end method

.method public h()Lcom/yelp/android/ay/a;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yelp/android/database/q;->h:Lcom/yelp/android/ay/a;

    return-object v0
.end method

.method public i()Lcom/yelp/android/ay/e;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yelp/android/database/q;->i:Lcom/yelp/android/ay/e;

    return-object v0
.end method

.method public j()Lcom/yelp/android/ay/i;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/database/q;->k:Lcom/yelp/android/ay/i;

    return-object v0
.end method
