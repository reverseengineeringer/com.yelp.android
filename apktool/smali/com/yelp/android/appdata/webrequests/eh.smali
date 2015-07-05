.class public Lcom/yelp/android/appdata/webrequests/eh;
.super Lcom/yelp/android/av/h;
.source "ReportABugRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/support/YelpActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    const-string/jumbo v0, "/bug_report/create"

    invoke-direct {p0, v0, p4}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 21
    new-instance v0, Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/LocaleSettings;-><init>(Ljava/util/Locale;)V

    .line 23
    new-instance v1, Lcom/yelp/android/appdata/n;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/services/x;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/yelp/android/appdata/n;-><init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Lcom/yelp/android/appdata/n;->d()Lcom/yelp/android/e/m;

    move-result-object v0

    .line 33
    const-string/jumbo v2, "email"

    invoke-virtual {p0, v2, p3}, Lcom/yelp/android/appdata/webrequests/eh;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v2, "description"

    invoke-virtual {p0, v2, p2}, Lcom/yelp/android/appdata/webrequests/eh;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v2, "display_size"

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07020d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/yelp/android/e/m;->a:Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v0, v0, Lcom/yelp/android/e/m;->b:Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/appdata/webrequests/eh;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, "memory_size"

    invoke-virtual {v1}, Lcom/yelp/android/appdata/n;->e()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/eh;->addPostParam(Ljava/lang/String;J)V

    .line 39
    const-string/jumbo v0, "free_memory_size"

    invoke-virtual {v1}, Lcom/yelp/android/appdata/n;->f()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/eh;->addPostParam(Ljava/lang/String;J)V

    .line 40
    const-string/jumbo v0, "disk_space"

    invoke-static {}, Lcom/yelp/android/util/l;->a()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/eh;->addPostParam(Ljava/lang/String;J)V

    .line 41
    const-string/jumbo v0, "free_disk_space"

    invoke-static {}, Lcom/yelp/android/util/l;->b()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/eh;->addPostParam(Ljava/lang/String;J)V

    .line 42
    return-void
.end method
