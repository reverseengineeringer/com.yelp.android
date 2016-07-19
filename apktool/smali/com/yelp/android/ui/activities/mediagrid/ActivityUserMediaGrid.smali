.class public Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityUserMediaGrid.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

.field private b:Landroid/content/Intent;

.field private final c:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fk$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 159
    new-instance v0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid$1;-><init>(Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
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

    .line 61
    if-eqz p3, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->c(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object p3

    .line 64
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string/jumbo v2, "media_request"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string/jumbo v2, "media_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 69
    return-object v1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;)Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    return-object v0
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
    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    invoke-static {p0, p2, p4}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->a(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x42e

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 150
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Z)V
    .locals 2

    .prologue
    .line 154
    invoke-static {p0}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x411

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->startActivityForResult(Landroid/content/Intent;I)V

    .line 157
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserPhotosGrid:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 121
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 122
    iput-object p3, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->b:Landroid/content/Intent;

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 124
    const v0, 0x7f070486

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x411
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0f020d

    .line 74
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 76
    const-string/jumbo v0, "title"

    const v2, 0x7f07048d

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->setTitle(I)V

    .line 77
    const-string/jumbo v0, "media_request"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 78
    const-string/jumbo v2, "media_list"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    .line 83
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    if-nez v1, :cond_0

    .line 84
    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->a(Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;Z)Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 90
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10002a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 98
    const/4 v0, 0x1

    .line 100
    :cond_0
    return v0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->b:Landroid/content/Intent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v2

    const-string/jumbo v3, "add_photo"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Landroid/content/Intent;Lcom/yelp/android/ui/activities/support/YelpActivity;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 114
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->b:Landroid/content/Intent;

    .line 115
    return-void
.end method
