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

.field private m:Lcom/bumptech/glide/j;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    invoke-direct {v0}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->l:Z

    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    if-eqz p0, :cond_0

    .line 89
    const-string/jumbo v1, "next_intent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    :cond_0
    const-string/jumbo v1, "user_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p3, v0}, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->putType(Landroid/content/Intent;)V

    .line 93
    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 285
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/e;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;)V

    .line 294
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700bd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0704ba

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0706ba

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070111

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->i:Landroid/app/AlertDialog;

    .line 301
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 399
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->k:Ljava/io/File;

    .line 400
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 401
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->m:Lcom/bumptech/glide/j;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->k:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/io/File;)Lcom/bumptech/glide/d;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/bumptech/glide/d;->a(II)Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 402
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 392
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a(Ljava/io/File;)V

    .line 393
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 310
    const v0, 0x7f0c0176

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 312
    new-instance v2, Lcom/yelp/android/ui/activities/reviews/f;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/reviews/f;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 326
    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 363
    if-eqz p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b(Z)V

    .line 334
    :try_start_0
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    const-string/jumbo v1, "Error uploading photo"

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 338
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->k:Ljava/io/File;

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 345
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->l:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->c:Landroid/widget/TextView;

    const v1, 0x7f07045f

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

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->d:Landroid/widget/TextView;

    const v1, 0x7f07045e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->c:Landroid/widget/TextView;

    const v1, 0x7f0705d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->d:Landroid/widget/TextView;

    const v1, 0x7f070477

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 353
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    const v2, 0x7f070555

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b(Z)V

    .line 381
    if-eqz p1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->l:Z

    .line 384
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->d()V

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    const v0, 0x7f070500

    const v1, 0x7f070580

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->showYesNoDialog(IIII)V

    goto :goto_0
.end method

.method public addPhotoButton(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->l:Z

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->j:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->trackAddPhotoIri()V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->openContextMenu(Landroid/view/View;)V

    .line 269
    :cond_0
    return-void
.end method

.method public doneButton(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->finish()V

    .line 279
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->b()V

    .line 247
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 250
    const-string/jumbo v1, "next_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->n:Z

    if-nez v1, :cond_0

    .line 251
    const-string/jumbo v1, "next_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->startActivity(Landroid/content/Intent;)V

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->n:Z

    .line 255
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->finish()V

    .line 256
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfilePhotoPrompt:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 1
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
    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->j:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->getAdditionalParametersForIri()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 178
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 168
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 169
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "extra_file_path"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a(Ljava/io/File;)V

    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b(Z)V

    .line 172
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->c()V

    goto :goto_0

    .line 173
    :cond_1
    if-nez p2, :cond_0

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x41d
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->getType(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->j:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->j:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->getTitleText()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->setTitle(I)V

    .line 104
    const v0, 0x7f0c041e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0c0084

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->c:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0c00a9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->d:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0c041f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->e:Landroid/view/View;

    .line 108
    const v0, 0x7f0c0175

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->f:Landroid/view/View;

    .line 109
    const v0, 0x7f0c0177

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->g:Landroid/view/View;

    .line 110
    const v0, 0x7f0c0178

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->h:Landroid/view/View;

    .line 112
    invoke-static {p0}, Lcom/bumptech/glide/h;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->m:Lcom/bumptech/glide/j;

    .line 114
    if-nez p1, :cond_0

    .line 115
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->b()V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/c;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/c;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->d()V

    .line 133
    return-void

    .line 117
    :cond_0
    const-string/jumbo v0, "image_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a(Ljava/lang/String;)V

    .line 121
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
    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->i:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->i:Landroid/app/AlertDialog;

    .line 141
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 142
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 215
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 225
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 217
    :sswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a()V

    goto :goto_0

    .line 221
    :sswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->finish()V

    goto :goto_0

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c04fd -> :sswitch_1
        0x7f0c0504 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a(Lcom/yelp/android/appdata/controllers/b;)V

    .line 147
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 148
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 204
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->l:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 210
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100020

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b()V

    .line 153
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/d;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a(Lcom/yelp/android/appdata/controllers/b;)V

    .line 159
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b(Z)V

    .line 161
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 162
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->k:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 187
    const-string/jumbo v0, "image_location"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    const-string/jumbo v0, "upload_done"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method public onYesNoDialogSelection(ZI)V
    .locals 0

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->c()V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->finish()V

    goto :goto_0
.end method
