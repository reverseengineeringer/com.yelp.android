.class public Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;
.super Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;
.source "ActivityBusinessMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer$2;
    }
.end annotation


# instance fields
.field private f:Lcom/yelp/android/serializable/YelpBusiness;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/yelp/android/serializable/PhotoAdsConfig;

.field private m:Lcom/yelp/android/serializable/PhotoAdsResponse;

.field private n:Lcom/yelp/android/appdata/webrequests/aa;

.field private o:Z

.field private final p:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/PhotoAdsResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->o:Z

    .line 498
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer$1;-><init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->p:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/MediaRequest;II)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "II)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;II)Landroid/content/Intent;

    move-result-object v0

    .line 130
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v1, "extra.show_photo_ads"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;II)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;II)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    invoke-static {v0, p3, p4, p2, p5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Intent;Ljava/util/List;ILcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;

    move-result-object v0

    .line 194
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string/jumbo v1, "extra.show_photo_ads"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Media;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 205
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v1

    .line 207
    const-string/jumbo v2, "extra.media_type_likes_view"

    instance-of v0, p2, Lcom/yelp/android/serializable/Photo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 208
    return-object v1

    .line 207
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 143
    invoke-static {p1, p2}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v2

    .line 144
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, p2, p3, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Intent;Ljava/util/List;ILcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string/jumbo v1, "extra.show_photo_ads"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;Lcom/yelp/android/serializable/PhotoAdsResponse;)Lcom/yelp/android/serializable/PhotoAdsResponse;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->m:Lcom/yelp/android/serializable/PhotoAdsResponse;

    return-object p1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 156
    invoke-static {p1, p2}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v2

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 367
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->o:Z

    if-eqz v0, :cond_2

    .line 374
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->d(I)V

    .line 375
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->i:I

    .line 389
    :goto_1
    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c(I)Z

    move-result v0

    add-int/lit8 v1, p1, -0x2

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 390
    if-eqz v0, :cond_3

    .line 391
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->o:Z

    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->c()V

    goto :goto_0

    .line 377
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->o:Z

    goto :goto_1

    .line 396
    :cond_3
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->i:I

    iget v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->h:I

    if-ne v0, v1, :cond_0

    .line 398
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->i:I

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->m:Lcom/yelp/android/serializable/PhotoAdsResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->m:Lcom/yelp/android/serializable/PhotoAdsResponse;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PhotoAdsResponse;->m()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->m:Lcom/yelp/android/serializable/PhotoAdsResponse;

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/activities/photoviewer/a;->b(ILcom/yelp/android/serializable/Media;)V

    .line 409
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    add-int/lit8 v1, p1, 0x2

    new-instance v2, Lcom/yelp/android/serializable/PhotoAdsResponseClone;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->m:Lcom/yelp/android/serializable/PhotoAdsResponse;

    invoke-direct {v2, v3}, Lcom/yelp/android/serializable/PhotoAdsResponseClone;-><init>(Lcom/yelp/android/serializable/PhotoAdsResponse;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/a;->b(ILcom/yelp/android/serializable/Media;)V

    .line 411
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->h:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->l:Lcom/yelp/android/serializable/PhotoAdsConfig;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PhotoAdsConfig;->b()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 412
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->l:Lcom/yelp/android/serializable/PhotoAdsConfig;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PhotoAdsConfig;->a()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->h:I

    .line 415
    :cond_4
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->o:Z

    .line 416
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->c()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->m:Lcom/yelp/android/serializable/PhotoAdsResponse;

    .line 420
    new-instance v0, Lcom/yelp/android/appdata/webrequests/aa;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->p:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/aa;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->n:Lcom/yelp/android/appdata/webrequests/aa;

    .line 421
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->n:Lcom/yelp/android/appdata/webrequests/aa;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/aa;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto/16 :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 169
    const/16 v0, 0x2a

    invoke-static {p1, p2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v2

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private c(I)Z
    .locals 2

    .prologue
    .line 441
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/a;->e(I)Lcom/yelp/android/serializable/Media;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->AD:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/a;->f(I)V

    .line 443
    const/4 v0, 0x1

    .line 445
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(I)V
    .locals 4

    .prologue
    .line 456
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/a;->e(I)Lcom/yelp/android/serializable/Media;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->LOADING:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/a;->e(I)Lcom/yelp/android/serializable/Media;

    move-result-object v1

    .line 461
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 463
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 464
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const-string/jumbo v0, "portrait"

    .line 466
    :goto_1
    const-string/jumbo v3, "orientation"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    const-string/jumbo v0, "id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->g:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string/jumbo v0, "photo_id"

    invoke-interface {v1}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string/jumbo v0, "user_id"

    invoke-interface {v1}, Lcom/yelp/android/serializable/Media;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhoto:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 473
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->BusinessPhoto:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 474
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->j:I

    goto :goto_0

    .line 464
    :cond_2
    const-string/jumbo v0, "landscape"

    goto :goto_1

    .line 475
    :cond_3
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    const-string/jumbo v0, "id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->g:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string/jumbo v0, "video_id"

    invoke-interface {v1}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string/jumbo v3, "video_source"

    move-object v0, v1

    check-cast v0, Lcom/yelp/android/serializable/Video;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->p()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string/jumbo v0, "user_id"

    invoke-interface {v1}, Lcom/yelp/android/serializable/Media;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideo:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 481
    :cond_4
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->AD:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->k:I

    .line 483
    check-cast v1, Lcom/yelp/android/serializable/PhotoAdsResponse;

    .line 484
    invoke-virtual {v1}, Lcom/yelp/android/serializable/PhotoAdsResponse;->c()Lcom/yelp/android/serializable/BusinessLocalAd;

    move-result-object v0

    .line 485
    const-string/jumbo v1, "business_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->g:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string/jumbo v1, "ad_request_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string/jumbo v1, "ad_business_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string/jumbo v1, "placement"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string/jumbo v1, "slot"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string/jumbo v1, "photo_ads_seen"

    iget v3, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string/jumbo v1, "photos_seen"

    iget v3, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->AdsBusinessPhoto:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 493
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;->AD_IMPRESSION:Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;)Z

    goto/16 :goto_0
.end method

.method private d(Lcom/yelp/android/serializable/Media;)V
    .locals 2

    .prologue
    .line 350
    const v0, 0x7f0705c8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 351
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ei;

    invoke-direct {v0, p1}, Lcom/yelp/android/appdata/webrequests/ei;-><init>(Lcom/yelp/android/serializable/Media;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ei;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 352
    instance-of v0, p1, Lcom/yelp/android/serializable/Photo;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 353
    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->q()V

    .line 354
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 356
    :cond_0
    return-void
.end method

.method private h()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 430
    sget-object v1, Lcom/yelp/android/appdata/experiment/e;->b:Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment;

    sget-object v2, Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment$Cohort;->variant_01:Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment$Cohort;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment;->a(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/f;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.show_photo_ads"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
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
    .line 308
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 309
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->COMPLIMENT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->FLAG:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->NOT_HELPFUL:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->DELETE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->EDIT_CAPTION:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->LIKE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->SHARE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->UPLOADED_AGO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->VIEW_BUSINESS:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    return-object v0
.end method

.method protected a(I)V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->a(I)V

    .line 330
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->b(I)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->d(I)V

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->a(Landroid/os/Bundle;)V

    .line 295
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->f:Lcom/yelp/android/serializable/YelpBusiness;

    .line 296
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->g:Ljava/lang/String;

    .line 298
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->E()Lcom/yelp/android/serializable/PhotoAdsConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->l:Lcom/yelp/android/serializable/PhotoAdsConfig;

    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->l:Lcom/yelp/android/serializable/PhotoAdsConfig;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PhotoAdsConfig;->b()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->h:I

    .line 301
    new-instance v0, Lcom/yelp/android/appdata/webrequests/aa;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->p:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/aa;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->n:Lcom/yelp/android/appdata/webrequests/aa;

    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->n:Lcom/yelp/android/appdata/webrequests/aa;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/aa;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 304
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;Lcom/yelp/android/serializable/Media;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 251
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer$2;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 274
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;Lcom/yelp/android/serializable/Media;Landroid/view/View;)V

    .line 276
    :goto_0
    return-void

    .line 253
    :pswitch_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoCompliment:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "photo_id"

    invoke-interface {p2}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c(Lcom/yelp/android/serializable/Media;)V

    goto :goto_0

    .line 257
    :pswitch_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoNotHelpful:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "photo_id"

    invoke-interface {p2}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->d(Lcom/yelp/android/serializable/Media;)V

    goto :goto_0

    .line 261
    :pswitch_2
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoCaptionEdit:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "photo_id"

    invoke-interface {p2}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 264
    check-cast p2, Lcom/yelp/android/serializable/Photo;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->f:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, p2, v0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Photo;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 269
    :pswitch_3
    invoke-interface {p2}, Lcom/yelp/android/serializable/Media;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/a;->a(Ljava/lang/String;)Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    move-result-object v0

    .line 281
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra.media_type_likes_view"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/Media$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.media_type_likes_view"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c()V

    .line 286
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->w()V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->a(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->p()V

    goto :goto_0
.end method

.method protected b()Lcom/yelp/android/ui/activities/photoviewer/a;
    .locals 3

    .prologue
    .line 323
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->f:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/a;-><init>(Landroid/support/v4/app/l;Lcom/yelp/android/serializable/YelpBusiness;)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->k:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->j:I

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotosFullscreen:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->f()V

    .line 217
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->onCreate(Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 228
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    const-string/jumbo v2, "extra.media_type_likes_view"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/Media$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/photoviewer/a;->e(I)Lcom/yelp/android/serializable/Media;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 231
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c()V

    .line 232
    const-string/jumbo v1, "extra.media_type_likes_view"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 234
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->onPause()V

    .line 246
    const-string/jumbo v0, "photo_ads_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->n:Lcom/yelp/android/appdata/webrequests/aa;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 247
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->onResume()V

    .line 240
    const-string/jumbo v0, "photo_ads_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->n:Lcom/yelp/android/appdata/webrequests/aa;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->p:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/aa;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->n:Lcom/yelp/android/appdata/webrequests/aa;

    .line 241
    return-void
.end method
