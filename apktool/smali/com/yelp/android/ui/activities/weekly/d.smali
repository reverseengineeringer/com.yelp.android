.class Lcom/yelp/android/ui/activities/weekly/d;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "ActivityWeeklyIssue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/serializable/WeeklyIssueResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/yelp/android/ui/activities/weekly/d;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/WeeklyIssueResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/WeeklyIssueResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/d;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;Lcom/yelp/android/serializable/WeeklyIssueResponse;)V

    .line 310
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
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
    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/d;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 304
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 294
    check-cast p2, Lcom/yelp/android/serializable/WeeklyIssueResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/weekly/d;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/WeeklyIssueResponse;)V

    return-void
.end method
