.class public abstract Lcom/yelp/android/util/BasicBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BasicBroadcastReceiver.java"


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/yelp/android/util/BasicBroadcastReceiver;->a:Ljava/util/Collection;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/util/BasicBroadcastReceiver;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 20
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/util/BasicBroadcastReceiver;->b:Z

    .line 23
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/yelp/android/util/BasicBroadcastReceiver;->b:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/util/BasicBroadcastReceiver;->b:Z

    .line 30
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/yelp/android/util/BasicBroadcastReceiver;->b:Z

    return v0
.end method
