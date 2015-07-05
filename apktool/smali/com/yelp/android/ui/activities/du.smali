.class Lcom/yelp/android/ui/activities/du;
.super Ljava/lang/Object;
.source "ActivityRetryShare.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/fg;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityRetryShare;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityRetryShare;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/yelp/android/ui/activities/du;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/activities/du;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Ljava/util/Set;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/du;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/activities/du;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/du;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c()V

    .line 318
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/du;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    const v1, 0x7f070047

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(Lcom/yelp/android/ui/activities/ActivityRetryShare;I)V

    .line 323
    return-void
.end method

.method public b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/du;->a:Lcom/yelp/android/ui/activities/ActivityRetryShare;

    const v1, 0x7f070112

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(Lcom/yelp/android/ui/activities/ActivityRetryShare;I)V

    .line 328
    return-void
.end method

.method public c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 310
    return-void
.end method
