.class public abstract Lcom/yelp/android/cr/a;
.super Ljava/lang/Object;
.source "AbstractValueCache.java"

# interfaces
.implements Lcom/yelp/android/cr/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/cr/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/cr/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/cr/c",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/cr/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/cr/c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yelp/android/cr/a;->a:Lcom/yelp/android/cr/c;

    .line 32
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    if-nez p2, :cond_0

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/cr/a;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lcom/yelp/android/cr/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/cr/d",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/cr/a;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/yelp/android/cr/a;->a:Lcom/yelp/android/cr/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/cr/a;->a:Lcom/yelp/android/cr/c;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/cr/c;->a(Landroid/content/Context;Lcom/yelp/android/cr/d;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/cr/a;->b(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-object v0

    .line 39
    :cond_1
    :try_start_1
    invoke-interface {p2, p1}, Lcom/yelp/android/cr/d;->c(Landroid/content/Context;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation
.end method
