.class public Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityChooseFromGallery.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Lcom/yelp/android/ui/activities/gallery/k;

.field private c:Lcom/yelp/android/ui/activities/gallery/p;

.field private d:Ljava/lang/String;

.field private e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Landroid/support/v4/app/LoaderManager;

.field private k:Lcom/yelp/android/ui/activities/gallery/i;

.field private l:Lcom/yelp/android/ui/activities/gallery/n;

.field private m:Lcom/yelp/android/ui/activities/media/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 353
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/gallery/b;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Lcom/yelp/android/ui/activities/gallery/i;

    .line 374
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/gallery/c;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Lcom/yelp/android/ui/activities/gallery/n;

    .line 440
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/gallery/g;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->m:Lcom/yelp/android/ui/activities/media/b;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;ZZLjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 114
    if-eqz p3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string/jumbo v0, "ActivityChooseFromGallery"

    const-string/jumbo v1, "Gallery started with contribution buttons and empty business ID!"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 118
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    const-string/jumbo v1, "extra_media_type"

    invoke-static {v0, v1, p1}, Lcom/yelp/android/util/f;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 121
    const-string/jumbo v1, "extra_copy_media_to_private_dir"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    const-string/jumbo v1, "extra_show_contribution_buttons"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, "extra_business_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Lcom/yelp/android/ui/activities/gallery/p;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/p;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 319
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 321
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 322
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    const-string/jumbo v1, "bucket_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 325
    const-string/jumbo v2, "bucket_display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/gallery/q;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/gallery/q;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Ljava/util/List;)V

    .line 334
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 416
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/e;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/gallery/e;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/gallery/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 429
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Landroid/support/v4/app/LoaderManager;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->j:Landroid/support/v4/app/LoaderManager;

    return-object v0
.end method

.method private c()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    sget-object v2, Lcom/yelp/android/ui/activities/gallery/q;->a:Lcom/yelp/android/ui/activities/gallery/q;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v2, Lcom/yelp/android/ui/activities/gallery/q;->b:Lcom/yelp/android/ui/activities/gallery/q;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v2, Lcom/yelp/android/ui/activities/gallery/p;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/gallery/p;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/p;

    .line 284
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const v0, 0x7f07047a

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->b(I)V

    .line 316
    :goto_0
    return-void

    .line 287
    :cond_0
    const v0, 0x7f030179

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->a(I)V

    .line 288
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 290
    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/p;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 291
    new-instance v2, Lcom/yelp/android/ui/activities/gallery/a;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/gallery/a;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 312
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->b(Z)V

    .line 313
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 314
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    sget-object v2, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    if-ne v1, v2, :cond_1

    .line 344
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    :cond_0
    :goto_0
    const/16 v1, 0x405

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    return-void

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    sget-object v2, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    if-ne v1, v2, :cond_2

    .line 346
    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    sget-object v2, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO_AND_VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    if-ne v1, v2, :cond_0

    .line 348
    const-string/jumbo v1, "image/*,video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->i:I

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/f;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/gallery/f;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 438
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g:Z

    return v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Lcom/yelp/android/ui/activities/media/b;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->m:Lcom/yelp/android/ui/activities/media/b;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e()V

    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->showLoadingDialog()V

    return-void
.end method


# virtual methods
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
    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f:Z

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->hasPhotos()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    sget-object v1, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->TAKE_PHOTO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->hasVideos()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    sget-object v1, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->TAKE_VIDEO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Landroid/support/v4/content/r;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/r",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/support/v4/content/r;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 187
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b:Lcom/yelp/android/ui/activities/gallery/k;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/gallery/k;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/gallery/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/p;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/gallery/p;->clear()V

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/p;

    sget-object v1, Lcom/yelp/android/ui/activities/gallery/q;->a:Lcom/yelp/android/ui/activities/gallery/q;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/gallery/p;->add(Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/p;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/gallery/p;->a(Ljava/util/List;)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/p;

    sget-object v1, Lcom/yelp/android/ui/activities/gallery/q;->b:Lcom/yelp/android/ui/activities/gallery/q;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/gallery/p;->add(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c:Lcom/yelp/android/ui/activities/gallery/p;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/gallery/p;->notifyDataSetChanged()V

    .line 269
    return-void
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 247
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/k;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Lcom/yelp/android/ui/activities/gallery/n;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/yelp/android/ui/activities/gallery/k;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/gallery/n;Landroid/database/Cursor;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b:Lcom/yelp/android/ui/activities/gallery/k;

    .line 249
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->k:Lcom/yelp/android/ui/activities/gallery/i;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/gallery/i;Ljava/util/List;)V

    .line 252
    new-instance v1, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/bs;-><init>()V

    .line 254
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 255
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b:Lcom/yelp/android/ui/activities/gallery/k;

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UploadGallery:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 153
    sparse-switch p1, :sswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 155
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 156
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->l:Lcom/yelp/android/ui/activities/gallery/n;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/yelp/android/ui/activities/gallery/n;->a(Landroid/net/Uri;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 164
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 165
    invoke-virtual {p0, p2, p3}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->finish()V

    goto :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x405 -> :sswitch_0
        0x41d -> :sswitch_1
        0x41e -> :sswitch_1
        0x423 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 132
    const-string/jumbo v0, "extra_copy_media_to_private_dir"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g:Z

    .line 133
    const-string/jumbo v0, "extra_media_type"

    const-class v2, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    sget-object v3, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-static {v1, v0, v2, v3}, Lcom/yelp/android/util/f;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    .line 135
    const-string/jumbo v0, "extra_show_contribution_buttons"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f:Z

    .line 136
    const-string/jumbo v0, "extra_business_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "CameraId"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->i:I

    .line 139
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a:Landroid/widget/GridView;

    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b()V

    .line 141
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c()V

    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->j:Landroid/support/v4/app/LoaderManager;

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->j:Landroid/support/v4/app/LoaderManager;

    invoke-virtual {v0, v4, v6, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/r;

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->j:Landroid/support/v4/app/LoaderManager;

    invoke-virtual {v0, v5, v6, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/r;

    .line 147
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 148
    const v1, 0x7f02040f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 149
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/r",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    packed-switch p1, :pswitch_data_0

    .line 209
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Landroid/support/v4/content/i;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;Ljava/lang/String;)Landroid/support/v4/content/i;

    move-result-object v0

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/util/MediaStoreUtil;->b(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Landroid/support/v4/content/i;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/r;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/support/v4/content/r;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/r",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/support/v4/content/r;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b:Lcom/yelp/android/ui/activities/gallery/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/gallery/k;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
