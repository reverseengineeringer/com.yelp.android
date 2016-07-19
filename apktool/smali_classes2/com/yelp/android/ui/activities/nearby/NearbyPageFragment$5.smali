.class Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "NearbyPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/RichSearchSuggestion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V
    .locals 0

    .prologue
    .line 924
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/yelp/android/ui/activities/nearby/a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 932
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/c;->a(Ljava/util/List;)V

    .line 935
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 936
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Z)Z

    .line 937
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 938
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->a(Ljava/util/List;)V

    .line 941
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->d(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/List;)V

    .line 943
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Z)Z

    .line 949
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->e(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 950
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->af()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 954
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    .line 956
    :cond_0
    const/4 v0, 0x0

    return v0
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
    .line 961
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->c(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Z)Z

    .line 963
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Lcom/yelp/android/util/ErrorType;)V

    .line 964
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->af()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 968
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->f(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V

    .line 970
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 924
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
