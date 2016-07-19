.class public Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityChooseFromGallery.java"

# interfaces
.implements Landroid/support/v4/app/q$a;
.implements Lcom/yelp/android/ui/activities/gallery/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Landroid/support/v4/app/q$a",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/yelp/android/ui/activities/gallery/a$b;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/GridView;

.field private c:Lcom/yelp/android/ui/activities/gallery/a;

.field private d:Lcom/yelp/android/ui/activities/gallery/b;

.field private e:Ljava/lang/String;

.field private f:Landroid/view/MenuItem;

.field private g:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/support/v4/app/q;

.field private n:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;

.field private o:Lcom/yelp/android/ui/activities/gallery/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 503
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->n:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;

    .line 543
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->o:Lcom/yelp/android/ui/activities/gallery/a$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;ZZLjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 130
    if-eqz p3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string/jumbo v0, "ActivityChooseFromGallery"

    const-string/jumbo v1, "Gallery started with contribution buttons and empty business ID!"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 134
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    const-string/jumbo v1, "extra_media_type"

    invoke-static {v0, v1, p1}, Lcom/yelp/android/util/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 137
    const-string/jumbo v1, "extra_copy_media_to_private_dir"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const-string/jumbo v1, "extra_show_contribution_buttons"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    const-string/jumbo v1, "extra_business_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .prologue
    .line 340
    new-instance v0, Landroid/support/v7/app/d$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/d$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700ec

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/d$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/d$a;

    move-result-object v0

    const v1, 0x7f0700eb

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/d$a;

    move-result-object v0

    const v1, 0x7f0706cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    move-result-object v0

    const v1, 0x7f070222

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/d$a;->b()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/d;->show()V

    .line 347
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 470
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 472
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 473
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    const-string/jumbo v1, "bucket_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 475
    const-string/jumbo v2, "bucket_display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/gallery/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/gallery/b$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Ljava/util/List;)V

    .line 484
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 616
    const v0, 0x7f0701c2

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 617
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/util/e;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/yelp/android/util/t;->a(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xbb8

    if-le v1, v2, :cond_0

    .line 623
    new-instance v1, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Ljava/lang/String;Landroid/net/Uri;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 651
    :goto_0
    return-void

    .line 647
    :cond_0
    const v0, 0x7f070642

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 648
    invoke-direct {p0, p1, v3}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c(Landroid/net/Uri;Z)Z

    .line 649
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 523
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g()V

    .line 524
    sget-object v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->TAKE_PHOTO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    if-ne v0, p1, :cond_1

    .line 525
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->i:Ljava/lang/String;

    iget v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->j:I

    invoke-static {p0, v0, v2, v2, v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Context;Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object v0

    .line 534
    const/16 v1, 0x426

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->startActivityForResult(Landroid/content/Intent;I)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->TAKE_VIDEO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    if-ne v0, p1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->i:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 539
    const/16 v1, 0x427

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/net/Uri;Z)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c(Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Lcom/yelp/android/ui/activities/gallery/b;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d:Lcom/yelp/android/ui/activities/gallery/b;

    return-object v0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 654
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$6;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$6;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 664
    return-void
.end method

.method private b(Landroid/net/Uri;Z)V
    .locals 2

    .prologue
    .line 667
    if-eqz p2, :cond_0

    .line 668
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f()V

    .line 691
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e()V

    .line 692
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 677
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    sget-object v0, Lcom/yelp/android/appdata/Features;->video_upload_from_gallery:Lcom/yelp/android/appdata/Features;

    new-instance v1, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$7;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$7;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/net/Uri;)V

    invoke-virtual {v0, p0, v1}, Lcom/yelp/android/appdata/Features;->isEnabledAsync(Landroid/content/Context;Lcom/yelp/android/appdata/Features$a;)Lcom/yelp/android/appdata/g;

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/net/Uri;Z)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b(Landroid/net/Uri;Z)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    sget-object v2, Lcom/yelp/android/ui/activities/gallery/b$a;->a:Lcom/yelp/android/ui/activities/gallery/b$a;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v2, Lcom/yelp/android/ui/activities/gallery/b$a;->b:Lcom/yelp/android/ui/activities/gallery/b$a;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v2, Lcom/yelp/android/ui/activities/gallery/b;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/gallery/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d:Lcom/yelp/android/ui/activities/gallery/b;

    .line 436
    const v0, 0x7f0301f4

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->a(I)V

    .line 437
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 439
    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d:Lcom/yelp/android/ui/activities/gallery/b;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 440
    new-instance v2, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$2;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 464
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->b(Z)V

    .line 465
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 466
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->a(Landroid/view/View;)V

    .line 467
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d()V

    return-void
