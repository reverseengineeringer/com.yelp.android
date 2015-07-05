.class public Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityMediaViewer.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/photoviewer/aq;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/yelp/android/ui/activities/photoviewer/ak;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/yelp/android/ui/activities/photoviewer/k;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

.field private n:Z

.field private o:Z

.field private final p:Landroid/support/v4/view/du;

.field private final q:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/yelp/android/ui/activities/photoviewer/ad;

.field private final s:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->k:I

    .line 365
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/d;-><init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->p:Landroid/support/v4/view/du;

    .line 637
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/h;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/h;-><init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->q:Lcom/yelp/android/appdata/webrequests/m;

    .line 749
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/i;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/i;-><init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->r:Lcom/yelp/android/ui/activities/photoviewer/ad;

    .line 856
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/j;-><init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->s:Lcom/yelp/android/appdata/webrequests/m;

    .line 882
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/b;-><init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->t:Landroid/view/View$OnClickListener;

    .line 938
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/List;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 159
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p3}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->setData(Ljava/lang/Object;)V

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    const-string/jumbo v1, "extra.media_request"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    const-string/jumbo v1, "extra.media_index"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "extra.business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
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
    .line 148
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x2a

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;II)V

    .line 150
    invoke-static {p0, p1, v0, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 139
    const/16 v0, 0x2a

    invoke-static {p1, p3, v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->photosStartingAtSpecificPhoto(Ljava/lang/String;Ljava/lang/String;I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    .line 141
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "extra.selected_photo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;
    .locals 1
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
    const/4 v0, 0x0

    .line 173
    invoke-static {p0, v0, v0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 1

    .prologue
    .line 184
    const-string/jumbo v0, "extra.media_request"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/appdata/webrequests/MediaRequest;)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    return-object v0
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 504
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->k:I

    if-ne v0, p1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 508
    iput p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->k:I

    .line 509
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 510
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 511
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/serializable/Media;)V

    .line 512
    iget-boolean v4, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->o:Z

    if-eqz v4, :cond_3

    .line 513
    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d()V

    .line 517
    :goto_1
    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v4, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 518
    sget-object v4, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v4}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 519
    :cond_2
    if-eqz v3, :cond_4

    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Z)V

    .line 520
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ak;->a()Ljava/util/Collection;

    move-result-object v0

    .line 521
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    .line 522
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->q()Lcom/yelp/android/serializable/Video;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Video;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 525
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->r()V

    goto :goto_3

    .line 515
    :cond_3
    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c()V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 519
    goto :goto_2

    .line 527
    :cond_5
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->s()V

    goto :goto_3

    .line 530
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ak;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 533
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->isShown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->o:Z

    .line 534
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c()V

    .line 545
    :cond_7
    :goto_4
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->l:I

    if-ge p1, v0, :cond_9

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 546
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->l:I

    add-int/lit8 v0, v0, -0x2a

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 547
    new-instance v3, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->l:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->q:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    iput-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 550
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto/16 :goto_0

    .line 537
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    goto :goto_4

    .line 551
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/photoviewer/ak;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->i:I

    if-lt p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->j:Z

    if-nez v0, :cond_0

    .line 562
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->j:Z

    .line 564
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/g;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/g;-><init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Media;)V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 393
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 394
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    const-string/jumbo v0, "photo_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string/jumbo v0, "user_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhoto:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 399
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->BusinessPhoto:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-static {v0}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 408
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 410
    const-string/jumbo v1, "event_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string/jumbo v1, "photo_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->EventPhoto:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 415
    :cond_1
    return-void

    .line 400
    :cond_2
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string/jumbo v0, "video_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string/jumbo v2, "video_source"

    move-object v0, p1

    check-cast v0, Lcom/yelp/android/serializable/Video;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->getVideoSource()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string/jumbo v0, "user_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideo:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;I)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/serializable/Media;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e(Lcom/yelp/android/serializable/Media;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 578
    if-eqz p1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->g:Lcom/yelp/android/ui/activities/photoviewer/k;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/k;->b(Lcom/yelp/android/ui/activities/photoviewer/k;)V

    .line 580
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->g:Lcom/yelp/android/ui/activities/photoviewer/k;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/k;->c(Lcom/yelp/android/ui/activities/photoviewer/k;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Z)V

    .line 581
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->j:Z

    return p1
.end method

