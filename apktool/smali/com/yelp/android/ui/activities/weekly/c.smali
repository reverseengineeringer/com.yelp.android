.class Lcom/yelp/android/ui/activities/weekly/c;
.super Ljava/lang/Object;
.source "ActivityWeeklyIssue.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
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
    .line 280
    iput-object p1, p0, Lcom/yelp/android/ui/activities/weekly/c;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/c;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;Lcom/yelp/android/serializable/WeeklyIssueResponse;)V

    .line 290
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
    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/c;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 284
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 280
    check-cast p2, Lcom/yelp/android/serializable/WeeklyIssueResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/weekly/c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/WeeklyIssueResponse;)V

    return-void
.end method
