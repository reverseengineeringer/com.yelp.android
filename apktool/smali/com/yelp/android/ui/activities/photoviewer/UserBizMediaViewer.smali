.class public Lcom/yelp/android/ui/activities/photoviewer/UserBizMediaViewer;
.super Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;
.source "UserBizMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/photoviewer/UserBizMediaViewer$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;-><init>()V

    .line 68
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;II)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;II)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/photoviewer/UserBizMediaViewer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    invoke-static {v0, p2, p3, p1, p4}, Lcom/yelp/android/ui/activities/photoviewer/UserBizMediaViewer;->a(Landroid/content/Intent;Ljava/util/List;ILcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;

    move-result-object v0

    .line 36
    return-object v0
.end method


# virtual methods
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
    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 75
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->DELETE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->LIKE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->FLAG:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->EDIT_CAPTION:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->COMPLIMENT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->VIEW_BUSINESS:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->SHARE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->UPLOADED_AGO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    return-object v0
.end method

.method public a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;Lcom/yelp/android/serializable/Media;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/UserBizMediaViewer$1;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;Lcom/yelp/android/serializable/Media;Landroid/view/View;)V

    .line 70
    :goto_0
    return-void

    .line 53
    :pswitch_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoCompliment:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "photo_id"

    invoke-interface {p2}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/photoviewer/UserBizMediaViewer;->c(Lcom/yelp/android/serializable/Media;)V

    goto :goto_0

    .line 57
    :pswitch_1
    invoke-interface {p2}, Lcom/yelp/android/serializable/Media;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/UserBizMediaViewer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 62
    :pswitch_2
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoCaptionEdit:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "photo_id"

    invoke-interface {p2}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 65
    check-cast p2, Lcom/yelp/android/serializable/Photo;

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Photo;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/UserBizMediaViewer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b()Lcom/yelp/android/ui/activities/photoviewer/a;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/UserBizMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/a;-><init>(Landroid/support/v4/app/l;Lcom/yelp/android/serializable/YelpBusiness;)V

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfileBizPhotosFullScreen:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/UserBizMediaViewer;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
