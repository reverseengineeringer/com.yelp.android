.class public Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "AddBusinessPhoto.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$a;
.implements Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$b;
.implements Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$5;
    }
.end annotation


# instance fields
.field private A:Lcom/yelp/android/ui/activities/support/b$b;

.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Ljava/io/File;

.field private c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field private d:Landroid/support/v4/app/Fragment;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/os/AsyncTask;

.field private o:Landroid/app/Dialog;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:Lcom/yelp/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/g/a",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Photo$TempPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:Lcom/yelp/android/ui/activities/addphoto/b$a;

.field private y:Lcom/yelp/android/ui/activities/media/a$a;

.field private z:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 106
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->j:Z

    .line 114
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->q:Z

    .line 129
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->w:Z

    .line 668
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$1;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->x:Lcom/yelp/android/ui/activities/addphoto/b$a;

    .line 700
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$2;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->y:Lcom/yelp/android/ui/activities/media/a$a;

    .line 732
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$3;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->z:Landroid/content/DialogInterface$OnDismissListener;

    .line 741
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$4;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->A:Lcom/yelp/android/ui/activities/support/b$b;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->o:Landroid/app/Dialog;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const-string/jumbo v1, "yelp:business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "extra.contribution"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v1, "extra.is_video"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "extra.disable_video_for_reviews"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Lcom/yelp/android/ui/activities/support/b$b;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->A:Lcom/yelp/android/ui/activities/support/b$b;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->p:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 289
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Intent;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    .line 290
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b(Landroid/content/Intent;)Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 291
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->c(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h:Z

    .line 292
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->i:Z

    .line 293
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->e(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->k:I

    .line 294
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->l:I

    .line 295
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->o:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->j()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->z:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method private e()Landroid/support/v4/app/Fragment;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 458
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->r:Z

    if-eqz v0, :cond_4

    .line 459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->u:Lcom/yelp/android/g/a;

    iget v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->s:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/g/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 460
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->u:Lcom/yelp/android/g/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h:Z

    .line 461
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/e;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 462
    if-eqz v1, :cond_0

    .line 463
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->u:Lcom/yelp/android/g/a;

    invoke-virtual {v0}, Lcom/yelp/android/g/a;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v4, 0x7f070674

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->s:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->u:Lcom/yelp/android/g/a;

    invoke-virtual {v3}, Lcom/yelp/android/g/a;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    .line 478
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideoShare:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 480
    :goto_1
    new-instance v2, Lcom/yelp/android/g/a;

    invoke-direct {v2}, Lcom/yelp/android/g/a;-><init>()V

    .line 481
    const-string/jumbo v3, "id"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string/jumbo v3, "batch_size"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/c;->aa()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 486
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h:Z

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    move-result-object v0

    .line 490
    :goto_2
    return-object v0

    :cond_2
    move v1, v3

    .line 460
    goto :goto_0

    .line 478
    :cond_3
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotoShare:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_1

    .line 489
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 490
    :goto_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h:Z

    invoke-static {v1, v0, v2}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    move-result-object v0

    goto :goto_2

    .line 489
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->k()V

    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->n:Landroid/os/AsyncTask;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 496
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 497
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 498
    const v1, 0x7f070485

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 508
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h:Z

    if-eqz v0, :cond_1

    .line 503
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h()V

    goto :goto_0

    .line 505
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g()V

    goto :goto_0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 511
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->SHARE:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    if-eq v0, v1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/yelp/android/util/e;->a(Ljava/io/File;)Z

    move-result v0

    .line 513
    if-nez v0, :cond_0

    .line 514
    const-string/jumbo v0, "Photo"

    const-string/jumbo v1, "Copying the photo to the user gallery failed!"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->f:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->launchJob(Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 525
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->v:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->v:Ljava/util/ArrayList;

    .line 528
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->r:Z

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->v:Ljava/util/ArrayList;

    new-instance v1, Lcom/yelp/android/serializable/Photo$TempPhoto;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/serializable/Photo$TempPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->t:I

    .line 533
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a()V

    .line 549
    :goto_0
    return-void

    .line 535
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->v:Ljava/util/ArrayList;

    new-instance v2, Lcom/yelp/android/serializable/Photo$TempPhoto;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/yelp/android/serializable/Photo$TempPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    const-string/jumbo v1, "extra.images"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 542
    const-string/jumbo v1, "extra.posted_media"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 545
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    .line 546
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->setResult(ILandroid/content/Intent;)V

    .line 547
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->finish()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->q:Z

    return v0
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 552
    new-instance v3, Lcom/yelp/android/g/a;

    invoke-direct {v3}, Lcom/yelp/android/g/a;-><init>()V

    .line 553
    const-string/jumbo v0, "id"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string/jumbo v4, "has_caption"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string/jumbo v0, "user_chose_keyframe"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string/jumbo v0, "source"

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string/jumbo v0, "batch_size"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/c;->aa()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessVideoSave:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 561
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 562
    iget-boolean v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->i:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->r:Z

    if-eqz v3, :cond_3

    .line 563
    :cond_0
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->j:Z

    if-eqz v1, :cond_2

    .line 564
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    iget v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->k:I

    iget v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->l:I

    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yelp/android/services/job/VideoTrimJob;->launchJob(Ljava/io/File;IILjava/lang/String;Ljava/lang/String;)V

    .line 581
    :goto_1
    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->t:I

    .line 582
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a()V

    .line 583
    return-void

    :cond_1
    move v0, v2

    .line 554
    goto :goto_0

    .line 571
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/yelp/android/services/job/VideoUploadJob;->launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 574
    :cond_3
    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-static {v2}, Lcom/yelp/android/util/e;->b(Ljava/io/File;)Z

    move-result v2

    .line 575
    if-nez v2, :cond_4

    .line 576
    const-string/jumbo v2, "Video"

    const-string/jumbo v3, "Copying the video file to the Movies directory failed!"

    invoke-static {v2, v3}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/yelp/android/services/job/VideoUploadJob;->launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    if-nez v0, :cond_0

    .line 587
    const-string/jumbo v0, "unknown"

    .line 598
    :goto_0
    return-object v0

    .line 589
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$5;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 598
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 591
    :pswitch_0
    const-string/jumbo v0, "gallery"

    goto :goto_0

    .line 594
    :pswitch_1
    const-string/jumbo v0, "camera"

    goto :goto_0

    .line 596
    :pswitch_2
    const-string/jumbo v0, "share"

    goto :goto_0

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private j()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x42c

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->startActivityForResult(Landroid/content/Intent;I)V

    .line 606
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 609
    sget-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->SHARE:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 610
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 611
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string/jumbo v1, "media_selected"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/c;->aa()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotoShare:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 617
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f020d

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 621
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 267
    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->s:I

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->u:Lcom/yelp/android/g/a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->s:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->u:Lcom/yelp/android/g/a;

    invoke-virtual {v1}, Lcom/yelp/android/g/a;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->j:Z

    .line 270
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Landroid/support/v4/app/Fragment;

    .line 271
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f020d

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 286
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->v:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 280
    const-string/jumbo v1, "extra.images"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 281
    const-string/jumbo v1, "extra.posted_media"

    iget v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->setResult(ILandroid/content/Intent;)V

    .line 284
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->finish()V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->k:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->l:I

    if-eq v0, p2, :cond_1

    .line 653
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->j:Z

    .line 654
    iput p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->k:I

    .line 655
    iput p2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->l:I

    .line 657
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e:Ljava/lang/String;

    .line 392
    iput-object p2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->f:Ljava/util/List;

    .line 397
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    const-class v1, Lcom/yelp/android/ui/activities/ActivityRetryBusinessPhotoShare;

    invoke-static {p0, v0, p2, v1}, Lcom/yelp/android/util/p;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/util/List;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 403
    if-nez v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->f()V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public b()V
    .locals 6

    .prologue
    .line 412
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h:Z

    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->supportInvalidateOptionsMenu()V

    .line 419
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->i:Z

    if-eqz v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->k:I

    iget v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->l:I

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Ljava/lang/String;Ljava/lang/String;II)Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    move-result-object v0

    .line 435
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    const v2, 0x7f0f020d

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    goto :goto_0

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    move-result-object v0

    goto :goto_1

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    if-ne v0, v1, :cond_3

    const v0, 0x7f070504

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 445
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    const/4 v2, 0x0

    const v0, 0x7f07062b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->a(Landroid/content/Context;Ljava/io/File;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 441
    :cond_3
    const v0, 0x7f0704fe

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2
.end method

.method public c()V
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->c()V

    .line 640
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

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
    .line 625
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 299
    sparse-switch p1, :sswitch_data_0

    .line 379
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 314
    :sswitch_0
    if-ne p2, v0, :cond_5

    .line 315
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g:Z

    .line 316
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->w:Z

    .line 317
    const-string/jumbo v0, "extra_selected_media"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 321
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->r:Z

    .line 322
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->r:Z

    if-eqz v1, :cond_2

    .line 325
    invoke-static {p3}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b(Landroid/content/Intent;)Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 334
    new-instance v1, Lcom/yelp/android/g/a;

    invoke-direct {v1}, Lcom/yelp/android/g/a;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->u:Lcom/yelp/android/g/a;

    .line 335
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->u:Lcom/yelp/android/g/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/g/a;->putAll(Ljava/util/Map;)V

    .line 336
    iput v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->s:I

    .line 337
    iput v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->t:I

    goto :goto_0

    :cond_1
    move v1, v3

    .line 321
    goto :goto_1

    .line 341
    :cond_2
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Landroid/content/Intent;)V

    .line 342
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.take_photo_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    if-nez v0, :cond_3

    .line 347
    const v0, 0x7f0702a2

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 349
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->setResult(I)V

    .line 350
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->finish()V

    .line 352
    :cond_3
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideoShare:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 356
    :goto_2
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 352
    :cond_4
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotoShare:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_2

    .line 359
    :cond_5
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->finish()V

    goto :goto_0

    .line 363
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 364
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g:Z

    .line 365
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->f()V

    goto :goto_0

    .line 369
    :sswitch_2
    if-nez p2, :cond_0

    .line 370
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g:Z

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->m:Z

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x426

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 299
    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_1
        0x41b -> :sswitch_2
        0x426 -> :sswitch_0
        0x42c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 154
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.contribution"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 158
    if-eqz v0, :cond_0

    .line 159
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->q:Z

    .line 161
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "extra.is_video"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    new-instance v1, Lcom/yelp/android/ui/activities/addphoto/b;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->x:Lcom/yelp/android/ui/activities/addphoto/b$a;

    invoke-direct {v1, p0, v4}, Lcom/yelp/android/ui/activities/addphoto/b;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/addphoto/b$a;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->n:Landroid/os/AsyncTask;

    .line 163
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->n:Landroid/os/AsyncTask;

    check-cast v1, Lcom/yelp/android/ui/activities/addphoto/b;

    new-array v4, v2, [Landroid/net/Uri;

    aput-object v0, v4, v3

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/addphoto/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 170
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 171
    const-string/jumbo v0, "file_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "file_path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    .line 174
    :cond_1
    const-string/jumbo v0, "image_source"

    const-class v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 179
    const-string/jumbo v0, "extra.disable_video_for_reviews"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->m:Z

    .line 180
    const-string/jumbo v0, "yelp:business"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    const-string/jumbo v0, "extra.take_photo_data"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 184
    if-eqz v0, :cond_3

    .line 185
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Landroid/content/Intent;)V

    .line 190
    :cond_3
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->q:Z

    if-nez v0, :cond_6

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g:Z

    .line 196
    :goto_2
    const v0, 0x7f0f038a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0205bb

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 198
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f020d

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 202
    return-void

    .line 165
    :cond_4
    new-instance v1, Lcom/yelp/android/ui/activities/media/a;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->y:Lcom/yelp/android/ui/activities/media/a$a;

    invoke-direct {v1, p0, v4}, Lcom/yelp/android/ui/activities/media/a;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/media/a$a;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->n:Landroid/os/AsyncTask;

    .line 166
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->n:Landroid/os/AsyncTask;

    check-cast v1, Lcom/yelp/android/ui/activities/media/a;

    new-array v4, v2, [Landroid/net/Uri;

    aput-object v0, v4, v3

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/media/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_5
    move v0, v3

    .line 191
    goto :goto_1

    .line 193
    :cond_6
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g:Z

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 248
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 262
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 252
    :pswitch_0
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 253
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v1, "batch_size"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/c;->aa()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v1, "md5_hash"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/util/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->UploadMediaCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 259
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a()V

    .line 260
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPostResume()V

    .line 226
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->w:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Landroid/support/v4/app/Fragment;

    .line 229
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f020d

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->w:Z

    .line 235
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 211
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->m:Z

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x426

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    const v0, 0x7f04001f

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->overridePendingTransition(II)V

    .line 220
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 241
    const-string/jumbo v0, "file_path"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    const-string/jumbo v0, "image_source"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 244
    return-void
.end method

.method public onYesNoDialogSelection(ZI)V
    .locals 2

    .prologue
    .line 631
    if-eqz p1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->f:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 635
    :cond_0
    return-void
.end method
