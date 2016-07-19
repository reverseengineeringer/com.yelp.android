.class public Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;
.super Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;
.source "UserMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$3;,
        Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Intent;

.field private final f:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
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
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;-><init>()V

    .line 190
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$1;-><init>(Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 230
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$2;-><init>(Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;
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
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->a(Landroid/content/Intent;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 57
    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/Photo;)V
    .locals 5

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 167
    sget-object v3, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v3}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 169
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->m()Lcom/yelp/android/serializable/Photo$PhotoType;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE_PRIMARY:Lcom/yelp/android/serializable/Photo$PhotoType;

    if-ne v3, v4, :cond_0

    .line 175
    :goto_0
    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->n()V

    .line 178
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->o()V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 180
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private d(Lcom/yelp/android/serializable/Media;)Lcom/yelp/android/appdata/webrequests/core/b;
    .locals 3

    .prologue
    .line 183
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fm;

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/fm;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 185
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->showLoadingDialog()V

    .line 186
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/b;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 187
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/Media;)Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->USER_PHOTO:Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should only be able to flag photos from the UserMediaViewer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 80
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->ADD_ACCOUNT_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->COMPLIMENT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->DELETE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->FLAG:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->MAKE_PRIMARY_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->UPLOADED_AGO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    return-object v0
.end method

.method public a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;Lcom/yelp/android/serializable/Media;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 91
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$3;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;Lcom/yelp/android/serializable/Media;Landroid/view/View;)V

    .line 111
    :goto_0
    return-void

    .line 93
    :pswitch_0
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v1

    const/16 v2, 0x411

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;-><init>(Lcom/yelp/android/appdata/f;I)V

    .line 96
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->UserImageUpload:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 97
    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 100
    :pswitch_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UserPhotoCompliment:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "photo_id"

    invoke-interface {p2}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->c(Lcom/yelp/android/serializable/Media;)V

    goto :goto_0

    .line 104
    :pswitch_2
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UserProfilePhotoSetPrimaryTap:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    move-object v0, p2

    .line 105
    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->a(Lcom/yelp/android/serializable/Photo;)V

    .line 106
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->d(Lcom/yelp/android/serializable/Media;)Lcom/yelp/android/appdata/webrequests/core/b;

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b(Lcom/yelp/android/serializable/Media;)Lcom/yelp/android/appdata/webrequests/core/b;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fl;

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->f()Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/fl;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 146
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->showLoadingDialog()V

    .line 147
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/b;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 148
    return-object v0
.end method

.method protected b()Lcom/yelp/android/ui/activities/photoviewer/a;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/a;-><init>(Landroid/support/v4/app/l;Lcom/yelp/android/serializable/YelpBusiness;)V

    return-object v0
.end method

.method protected f()Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$a;-><init>(Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer$1;)V

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserPhotosFullscreen:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->onActivityResult(IILandroid/content/Intent;)V

    .line 68
    const/16 v0, 0x411

    if-ne p1, v0, :cond_0

    .line 69
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 70
    iput-object p3, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->a:Landroid/content/Intent;

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 72
    const v0, 0x7f070486

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 4

    .prologue
    .line 120
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->onPostResume()V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v2

    const-string/jumbo v3, "dialog_add_photo"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Landroid/content/Intent;Lcom/yelp/android/ui/activities/support/YelpActivity;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 129
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->a:Landroid/content/Intent;

    .line 130
    return-void
.end method