.method public static b(Landroid/content/Intent;)I
    .locals 2

    .prologue
    .line 192
    const-string/jumbo v0, "extra.media_index"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;I)I
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->l:I

    return p1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;
    .locals 1
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
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/ak;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 588
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f0202ca

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 589
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_1

    const v0, 0x7f070644

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 591
    return-void

    .line 588
    :cond_0
    const v0, 0x7f02007c

    goto :goto_0

    .line 589
    :cond_1
    const v0, 0x7f0703b4

    goto :goto_1
.end method

.method private b(Lcom/yelp/android/serializable/Media;)Z
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v1

    if-nez v1, :cond_3

    .line 421
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v1}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f070640

    .line 428
    :goto_0
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 429
    const/16 v1, 0x44c

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 430
    const/4 v0, 0x0

    .line 432
    :goto_1
    return v0

    .line 422
    :cond_0
    const v0, 0x7f070366

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f07063e

    goto :goto_0

    :cond_2
    const v0, 0x7f070365

    goto :goto_0

    .line 432
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/serializable/Media;)Z
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Lcom/yelp/android/serializable/Media;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;
    .locals 2
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
    .line 178
    invoke-static {p0, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 179
    const-string/jumbo v1, "extra.event_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    return-object v0
.end method

.method private c(Lcom/yelp/android/serializable/Media;)V
    .locals 4

    .prologue
    .line 436
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    .line 437
    if-eqz v1, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FlagVideo:Lcom/yelp/android/analytics/iris/ViewIri;

    :goto_0
    const-string/jumbo v2, "id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 438
    if-eqz v1, :cond_1

    const v0, 0x7f07067c

    :goto_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 440
    if-eqz v1, :cond_2

    const v0, 0x7f0704f7

    :goto_2
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

    move-result-object v0

    .line 443
    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/e;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/yelp/android/ui/activities/photoviewer/e;-><init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;ZLcom/yelp/android/serializable/Media;Lcom/yelp/android/ui/dialogs/FlagMediaDialog;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->a(Lcom/yelp/android/ui/dialogs/r;)V

    .line 458
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 459
    return-void

    .line 437
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FlagPhoto:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0

    .line 438
    :cond_1
    const v0, 0x7f07067b

    goto :goto_1

    .line 440
    :cond_2
    const v0, 0x7f0704f5

    goto :goto_2
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/serializable/Media;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c(Lcom/yelp/android/serializable/Media;)V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/appdata/webrequests/m;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->s:Lcom/yelp/android/appdata/webrequests/m;

    return-object v0
.end method

.method private d(Lcom/yelp/android/serializable/Media;)V
    .locals 3

    .prologue
    .line 464
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideoDelete:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v1, "video_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    const v0, 0x7f0701fa

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 467
    const v0, 0x7f0700c0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0701f6

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/f;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/f;-><init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/serializable/Media;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0703e4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 484
    return-void

    .line 469
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotoDelete:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v1, "photo_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    const v0, 0x7f0701f9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 471
    const v0, 0x7f0700bf

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/serializable/Media;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->d(Lcom/yelp/android/serializable/Media;)V

    return-void
.end method

.method private e(Lcom/yelp/android/serializable/Media;)V
    .locals 4

    .prologue
    .line 488
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessVideoDeleted:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "video_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->VIDEO:Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    .line 495
    :goto_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/activities/photoviewer/l;

    invoke-direct {v3, p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/l;-><init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/serializable/Media;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;-><init>(Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;Ljava/lang/String;Lcom/yelp/android/av/i;)V

    .line 497
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 498
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->showLoadingDialog()V

    .line 499
    return-void

    .line 492
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoDeleted:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "photo_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->PHOTO:Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    goto :goto_0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->showLoadingDialog()V

    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->i:I

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ak;->notifyDataSetChanged()V

    .line 742
    const/high16 v0, 0x3f400000    # 0.75f

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->i:I

    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->j:Z

    .line 746
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->hideLoadingDialog()V

    .line 747
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->f()V

    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->k:I

    return v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->l:I

    return v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/k;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->g:Lcom/yelp/android/ui/activities/photoviewer/k;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ak;->a(Ljava/lang/String;)Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    move-result-object v0

    .line 877
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/ak;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 878
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->n()V

    .line 880
    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x1

    return v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x1

    return v0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->EventPhotoFullScreen:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 630
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotosFullscreen:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 617
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 620
    const-string/jumbo v0, "event_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 622
    :cond_1
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 306
    const/16 v0, 0x413

    if-ne p1, v0, :cond_2

    .line 308
    if-nez p2, :cond_1

    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->setLikeButtonChecked(Z)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->setLikeButtonChecked(Z)V

    goto :goto_0

    .line 314
    :cond_2
    const/16 v0, 0x44c

    if-ne p1, v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 316
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    .line 317
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 318
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 319
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->n:Z

    .line 325
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a()V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->setData(Ljava/lang/Object;)V

    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 344
    const-string/jumbo v1, "extra.media_request"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 345
    const-string/jumbo v1, "extra.media_index"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->setResult(ILandroid/content/Intent;)V

    .line 347
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->finish()V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 197
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->setContentView(I)V

    .line 200
    const v0, 0x7f0c0179

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a:Landroid/support/v4/view/ViewPager;

    .line 201
    const v0, 0x7f0c017a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    const v1, 0x7f0c0459

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->f:Landroid/widget/ImageView;

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/k;-><init>(Lcom/yelp/android/ui/activities/photoviewer/a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->g:Lcom/yelp/android/ui/activities/photoviewer/k;

    .line 207
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c:Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.event_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->d:Ljava/lang/String;

    .line 209
    invoke-static {}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->popData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    .line 210
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.media_request"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 211
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.media_index"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->o:Z

    .line 214
    if-eqz p1, :cond_5

    .line 215
    const-string/jumbo v0, "media_index"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 216
    const-string/jumbo v0, "media_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 217
    const-string/jumbo v0, "media_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    .line 218
    const-string/jumbo v0, "threshold"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->i:I

    .line 219
    const-string/jumbo v0, "is_threshold_exceeded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->j:Z

    .line 221
    const-string/jumbo v0, "show_chrome"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->o:Z

    move v8, v1

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e()Z

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->d()Z

    move-result v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b()Z

    move-result v3

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c()Z

    move-result v4

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a()Z

    move-result v5

    iget-object v7, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->r:Lcom/yelp/android/ui/activities/photoviewer/ad;

    invoke-virtual/range {v0 .. v7}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(ZZZZZZLcom/yelp/android/ui/activities/photoviewer/ad;)V

    .line 226
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->o:Z

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d()V

    .line 232
    :goto_1
    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/ak;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "extra.business"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/ui/activities/photoviewer/ak;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    .line 234
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ak;->a(Lcom/yelp/android/ui/activities/photoviewer/am;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->countMedia(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->resetWithOffset(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->q:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->p:Landroid/support/v4/view/du;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/du;)V

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bo;)V

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ak;->a(Ljava/util/List;)V

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ak;->a(I)V

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ak;->notifyDataSetChanged()V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 251
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->showLoadingDialog()V

    .line 257
    :cond_2
    :goto_2
    const-string/jumbo v0, "com.yelp.android.media.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/a;-><init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 268
    const-string/jumbo v0, "com.yelp.android.media.update"

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/c;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/c;-><init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 276
    return-void

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c()V

    goto/16 :goto_1

    .line 252
    :cond_4
    if-ltz v8, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b:Lcom/yelp/android/ui/activities/photoviewer/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ak;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 254
    invoke-direct {p0, v8}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(I)V

    goto :goto_2

    :cond_5
    move v8, v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 281
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->cancel(Z)V

    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 285
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->g:Lcom/yelp/android/ui/activities/photoviewer/k;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/k;->a(Lcom/yelp/android/ui/activities/photoviewer/k;)V

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->k:I

    .line 302
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->q:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(I)V

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Z)V

    .line 295
    return-void

    .line 294
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResumeFragments()V
    .locals 2

    .prologue
    .line 330
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResumeFragments()V

    .line 331
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->n:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 333
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c(Lcom/yelp/android/serializable/Media;)V

    .line 335
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->n:Z

    .line 336
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 356
    const-string/jumbo v0, "media_index"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    const-string/jumbo v0, "threshold"

    iget v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    const-string/jumbo v0, "is_threshold_exceeded"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    const-string/jumbo v0, "show_chrome"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->isShown()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    const-string/jumbo v0, "media_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 361
    const-string/jumbo v0, "media_list"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 363
    return-void
.end method
