.class public Lcom/bumptech/glide/j;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/i;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bumptech/glide/manager/h;

.field private final c:Lcom/bumptech/glide/manager/l;

.field private final d:Lcom/bumptech/glide/h;

.field private final e:Lcom/bumptech/glide/o;

.field private f:Lcom/bumptech/glide/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/h;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/bumptech/glide/manager/l;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/l;-><init>()V

    new-instance v1, Lcom/bumptech/glide/manager/e;

    invoke-direct {v1}, Lcom/bumptech/glide/manager/e;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bumptech/glide/j;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/e;)V

    .line 52
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/e;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/j;->a:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/bumptech/glide/j;->b:Lcom/bumptech/glide/manager/h;

    .line 58
    iput-object p3, p0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/manager/l;

    .line 59
    invoke-static {p1}, Lcom/bumptech/glide/h;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/j;->d:Lcom/bumptech/glide/h;

    .line 60
    new-instance v0, Lcom/bumptech/glide/o;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/o;-><init>(Lcom/bumptech/glide/j;)V

    iput-object v0, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/o;

    .line 62
    new-instance v0, Lcom/bumptech/glide/p;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/p;-><init>(Lcom/bumptech/glide/manager/l;)V

    invoke-virtual {p4, p1, v0}, Lcom/bumptech/glide/manager/e;->a(Landroid/content/Context;Lcom/bumptech/glide/manager/d;)Lcom/bumptech/glide/manager/c;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/yelp/android/ai/f;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bumptech/glide/k;

    invoke-direct {v2, p0, p2}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/j;Lcom/bumptech/glide/manager/h;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    :goto_0
    invoke-interface {p2, v0}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    .line 79
    return-void

    .line 76
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/bumptech/glide/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Class;)Lcom/bumptech/glide/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/bumptech/glide/j;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/v/m;

    move-result-object v2

    .line 575
    iget-object v0, p0, Lcom/bumptech/glide/j;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/v/m;

    move-result-object v3

    .line 577
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 578
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". You must provide a Model of a type for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    iget-object v9, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/o;

    new-instance v0, Lcom/bumptech/glide/d;

    iget-object v4, p0, Lcom/bumptech/glide/j;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/j;->d:Lcom/bumptech/glide/h;

    iget-object v6, p0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/manager/l;

    iget-object v7, p0, Lcom/bumptech/glide/j;->b:Lcom/bumptech/glide/manager/h;

    iget-object v8, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/o;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/d;-><init>(Ljava/lang/Class;Lcom/yelp/android/v/m;Lcom/yelp/android/v/m;Landroid/content/Context;Lcom/bumptech/glide/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/o;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/h;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/j;->d:Lcom/bumptech/glide/h;

    return-object v0
.end method

.method static synthetic c(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/manager/l;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/manager/l;

    return-object v0
.end method

.method static synthetic d(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/manager/h;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/j;->b:Lcom/bumptech/glide/manager/h;

    return-object v0
.end method

.method static synthetic e(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/o;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/o;

    return-object v0
.end method

.method static synthetic f(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/l;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/j;->f:Lcom/bumptech/glide/l;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;)Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/d",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->h()Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->i()Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->f()Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method

.method public a(Lcom/yelp/android/v/m;Ljava/lang/Class;)Lcom/bumptech/glide/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yelp/android/v/m",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/m",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lcom/bumptech/glide/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/m;-><init>(Lcom/bumptech/glide/j;Lcom/yelp/android/v/m;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/yelp/android/ai/f;->a()V

    .line 131
    iget-object v0, p0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/l;->a()V

    .line 132
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/yelp/android/ai/f;->a()V

    .line 142
    iget-object v0, p0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/l;->b()V

    .line 143
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->b()V

    .line 153
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->a()V

    .line 162
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/l;->c()V

    .line 171
    return-void
.end method

.method public f()Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;)Lcom/bumptech/glide/d;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/d",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    const-class v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/bumptech/glide/j;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/v/m;

    move-result-object v0

    .line 363
    new-instance v2, Lcom/yelp/android/x/c;

    iget-object v1, p0, Lcom/bumptech/glide/j;->a:Landroid/content/Context;

    invoke-direct {v2, v1, v0}, Lcom/yelp/android/x/c;-><init>(Landroid/content/Context;Lcom/yelp/android/v/m;)V

    .line 364
    const-class v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/bumptech/glide/j;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/v/m;

    move-result-object v3

    .line 367
    iget-object v9, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/o;

    new-instance v0, Lcom/bumptech/glide/d;

    const-class v1, Landroid/net/Uri;

    iget-object v4, p0, Lcom/bumptech/glide/j;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/j;->d:Lcom/bumptech/glide/h;

    iget-object v6, p0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/manager/l;

    iget-object v7, p0, Lcom/bumptech/glide/j;->b:Lcom/bumptech/glide/manager/h;

    iget-object v8, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/o;

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/d;-><init>(Ljava/lang/Class;Lcom/yelp/android/v/m;Lcom/yelp/android/v/m;Landroid/content/Context;Lcom/bumptech/glide/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/o;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method

.method public h()Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/d",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    const-class v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;)Lcom/bumptech/glide/d;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/bumptech/glide/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;)Lcom/bumptech/glide/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/yelp/android/ah/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/load/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method
