.class public Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;
.super Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;
.source "WhoLikedThisCheckIn.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/CheckInFeedback;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpCheckIn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    const-string/jumbo v1, "checkin.xtra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 46
    if-eqz p1, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->is(Landroid/os/AsyncTask$Status;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    new-instance p1, Lcom/yelp/android/appdata/webrequests/ct;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->r()I

    move-result v1

    invoke-direct {p1, v0, p0, v1}, Lcom/yelp/android/appdata/webrequests/ct;-><init>(Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/appdata/webrequests/m;I)V

    .line 52
    :goto_0
    return-object p1

    :cond_1
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/yelp/android/appdata/webrequests/ct;

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/webrequests/ct;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/CheckInFeedback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->a(Ljava/util/List;)V

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->disableLoading()V

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->c(I)V

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->getPositiveFeedbackCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->WhoLikedThisCheckIn:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const-string/jumbo v0, "check_in_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "checkin.xtra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->getPositiveFeedbackCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->finish()V

    .line 41
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->onCreate(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
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
    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->finish()V

    .line 58
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
