.class Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;
.super Ljava/lang/Object;
.source "BusinessMediaViewer.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$1;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 5
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
    const/4 v4, -0x1

    .line 115
    check-cast p1, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;->b()Lcom/yelp/android/serializable/Media;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->b(Lcom/yelp/android/serializable/Media;)Z

    .line 117
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/a;->g()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->setData(Ljava/lang/Object;)V

    .line 118
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 119
    const-string/jumbo v2, "extra.media_index"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;

    invoke-virtual {v2, v4, v1}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->setResult(ILandroid/content/Intent;)V

    .line 121
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->hideLoadingDialog()V

    .line 122
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v2, "com.yelp.android.media.delete"

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v1

    .line 127
    sget-object v2, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v2}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v1, v4}, Lcom/yelp/android/serializable/User;->c(I)V

    .line 135
    :goto_0
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;-><init>()V

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a(Landroid/content/Context;)V

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->finish()V

    .line 138
    return-void

    .line 129
    :cond_0
    sget-object v2, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v2}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v1, v4}, Lcom/yelp/android/serializable/User;->a(I)V

    goto :goto_0

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Media coming back from api should be photo or video"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 142
    check-cast p1, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;->b()Lcom/yelp/android/serializable/Media;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->hideLoadingDialog()V

    .line 144
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07029c

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;->a:Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 150
    return-void

    .line 144
    :cond_0
    const v0, 0x7f07029a

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
