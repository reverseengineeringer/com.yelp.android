.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
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
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/LocalAd;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 4814
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/LocalAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4827
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z

    .line 4828
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;

    .line 4829
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;

    .line 4830
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAd;

    .line 4831
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->c()Lcom/yelp/android/serializable/LocalAdPlacement;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/serializable/LocalAdPlacement;->ABOVE_BIZ_REVIEW:Lcom/yelp/android/serializable/LocalAdPlacement;

    if-ne v2, v3, :cond_1

    .line 4832
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->D(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4833
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->c()Lcom/yelp/android/serializable/LocalAdPlacement;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/serializable/LocalAdPlacement;->BELOW_BIZ_REVIEW:Lcom/yelp/android/serializable/LocalAdPlacement;

    if-ne v2, v3, :cond_0

    .line 4835
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->E(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4838
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 4839
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    .line 4840
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 4819
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z

    .line 4820
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;

    .line 4821
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;

    .line 4822
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    .line 4823
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4814
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$50;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
