.class public Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;
.super Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;
.source "UserMediaViewer.java"


# instance fields
.field private a:Landroid/content/Intent;

.field private final b:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;-><init>()V

    .line 84
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/an;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/an;-><init>(Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->b:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p1}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->setData(Ljava/lang/Object;)V

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    const-string/jumbo v1, "extra.media_index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    return-object v0
.end method


# virtual methods
.method protected b()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserPhotosFullscreen:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    const/16 v0, 0x40d

    if-ne p1, v0, :cond_0

    .line 66
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 67
    iput-object p3, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->a:Landroid/content/Intent;

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 69
    const v0, 0x7f070468

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->onPostResume()V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->b:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog_add_photo"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Landroid/content/Intent;Lcom/yelp/android/ui/activities/support/YelpActivity;Lcom/yelp/android/appdata/webrequests/m;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->a:Landroid/content/Intent;

    .line 82
    return-void
.end method
