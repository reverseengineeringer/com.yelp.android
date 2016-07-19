.class Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$4;
.super Ljava/lang/Object;
.source "ActivityUserDraftList.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/ui/activities/profile/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->c(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/serializable/ReviewDraft;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/c;->c(Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/ui/activities/profile/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/c;->notifyDataSetChanged()V

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/ui/activities/profile/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->f(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;Lcom/yelp/android/serializable/ReviewDraft;)Lcom/yelp/android/serializable/ReviewDraft;

    .line 248
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewDraftDelete:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "source"

    const-string/jumbo v2, "draft_list"

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->m()V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->hideLoadingDialog()V

    .line 251
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
    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->hideLoadingDialog()V

    .line 235
    const v0, 0x7f07024a

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 236
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 231
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
