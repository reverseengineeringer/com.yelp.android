.class Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;
.super Ljava/lang/Object;
.source "ActivityMessageTheBusinessBulk.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/messaging/i$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/messaging/i$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/messaging/i$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->disableLoading()V

    .line 341
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/yelp/android/appdata/webrequests/messaging/i$a;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->d(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->e(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->setResult(ILandroid/content/Intent;)V

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->finish()V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;Ljava/util/Set;)Ljava/util/Set;

    .line 350
    const/4 v0, 0x0

    move v1, v0

    .line 351
    :goto_0
    iget v0, p2, Lcom/yelp/android/appdata/webrequests/messaging/i$a;->b:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->d(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->f(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Ljava/util/Set;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->d(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->g(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)V

    .line 356
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->disableLoading()V

    .line 334
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 329
    check-cast p2, Lcom/yelp/android/appdata/webrequests/messaging/i$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/messaging/i$a;)V

    return-void
.end method
