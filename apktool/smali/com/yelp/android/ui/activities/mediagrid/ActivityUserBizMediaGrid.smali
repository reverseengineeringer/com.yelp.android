.class public Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityUserBizMediaGrid.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0, p2, p3}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/User;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 62
    if-eqz p3, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->c(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object p3

    .line 65
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v2, "media_request"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string/jumbo v2, "media_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 70
    return-object v1
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/MediaRequest;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    invoke-static {p0, p3, p2, p4, p5}, Lcom/yelp/android/ui/activities/photoviewer/UserBizMediaViewer;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;II)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x42e

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 114
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Z)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfileBizPhotosGrid:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0f020d

    .line 75
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 77
    const-string/jumbo v0, "title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    const-string/jumbo v0, "media_request"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 79
    const-string/jumbo v2, "media_list"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    .line 84
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    if-nez v1, :cond_0

    .line 85
    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->a(Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;Z)Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserBizMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 91
    :cond_0
    return-void
.end method
