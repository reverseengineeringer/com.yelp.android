.class public Lcom/yelp/android/ui/activities/ActivityWeeklyIssueUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityWeeklyIssueUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityWeeklyIssueUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "market"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    :goto_0
    new-instance v2, Lcom/yelp/android/analytics/o;

    invoke-direct {v2, v1}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-static {v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/b;)V

    .line 44
    :goto_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityWeeklyIssueUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityWeeklyIssueUrlCatcher;->finish()V

    .line 46
    return-void

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method
