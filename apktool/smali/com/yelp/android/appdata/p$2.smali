.class Lcom/yelp/android/appdata/p$2;
.super Ljava/lang/Object;
.source "StatefulLocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/appdata/p;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/p;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/p;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/yelp/android/appdata/p$2;->a:Lcom/yelp/android/appdata/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/yelp/android/appdata/p$2;->a:Lcom/yelp/android/appdata/p;

    invoke-static {v0}, Lcom/yelp/android/appdata/p;->a(Lcom/yelp/android/appdata/p;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/yelp/android/appdata/p$2;->a:Lcom/yelp/android/appdata/p;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/p;->a(Lcom/yelp/android/appdata/p;J)J

    .line 314
    iget-object v0, p0, Lcom/yelp/android/appdata/p$2;->a:Lcom/yelp/android/appdata/p;

    invoke-static {v0}, Lcom/yelp/android/appdata/p;->b(Lcom/yelp/android/appdata/p;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/p$c;

    .line 315
    invoke-virtual {v0}, Lcom/yelp/android/appdata/p$c;->c()V

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method
