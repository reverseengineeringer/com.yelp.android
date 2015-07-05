.class Lcom/yelp/android/appdata/au;
.super Ljava/lang/Object;
.source "StatefulLocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/as;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/as;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/yelp/android/appdata/au;->a:Lcom/yelp/android/appdata/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/yelp/android/appdata/au;->a:Lcom/yelp/android/appdata/as;

    invoke-static {v0}, Lcom/yelp/android/appdata/as;->a(Lcom/yelp/android/appdata/as;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/yelp/android/appdata/au;->a:Lcom/yelp/android/appdata/as;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/as;->a(Lcom/yelp/android/appdata/as;J)J

    .line 298
    iget-object v0, p0, Lcom/yelp/android/appdata/au;->a:Lcom/yelp/android/appdata/as;

    invoke-static {v0}, Lcom/yelp/android/appdata/as;->b(Lcom/yelp/android/appdata/as;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/ax;

    .line 299
    invoke-virtual {v0}, Lcom/yelp/android/appdata/ax;->c()V

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method
