.class public Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityPhotoPrompt.java"


# static fields
.field private static a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/app/AlertDialog;

.field private j:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

.field private k:Ljava/io/File;

.field private l:Z

.field private m:Lcom/yelp/android/ui/util/t;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    invoke-direct {v0}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->l:Z

    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    if-eqz p0, :cond_0

    .line 88
    const-string/jumbo v1, "next_intent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    :cond_0
    const-string/jumbo v1, "user_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p3, v0}, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->putType(Landroid/content/Intent;)V

    .line 92
    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 412
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->k:Ljava/io/File;

    .line 413
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 414
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->m:Lcom/yelp/android/ui/util/t;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->k:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/yelp/android/ui/util/u$a;->a(II)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 415
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 405
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a(Ljava/io/File;)V

    .line 406
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 291
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$3;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;)V

    .line 301
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07013c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0704d5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07068c

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07018f

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->i:Landroid/app/AlertDialog;

    .line 309
    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 373
    if-eqz p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 318
    const v0, 0x7f0f01a9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 320
    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$4;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$4;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 336
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b(Z)V

    .line 344
    :try_start_0
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    const-string/jumbo v1, "Error uploading photo"

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f0700bf

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->k:Ljava/io/File;

    goto :goto_0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 355
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->l:Z

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->c:Landroid/widget/TextView;

    const v1, 0x7f070481

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "user_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->d:Landroid/widget/TextView;

    const v1, 0x7f070480

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->c:Landroid/widget/TextView;

    const v1, 0x7f0705c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 362
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->d:Landroid/widget/TextView;

    const v1, 0x7f07048a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->b()V

    .line 248
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 251
    const-string/jumbo v1, "next_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->n:Z

    if-nez v1, :cond_0

    .line 255
    const-string/jumbo v1, "next_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 256
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 257
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->startActivity(Landroid/content/Intent;)V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->n:Z

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->finish()V

    .line 262
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const v2, 0x7f070555

    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b(Z)V

    .line 391
    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->l:Z

    .line 394
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->e()V

    .line 402
    :goto_0
    return-void

    .line 396
    :cond_0
    const v0, 0x7f070505

    const v1, 0x7f070588

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->showYesNoDialog(IIII)V

    goto :goto_0
.end method

.method public addPhotoButton(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->l:Z

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->j:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->trackAddPhotoIri()V

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->openContextMenu(Landroid/view/View;)V

    .line 275
    :cond_0
    return-void
.end method

.method public doneButton(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a()V

    .line 285
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfilePhotoPrompt:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

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
    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->j:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->getAdditionalParametersForIri()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 168
    packed-switch p1, :pswitch_data_0

    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 170
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 171
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "extra_file_path"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a(Ljava/io/File;)V

    .line 173
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b(Z)V

    .line 174
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->d()V

    goto :goto_0

    .line 175
    :cond_1
    if-nez p2, :cond_0

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x426
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->getType(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->j:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->j:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->getTitleText()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->setTitle(I)V

    .line 103
    const v0, 0x7f0f0502

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f0f00a9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->c:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0f00e0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->d:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0f0503

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->e:Landroid/view/View;

    .line 107
    const v0, 0x7f0f01a8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->f:Landroid/view/View;

    .line 108
    const v0, 0x7f0f01aa

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->g:Landroid/view/View;

    .line 109
    const v0, 0x7f0f01ab

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->h:Landroid/view/View;

    .line 111
    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->m:Lcom/yelp/android/ui/util/t;

    .line 113
    if-nez p1, :cond_0

    .line 114
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->b()V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$1;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->e()V

    .line 134
    return-void

    .line 116
    :cond_0
    const-string/jumbo v0, "image_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a(Ljava/lang/String;)V

    .line 120
    :cond_1
    const-string/jumbo v0, "upload_done"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->l:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->i:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->i:Landroid/app/AlertDialog;

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 143
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 227
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 219
    :sswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b()V

    goto :goto_0

    .line 223
    :sswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a()V

    goto :goto_0

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0607 -> :sswitch_1
        0x7f0f060d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a(Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$a;)V

    .line 148
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 149
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 205
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 206
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->l:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 212
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100025

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->c()V

    .line 154
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$2;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a(Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$a;)V

    .line 161
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b(Z)V

    .line 163
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 164
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->k:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 189
    const-string/jumbo v0, "image_location"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    const-string/jumbo v0, "upload_done"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    return-void
.end method

.method public onYesNoDialogSelection(ZI)V
    .locals 0

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->d()V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a()V

    goto :goto_0
.end method
