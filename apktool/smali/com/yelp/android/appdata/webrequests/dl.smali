.class public Lcom/yelp/android/appdata/webrequests/dl;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "ReportABugRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/support/YelpActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    const-string/jumbo v0, "/bug_report/create"

    invoke-direct {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 22
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/yelp/android/appdata/f;->d()Lcom/yelp/android/g/g;

    move-result-object v1

    .line 30
    const-string/jumbo v2, "email"

    invoke-virtual {p0, v2, p3}, Lcom/yelp/android/appdata/webrequests/dl;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string/jumbo v2, "description"

    invoke-virtual {p0, v2, p2}, Lcom/yelp/android/appdata/webrequests/dl;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v2, "display_size"

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0706dd

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v1, v1, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/yelp/android/appdata/webrequests/dl;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v1, "memory_size"

    invoke-virtual {v0}, Lcom/yelp/android/appdata/f;->e()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/dl;->b(Ljava/lang/String;J)V

    .line 40
    const-string/jumbo v1, "free_memory_size"

    invoke-virtual {v0}, Lcom/yelp/android/appdata/f;->f()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/dl;->b(Ljava/lang/String;J)V

    .line 41
    const-string/jumbo v0, "disk_space"

    invoke-static {}, Lcom/yelp/android/util/e;->a()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/dl;->b(Ljava/lang/String;J)V

    .line 42
    const-string/jumbo v0, "free_disk_space"

    invoke-static {}, Lcom/yelp/android/util/e;->b()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/dl;->b(Ljava/lang/String;J)V

    .line 43
    return-void
.end method
