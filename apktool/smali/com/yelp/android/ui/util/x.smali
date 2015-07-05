.class public abstract Lcom/yelp/android/ui/util/x;
.super Ljava/lang/Object;
.source "EasyCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<From:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TTo;>;"
        }
    .end annotation
.end field

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TTo;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/util/List",
            "<TFrom;>;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/x;->a:Landroid/util/SparseArray;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/x;->c:Z

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/x;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/util/x;->b:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/x;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/yelp/android/ui/util/x;->b:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/x;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/yelp/android/ui/util/x;->c:Z

    return p1
.end method


# virtual methods
.method public a(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "TFrom;)TTo;"
        }
    .end annotation

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/x;->c:Z

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/util/x;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/x;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 38
    invoke-virtual {p0, p2, p3}, Lcom/yelp/android/ui/util/x;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/yelp/android/ui/util/x;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/x;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TFrom;)TTo;"
        }
    .end annotation
.end method

.method public a()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/util/x;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/util/x;->d:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/util/x;->d:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 75
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/x;->c:Z

    .line 76
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TFrom;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/yelp/android/ui/util/y;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/y;-><init>(Lcom/yelp/android/ui/util/x;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/x;->d:Landroid/os/AsyncTask;

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/util/x;->d:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    return-void
.end method
