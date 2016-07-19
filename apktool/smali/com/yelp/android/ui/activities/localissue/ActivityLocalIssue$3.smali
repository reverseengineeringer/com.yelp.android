.class Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$3;
.super Ljava/lang/Object;
.source "ActivityLocalIssue.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;
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
        "Lcom/yelp/android/serializable/LocalIssueResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$3;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/LocalIssueResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/LocalIssueResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$3;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;Lcom/yelp/android/serializable/LocalIssueResponse;)V

    .line 385
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
    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$3;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 379
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 375
    check-cast p2, Lcom/yelp/android/serializable/LocalIssueResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/LocalIssueResponse;)V

    return-void
.end method
