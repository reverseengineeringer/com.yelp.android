.class public Lcom/yelp/android/ui/activities/profile/UserMediaGrid;
.super Lcom/yelp/android/ui/activities/ActivityMediaBrowser;
.source "UserMediaGrid.java"


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
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;-><init>()V

    .line 110
    new-instance v0, Lcom/yelp/android/ui/activities/profile/v;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/v;-><init>(Lcom/yelp/android/ui/activities/profile/UserMediaGrid;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->b:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;Ljava/util/List;)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 42
    const v0, 0x7f07047a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;Z)Landroid/content/Intent;

    move-result-object v0

    .line 44
    const-class v1, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    const-string/jumbo v1, "user_id_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/UserMediaGrid;Lcom/yelp/android/serializable/Media;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->a(Lcom/yelp/android/serializable/Media;Z)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/profile/UserBizMediaViewer;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x404

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->startActivityForResult(Landroid/content/Intent;I)V

    .line 55
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserPhotosGrid:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 64
    sparse-switch p1, :sswitch_data_0

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 66
    :sswitch_0
    if-ne p2, v0, :cond_1

    .line 67
    iput-object p3, p0, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->a:Landroid/content/Intent;

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 69
    const v0, 0x7f070468

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 73
    :sswitch_1
    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "photo_added"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->finish()V

    goto :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_1
        0x40d -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c0408

    if-ne v0, v1, :cond_0

    .line 94
    invoke-static {p0}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x40d

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->startActivityForResult(Landroid/content/Intent;I)V

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 4

    .prologue
    .line 102
    invoke-super {p0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->onPostResume()V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->b:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog_add_photo"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Landroid/content/Intent;Lcom/yelp/android/ui/activities/support/YelpActivity;Lcom/yelp/android/appdata/webrequests/m;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->a:Landroid/content/Intent;

    .line 108
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 85
    const v0, 0x7f0c0408

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "user_id_extra"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserMediaGrid;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 88
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
