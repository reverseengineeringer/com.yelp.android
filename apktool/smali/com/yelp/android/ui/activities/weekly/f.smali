.class Lcom/yelp/android/ui/activities/weekly/f;
.super Ljava/lang/Object;
.source "ActivityWeeklyIssue.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/yelp/android/ui/activities/weekly/f;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2
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
    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/f;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->i(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/ui/dialogs/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->dismiss()V

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/f;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->e(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/f;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->g(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->setBookmarked(Z)V

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/f;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->e(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 378
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
    .line 369
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/f;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->i(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/ui/dialogs/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->dismiss()V

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/f;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    const v1, 0x7f070588

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->c(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;I)V

    .line 371
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 366
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/weekly/f;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
