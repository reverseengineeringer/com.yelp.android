.class Lcom/yelp/android/ui/activities/reviewpage/x;
.super Ljava/lang/Object;
.source "FlagReviewExplanationFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/x;->a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/x;->a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;)Lcom/yelp/android/ui/activities/reviewpage/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/x;->a:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;)Lcom/yelp/android/ui/activities/reviewpage/y;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/y;->a(Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/reviewpage/x;->a(Ljava/lang/String;)V

    .line 139
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
    .line 133
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/x;->a(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/x;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V

    return-void
.end method
