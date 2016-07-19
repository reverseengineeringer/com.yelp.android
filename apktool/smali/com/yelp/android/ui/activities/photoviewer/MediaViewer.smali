.class public abstract Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "MediaViewer.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;
.implements Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$8;,
        Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field protected b:Z

.field protected c:Lcom/yelp/android/ui/activities/photoviewer/a;

.field protected d:Landroid/support/v4/view/ViewPager;

.field protected e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

.field private f:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;

.field private g:Lcom/yelp/android/appdata/webrequests/core/b;

.field private final h:Landroid/support/v4/view/ViewPager$e;

.field private final i:Landroid/view/View$OnClickListener;

.field private final j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 429
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$5;-><init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->h:Landroid/support/v4/view/ViewPager$e;

    .line 465
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$6;-><init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->i:Landroid/view/View$OnClickListener;

    .line 486
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$7;-><init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 538
    return-void
.end method

.method protected static a(Landroid/content/Intent;Ljava/util/List;I)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->setData(Ljava/lang/Object;)V

    .line 95
    const-string/jumbo v0, "extra.media_index"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    return-object p0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;Lcom/yelp/android/serializable/Media;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->g(Lcom/yelp/android/serializable/Media;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 450
    if-eqz p1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->f:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->b(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;)V

    .line 452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->f:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->c(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b(Z)V

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->f:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 404
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/a;->e(I)Lcom/yelp/android/serializable/Media;

    move-result-object v3

    .line 406
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v3, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v3, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b:Z

    .line 407
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b:Z

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 409
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->e()V

    .line 414
    :goto_1
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v3, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 415
    :goto_2
    if-eqz v3, :cond_4

    :goto_3
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a(Z)V

    .line 416
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->e()Ljava/util/Collection;

    move-result-object v0

    .line 417
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    .line 418
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->s()Lcom/yelp/android/serializable/Video;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 421
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->t()V

    goto :goto_4

    :cond_1
    move v0, v1

    .line 406
    goto :goto_0

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d()V

    goto :goto_1

    .line 414
    :cond_3
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_2

    :cond_4
    move v2, v1

    .line 415
    goto :goto_3

    .line 423
    :cond_5
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->u()V

    goto :goto_4

    .line 426
    :cond_6
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a(I)V

    .line 427
    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 460
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f0203de

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 461
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_1

    const v0, 0x7f070620

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 463
    return-void

    .line 460
    :cond_0
    const v0, 0x7f02009b

    goto :goto_0

    .line 461
    :cond_1
    const v0, 0x7f0703ea

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/a;->e(I)Lcom/yelp/android/serializable/Media;

    move-result-object v0

    .line 478
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    new-instance v1, Lcom/yelp/android/services/PhotoShareFormatter;

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-direct {v1, v0}, Lcom/yelp/android/services/PhotoShareFormatter;-><init>(Lcom/yelp/android/serializable/Photo;)V

    move-object v0, v1

    .line 483
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->showShareSheet(Lcom/yelp/android/services/ShareFormatter;)V

    .line 484
    return-void

    .line 481
    :cond_0
    new-instance v1, Lcom/yelp/android/services/VideoShareFormatter;

    check-cast v0, Lcom/yelp/android/serializable/Video;

    invoke-direct {v1, v0}, Lcom/yelp/android/services/VideoShareFormatter;-><init>(Lcom/yelp/android/serializable/Video;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private d(Lcom/yelp/android/serializable/Media;)Z
    .locals 2

    .prologue
    const v1, 0x7f070209

    .line 299
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const v0, 0x7f0703a2

    .line 313
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x419

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 316
    const/4 v0, 0x0

    .line 318
    :goto_1
    return v0

    .line 306
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    const v0, 0x7f0703a1

    .line 308
    goto :goto_0

    .line 310
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can only flag photos / videos."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private e(Lcom/yelp/android/serializable/Media;)V
    .locals 4

    .prologue
    .line 322
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    .line 323
    if-eqz v1, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FlagVideo:Lcom/yelp/android/analytics/iris/ViewIri;

    :goto_0
    const-string/jumbo v2, "id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    if-eqz v1, :cond_1

    const v0, 0x7f070659

    :goto_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 329
    if-eqz v1, :cond_2

    const v0, 0x7f0704f9

    :goto_2
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

    move-result-object v0

    .line 331
    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;-><init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;Lcom/yelp/android/serializable/Media;ZLcom/yelp/android/ui/dialogs/FlagMediaDialog;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->a(Lcom/yelp/android/ui/dialogs/b;)V

    .line 354
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 355
    return-void

    .line 323
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FlagPhoto:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0

    .line 324
    :cond_1
    const v0, 0x7f070658

    goto :goto_1

    .line 329
    :cond_2
    const v0, 0x7f0704f7

    goto :goto_2
.end method

.method private f(Lcom/yelp/android/serializable/Media;)V
    .locals 3

    .prologue
    .line 360
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideoDelete:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v1, "video_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    const v0, 0x7f070248

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    const v0, 0x7f07013f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070240

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$4;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$4;-><init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;Lcom/yelp/android/serializable/Media;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070415

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 384
    return-void

    .line 365
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotoDelete:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v1, "photo_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    const v0, 0x7f070245

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 367
    const v0, 0x7f07013e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Lcom/yelp/android/serializable/Media;)V
    .locals 2

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b(Lcom/yelp/android/serializable/Media;)Lcom/yelp/android/appdata/webrequests/core/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->g:Lcom/yelp/android/appdata/webrequests/core/b;

    .line 388
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->g:Lcom/yelp/android/appdata/webrequests/core/b;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Request to delete media not found. Subclass should implement getAndFireDeleteRequest."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/Media;)Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;",
            ">;"
        }
    .end annotation
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;Lcom/yelp/android/serializable/Media;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 507
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$8;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 528
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Display feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was never handled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->d(Lcom/yelp/android/serializable/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->e(Lcom/yelp/android/serializable/Media;)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 517
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->f(Lcom/yelp/android/serializable/Media;)V

    goto :goto_0

    .line 520
    :pswitch_2
    invoke-interface {p2}, Lcom/yelp/android/serializable/Media;->i()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 525
    :pswitch_3
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c()V

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/a;->a(Ljava/lang/String;)Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    move-result-object v0

    .line 277
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->a(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->p()V

    .line 280
    :cond_0
    return-void
.end method

.method protected b(Lcom/yelp/android/serializable/Media;)Lcom/yelp/android/appdata/webrequests/core/b;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract b()Lcom/yelp/android/ui/activities/photoviewer/a;
.end method

.method protected c(Lcom/yelp/android/serializable/Media;)V
    .locals 2

    .prologue
    .line 291
    check-cast p1, Lcom/yelp/android/serializable/Photo;

    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentType;->PHOTOS:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;Lcom/yelp/android/serializable/Compliment$ComplimentType;)Landroid/content/Intent;

    move-result-object v0

    .line 293
    const v1, 0x7f0703a4

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->startActivity(Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method protected f()Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 262
    packed-switch p1, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 272
    return-void

    .line 264
    :pswitch_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/a;->e(I)Lcom/yelp/android/serializable/Media;

    move-result-object v0

    .line 266
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->e(Lcom/yelp/android/serializable/Media;)V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x419
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->setContentView(I)V

    .line 164
    const v0, 0x7f0f01ac

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->d:Landroid/support/v4/view/ViewPager;

    .line 165
    const v0, 0x7f0f01ad

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    const v1, 0x7f0f0553

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a:Landroid/widget/ImageView;

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;-><init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$1;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->f:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;

    .line 172
    if-eqz p1, :cond_1

    .line 173
    const-string/jumbo v0, "show_chrome"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b:Z

    .line 174
    const-string/jumbo v0, "media_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Ljava/util/Collection;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;)V

    .line 182
    const-string/jumbo v1, "com.yelp.android.media.delete"

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$1;-><init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;)V

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 194
    const-string/jumbo v1, "com.yelp.android.media.update"

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$2;-><init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;)V

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b()Lcom/yelp/android/ui/activities/photoviewer/a;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    .line 207
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/a;->a(Lcom/yelp/android/ui/activities/photoviewer/a$a;)V

    .line 208
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->a(Ljava/util/List;)V

    .line 209
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->g()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->g()I

    move-result v1

    .line 210
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/activities/photoviewer/a;->g(I)V

    .line 211
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/a;->c()V

    .line 212
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->d:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ac;)V

    .line 214
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->d:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->h:Landroid/support/v4/view/ViewPager$e;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$e;)V

    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->showLoadingDialog()V

    .line 228
    :cond_0
    :goto_2
    return-void

    .line 176
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b:Z

    .line 177
    invoke-static {}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->popData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 209
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    .line 219
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.media_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 224
    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b(I)V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->f:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->a(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;)V

    .line 257
    const-string/jumbo v0, "delete_object"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->g:Lcom/yelp/android/appdata/webrequests/core/b;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 258
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 240
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->b()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/a;->e(I)Lcom/yelp/android/serializable/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 248
    :cond_0
    const-string/jumbo v0, "delete_object"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->g:Lcom/yelp/android/appdata/webrequests/core/b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->f()Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/core/b;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->g:Lcom/yelp/android/appdata/webrequests/core/b;

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a(Z)V

    .line 251
    return-void

    .line 250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    const-string/jumbo v0, "show_chrome"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    const-string/jumbo v0, "media_list"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/photoviewer/a;->g()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 236
    return-void
.end method
