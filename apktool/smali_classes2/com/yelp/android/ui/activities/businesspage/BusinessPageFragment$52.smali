.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;
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
        "Lcom/yelp/android/appdata/webrequests/dy$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 4864
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dy$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dy$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4874
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 4875
    iget-object v2, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->c:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Ljava/util/Locale;)V

    goto :goto_0

    .line 4877
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4878
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/List;)Ljava/util/List;

    .line 4883
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/Map;)Ljava/util/Map;

    .line 4884
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 4885
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 4889
    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4890
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->F(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 4894
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->F(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 4895
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget v1, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->e:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;I)I

    .line 4896
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->G(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 4897
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V

    .line 4903
    :goto_2
    return-void

    .line 4880
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4899
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z

    .line 4900
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->u(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 4901
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    goto :goto_2
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
    .line 4868
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z

    .line 4869
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 4870
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4864
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dy$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$52;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dy$a;)V

    return-void
.end method
