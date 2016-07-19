.class Lcom/yelp/android/ui/activities/ActivityRetryShare$3;
.super Ljava/lang/Object;
.source "ActivityRetryShare.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/FacebookConnectManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityRetryShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityRetryShare;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityRetryShare;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare$3;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare$3;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->e:Ljava/util/Set;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare$3;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c:Ljava/util/ArrayList;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare$3;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->f:Ljava/util/Set;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare$3;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare$3;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare$3;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c()V

    .line 335
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare$3;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    const v1, 0x7f0700cf

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(Lcom/yelp/android/ui/activities/ActivityRetryShare;I)V

    .line 341
    return-void
.end method

.method public b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare$3;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    const v1, 0x7f070190

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(Lcom/yelp/android/ui/activities/ActivityRetryShare;I)V

    .line 346
    return-void
.end method

.method public c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 324
    return-void
.end method
