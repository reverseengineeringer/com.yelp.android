.class public Lcom/yelp/android/database/g;
.super Ljava/lang/Object;
.source "Database.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/database/g$a;,
        Lcom/yelp/android/database/g$c;,
        Lcom/yelp/android/database/g$b;
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/database/g$a;

.field private b:Lcom/yelp/android/database/g$b;

.field private c:Lcom/yelp/android/database/d;

.field private d:Lcom/yelp/android/database/c;

.field private e:Lcom/yelp/android/database/b;

.field private f:Lcom/yelp/android/ca/a;

.field private g:Lcom/yelp/android/cc/a;

.field private h:Lcom/yelp/android/cc/b;

.field private i:Lcom/yelp/android/cc/c;

.field private j:Lcom/yelp/android/cb/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/yelp/android/database/g$b;

    invoke-direct {v0, p1}, Lcom/yelp/android/database/g$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/database/g;->b:Lcom/yelp/android/database/g$b;

    .line 41
    invoke-direct {p0}, Lcom/yelp/android/database/g;->j()V

    .line 42
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    new-instance v0, Lcom/yelp/android/database/g$a;

    invoke-direct {v0}, Lcom/yelp/android/database/g$a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/database/g;->a:Lcom/yelp/android/database/g$a;

    .line 67
    new-instance v0, Lcom/yelp/android/database/d;

    iget-object v1, p0, Lcom/yelp/android/database/g;->a:Lcom/yelp/android/database/g$a;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/d;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/g;->c:Lcom/yelp/android/database/d;

    .line 68
    new-instance v0, Lcom/yelp/android/database/a;

    iget-object v1, p0, Lcom/yelp/android/database/g;->a:Lcom/yelp/android/database/g$a;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/a;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/g;->d:Lcom/yelp/android/database/c;

    .line 69
    new-instance v0, Lcom/yelp/android/database/b;

    iget-object v1, p0, Lcom/yelp/android/database/g;->a:Lcom/yelp/android/database/g$a;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/b;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/g;->e:Lcom/yelp/android/database/b;

    .line 70
    new-instance v0, Lcom/yelp/android/ca/a;

    iget-object v1, p0, Lcom/yelp/android/database/g;->a:Lcom/yelp/android/database/g$a;

    invoke-direct {v0, v1}, Lcom/yelp/android/ca/a;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/g;->f:Lcom/yelp/android/ca/a;

    .line 71
    new-instance v0, Lcom/yelp/android/cc/a;

    iget-object v1, p0, Lcom/yelp/android/database/g;->a:Lcom/yelp/android/database/g$a;

    invoke-direct {v0, v1}, Lcom/yelp/android/cc/a;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/g;->g:Lcom/yelp/android/cc/a;

    .line 72
    new-instance v0, Lcom/yelp/android/cc/b;

    iget-object v1, p0, Lcom/yelp/android/database/g;->a:Lcom/yelp/android/database/g$a;

    invoke-direct {v0, v1}, Lcom/yelp/android/cc/b;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/g;->h:Lcom/yelp/android/cc/b;

    .line 73
    new-instance v0, Lcom/yelp/android/cb/a;

    iget-object v1, p0, Lcom/yelp/android/database/g;->a:Lcom/yelp/android/database/g$a;

    invoke-direct {v0, v1}, Lcom/yelp/android/cb/a;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/g;->j:Lcom/yelp/android/cb/a;

    .line 74
    new-instance v0, Lcom/yelp/android/cc/c;

    iget-object v1, p0, Lcom/yelp/android/database/g;->a:Lcom/yelp/android/database/g$a;

    invoke-direct {v0, v1}, Lcom/yelp/android/cc/c;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Lcom/yelp/android/database/g;->i:Lcom/yelp/android/cc/c;

    .line 76
    iget-object v0, p0, Lcom/yelp/android/database/g;->a:Lcom/yelp/android/database/g$a;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/yelp/android/database/g$c;

    iget-object v2, p0, Lcom/yelp/android/database/g;->c:Lcom/yelp/android/database/d;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/yelp/android/database/g;->d:Lcom/yelp/android/database/c;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/yelp/android/database/g;->e:Lcom/yelp/android/database/b;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/yelp/android/database/g;->f:Lcom/yelp/android/ca/a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/g$a;->a([Lcom/yelp/android/database/g$c;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/database/g;->a:Lcom/yelp/android/database/g$a;

    new-array v1, v5, [Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v2, p0, Lcom/yelp/android/database/g;->b:Lcom/yelp/android/database/g$b;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/g$a;->b([Ljava/lang/Object;)Lcom/yelp/android/util/q;

    .line 84
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/g;->a:Lcom/yelp/android/database/g$a;

    invoke-virtual {v0}, Lcom/yelp/android/database/g$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 96
    :cond_0
    if-nez v2, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 105
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public b()Lcom/yelp/android/database/d;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yelp/android/database/g;->c:Lcom/yelp/android/database/d;

    return-object v0
.end method

.method public c()Lcom/yelp/android/database/c;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/database/g;->d:Lcom/yelp/android/database/c;

    return-object v0
.end method

.method public d()Lcom/yelp/android/database/b;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/database/g;->e:Lcom/yelp/android/database/b;

    return-object v0
.end method

.method public e()Lcom/yelp/android/ca/a;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/database/g;->f:Lcom/yelp/android/ca/a;

    return-object v0
.end method

.method public f()Lcom/yelp/android/cc/a;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/database/g;->g:Lcom/yelp/android/cc/a;

    return-object v0
.end method

.method public g()Lcom/yelp/android/cc/b;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/database/g;->h:Lcom/yelp/android/cc/b;

    return-object v0
.end method

.method public h()Lcom/yelp/android/cc/c;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/yelp/android/database/g;->i:Lcom/yelp/android/cc/c;

    return-object v0
.end method

.method public i()Lcom/yelp/android/cb/a;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yelp/android/database/g;->j:Lcom/yelp/android/cb/a;

    return-object v0
.end method
