.class Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager$2;
.super Ljava/lang/Object;
.source "ActivitySearchedReviewsPager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;
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
        "Lcom/yelp/android/appdata/webrequests/ea$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ea$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/ea$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/ea$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->a(Ljava/util/List;)V

    .line 120
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
    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 114
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ea$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ea$a;)V

    return-void
.end method