.end method

.method private c(Landroid/net/Uri;Z)Z
    .locals 1

    .prologue
    .line 695
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 696
    :goto_0
    if-eqz v0, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e()V

    .line 698
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f()V

    .line 700
    :cond_0
    return v0

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Landroid/support/v4/app/q;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->m:Landroid/support/v4/app/q;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 492
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 493
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    sget-object v2, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    if-ne v1, v2, :cond_1

    .line 494
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    :cond_0
    :goto_0
    const/16 v1, 0x408

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->startActivityForResult(Landroid/content/Intent;I)V

    .line 501
    return-void

    .line 495
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    sget-object v2, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    if-ne v1, v2, :cond_2

    .line 496
    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    sget-object v2, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO_AND_VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    if-ne v1, v2, :cond_0

    .line 498
    const-string/jumbo v1, "image/*,video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)I
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h()I

    move-result v0

    return v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 597
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f:Landroid/view/MenuItem;

    const v1, 0x7f070188

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 599
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/gallery/a;->notifyDataSetChanged()V

    .line 600
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a:I

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 606
    iget v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a:I

    if-le v1, v0, :cond_0

    .line 607
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 609
    :cond_0
    return-void

    .line 607
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 710
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 711
    return-void
.end method

.method private h()I
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)Landroid/support/v4/content/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/l",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    packed-switch p1, :pswitch_data_0

    .line 363
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 354
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Landroid/support/v4/content/i;

    move-result-object v0

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;Ljava/lang/String;)Landroid/support/v4/content/i;

    move-result-object v0

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/util/MediaStoreUtil;->b(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Landroid/support/v4/content/i;

    move-result-object v0

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h:Z

    if-nez v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->hasPhotos()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    sget-object v1, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->TAKE_PHOTO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->hasVideos()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    sget-object v1, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->TAKE_VIDEO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Landroid/support/v4/content/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/l",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/support/v4/content/l;->n()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 309
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/gallery/a;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/support/v4/content/l;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/l",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/support/v4/content/l;->n()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 317
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/a;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/gallery/a;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 320
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/support/v4/content/l;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/support/v4/content/l;Landroid/database/Cursor;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/gallery/b$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d:Lcom/yelp/android/ui/activities/gallery/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/gallery/b;->clear()V

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d:Lcom/yelp/android/ui/activities/gallery/b;

    sget-object v1, Lcom/yelp/android/ui/activities/gallery/b$a;->a:Lcom/yelp/android/ui/activities/gallery/b$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/gallery/b;->add(Ljava/lang/Object;)V

    .line 423
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d:Lcom/yelp/android/ui/activities/gallery/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/gallery/b;->a(Ljava/util/List;)V

    .line 424
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d:Lcom/yelp/android/ui/activities/gallery/b;

    sget-object v1, Lcom/yelp/android/ui/activities/gallery/b$a;->b:Lcom/yelp/android/ui/activities/gallery/b$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/gallery/b;->add(Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d:Lcom/yelp/android/ui/activities/gallery/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/gallery/b;->notifyDataSetChanged()V

    .line 426
    return-void
.end method

.method public a(Landroid/net/Uri;Z)Z
    .locals 1

    .prologue
    .line 705
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b()V
    .locals 7

    .prologue
    .line 401
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->n:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;Ljava/util/List;)V

    .line 405
    new-instance v6, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v6}, Lcom/yelp/android/ui/util/aj;-><init>()V

    .line 407
    const/4 v1, 0x0

    invoke-virtual {v6, v1, v0}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 409
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->o:Lcom/yelp/android/ui/activities/gallery/a$a;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/gallery/a;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/gallery/a$a;Landroid/database/Cursor;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;Lcom/yelp/android/ui/activities/gallery/a$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/a;

    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/a;

    iget v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/gallery/a;->a(I)V

    .line 412
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/a;

    invoke-virtual {v6, v0, v1}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 414
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b:Landroid/widget/GridView;

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 415
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UploadGallery:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 283
    sparse-switch p1, :sswitch_data_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 285
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 286
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 287
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->o:Lcom/yelp/android/ui/activities/gallery/a$a;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/yelp/android/ui/activities/gallery/a$a;->a(Landroid/net/Uri;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 295
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 296
    invoke-virtual {p0, p2, p3}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->setResult(ILandroid/content/Intent;)V

    .line 297
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->finish()V

    goto :goto_0

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0x408 -> :sswitch_0
        0x426 -> :sswitch_1
        0x427 -> :sswitch_1
        0x42c -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h()I

    move-result v0

    if-lez v0, :cond_0

    .line 328
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$1;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 144
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const/16 v0, 0xfa

    new-array v1, v4, [Lcom/yelp/android/appdata/PermissionGroup;

    sget-object v2, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v2, v1, v5

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/app/Activity;I[Lcom/yelp/android/appdata/PermissionGroup;)Z

    .line 149
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->setContentView(I)V

    .line 151
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 152
    const-string/jumbo v0, "extra_media_type"

    const-class v2, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    sget-object v3, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-static {v1, v0, v2, v3}, Lcom/yelp/android/util/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    .line 154
    const-string/jumbo v0, "extra_show_contribution_buttons"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h:Z

    .line 155
    const-string/jumbo v0, "extra_business_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->i:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, "CameraId"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->j:I

    .line 161
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h:Z

    if-eqz v0, :cond_4

    .line 162
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a:I

    .line 167
    :goto_0
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b:Landroid/widget/GridView;

    .line 168
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b()V

    .line 169
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c()V

    .line 173
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yelp/android/appdata/c;->e(I)V

    .line 175
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getSupportLoaderManager()Landroid/support/v4/app/q;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->m:Landroid/support/v4/app/q;

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->m:Landroid/support/v4/app/q;

    invoke-virtual {v0, v5, v6, p0}, Landroid/support/v4/app/q;->a(ILandroid/os/Bundle;Landroid/support/v4/app/q$a;)Landroid/support/v4/content/l;

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->m:Landroid/support/v4/app/q;

    invoke-virtual {v0, v4, v6, p0}, Landroid/support/v4/app/q;->a(ILandroid/os/Bundle;Landroid/support/v4/app/q$a;)Landroid/support/v4/content/l;

    .line 181
    :cond_0
    const v0, 0x7f0f038a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 182
    const v1, 0x7f0205bb

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 184
    if-eqz p1, :cond_1

    .line 185
    const-string/jumbo v0, "extra_photos_selected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Ljava/util/ArrayList;

    .line 186
    const-string/jumbo v0, "extra_videos_selected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Ljava/util/ArrayList;

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Ljava/util/ArrayList;

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Ljava/util/ArrayList;

    .line 196
    :cond_3
    return-void

    .line 164
    :cond_4
    iput v4, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 221
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 222
    iget v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a:I

    if-le v0, v4, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 224
    const v0, 0x7f0f0607

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f:Landroid/view/MenuItem;

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f:Landroid/view/MenuItem;

    const v1, 0x7f070188

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 227
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 231
    :cond_0
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 237
    sparse-switch v0, :sswitch_data_0

    .line 271
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 239
    :sswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->onBackPressed()V

    move v0, v1

    .line 240
    goto :goto_0

    .line 242
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 243
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 245
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 248
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 251
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/appdata/c;->e(I)V

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 255
    const-string/jumbo v4, "extra_file_path"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/yelp/android/util/e;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    :cond_2
    const-string/jumbo v0, "extra_selected_media"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 262
    const-string/jumbo v0, "extra_media_source"

    sget-object v3, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {v2, v0, v3}, Lcom/yelp/android/util/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 267
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->setResult(ILandroid/content/Intent;)V

    .line 268
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->finish()V

    move v0, v1

    .line 269
    goto/16 :goto_0

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f0607 -> :sswitch_1
    .end sparse-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 201
    const/16 v0, 0xfa

    if-ne v0, p1, :cond_2

    .line 202
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/k;->a([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v1

    .line 205
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->recreate()V

    goto :goto_0

    .line 215
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    const-string/jumbo v0, "extra_photos_selected"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 278
    const-string/jumbo v0, "extra_videos_selected"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 279
    return-void
.end method
