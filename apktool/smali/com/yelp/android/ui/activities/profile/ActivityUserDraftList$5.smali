.class Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$5;
.super Ljava/lang/Object;
.source "ActivityUserDraftList.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;
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
        "Lcom/yelp/android/serializable/ReviewDraft;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$5;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ReviewDraft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$5;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a(Ljava/util/List;)V

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$5;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->disableLoading()V

    .line 277
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$5;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->s_()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$5;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/ui/activities/profile/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$5;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->f(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)V

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$5;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a()V

    .line 284
    :cond_2
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
    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$5;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/ui/activities/profile/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$5;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 261
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 255
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
