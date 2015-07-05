.class public final Lcom/yelp/android/o/c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/o/a;

.field private final b:Lcom/yelp/android/o/d;

.field private final c:[Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/yelp/android/o/a;Lcom/yelp/android/o/d;)V
    .locals 1

    .prologue
    .line 710
    iput-object p1, p0, Lcom/yelp/android/o/c;->a:Lcom/yelp/android/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p2, p0, Lcom/yelp/android/o/c;->b:Lcom/yelp/android/o/d;

    .line 712
    invoke-static {p2}, Lcom/yelp/android/o/d;->d(Lcom/yelp/android/o/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/o/c;->c:[Z

    .line 713
    return-void

    .line 712
    :cond_0
    invoke-static {p1}, Lcom/yelp/android/o/a;->e(Lcom/yelp/android/o/a;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/yelp/android/o/a;Lcom/yelp/android/o/d;Lcom/yelp/android/o/b;)V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/o/c;-><init>(Lcom/yelp/android/o/a;Lcom/yelp/android/o/d;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/o/c;)Lcom/yelp/android/o/d;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/yelp/android/o/c;->b:Lcom/yelp/android/o/d;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/o/c;)[Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/yelp/android/o/c;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 3

    .prologue
    .line 745
    iget-object v1, p0, Lcom/yelp/android/o/c;->a:Lcom/yelp/android/o/a;

    monitor-enter v1

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/o/c;->b:Lcom/yelp/android/o/d;

    invoke-static {v0}, Lcom/yelp/android/o/d;->a(Lcom/yelp/android/o/d;)Lcom/yelp/android/o/c;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 749
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yelp/android/o/c;->b:Lcom/yelp/android/o/d;

    invoke-static {v0}, Lcom/yelp/android/o/d;->d(Lcom/yelp/android/o/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/yelp/android/o/c;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/o/c;->b:Lcom/yelp/android/o/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/o/d;->b(I)Ljava/io/File;

    move-result-object v0

    .line 753
    iget-object v2, p0, Lcom/yelp/android/o/c;->a:Lcom/yelp/android/o/a;

    invoke-static {v2}, Lcom/yelp/android/o/a;->f(Lcom/yelp/android/o/a;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 754
    iget-object v2, p0, Lcom/yelp/android/o/c;->a:Lcom/yelp/android/o/a;

    invoke-static {v2}, Lcom/yelp/android/o/a;->f(Lcom/yelp/android/o/a;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 756
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 781
    iget-object v0, p0, Lcom/yelp/android/o/c;->a:Lcom/yelp/android/o/a;

    invoke-static {v0, p0, v1}, Lcom/yelp/android/o/a;->a(Lcom/yelp/android/o/a;Lcom/yelp/android/o/c;Z)V

    .line 782
    iput-boolean v1, p0, Lcom/yelp/android/o/c;->d:Z

    .line 783
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/yelp/android/o/c;->a:Lcom/yelp/android/o/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/yelp/android/o/a;->a(Lcom/yelp/android/o/a;Lcom/yelp/android/o/c;Z)V

    .line 791
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/yelp/android/o/c;->d:Z

    if-nez v0, :cond_0

    .line 796
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/o/c;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 797
    :catch_0
    move-exception v0

    goto :goto_0
.end method
