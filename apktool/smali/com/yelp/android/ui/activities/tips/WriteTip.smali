.class public Lcom/yelp/android/ui/activities/tips/WriteTip;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "WriteTip.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/yelp/android/ui/util/al;


# instance fields
.field protected a:Landroid/graphics/Bitmap;

.field private b:Landroid/widget/EditText;

.field private c:Ljava/lang/String;

.field private d:Lcom/yelp/android/ui/widgets/WebImageView;

.field private e:Landroid/widget/ToggleButton;

.field private f:Landroid/widget/ToggleButton;

.field private g:Lcom/yelp/android/ui/util/ImageInputHelper;

.field private h:Z

.field private i:Lcom/yelp/android/serializable/Tip;

.field private j:Lcom/yelp/android/ui/activities/tips/r;

.field private k:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

.field private l:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation
.end field

.field private final m:Landroid/view/View$OnClickListener;

.field private final n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->h:Z

    .line 391
    new-instance v0, Lcom/yelp/android/ui/activities/tips/n;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/tips/n;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->m:Landroid/view/View$OnClickListener;

    .line 403
    new-instance v0, Lcom/yelp/android/ui/activities/tips/o;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/tips/o;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    sget-object v1, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->EDIT:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 387
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 377
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    sget-object v1, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->NEW:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/tips/WriteTip;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/ui/widgets/WebImageView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/serializable/Tip;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/ui/activities/tips/r;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->j:Lcom/yelp/android/ui/activities/tips/r;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 213
    const v0, 0x7f0c017d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    const v1, 0x7f0203e7

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a()V

    .line 505
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/tips/WriteTip;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->k:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/tips/WriteTip;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->f:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/tips/WriteTip;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->e:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/ui/util/ImageInputHelper;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    const-string/jumbo v0, "bundle message for dialogs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070203

    new-instance v2, Lcom/yelp/android/ui/activities/tips/l;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/tips/l;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->hideLoadingDialog()V

    .line 571
    const v0, 0x7f07009a

    const v1, 0x7f07024c

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->showInfoDialog(II)V

    .line 572
    return-void
.end method

.method protected a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 217
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z
    .locals 1

    .prologue
    .line 560
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->a:Landroid/graphics/Bitmap;

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->h:Z

    .line 562
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 563
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->c()V

    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const v3, 0x7f0705f9

    .line 309
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0705f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/tips/m;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/m;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 449
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->e()Ljava/io/File;

    move-result-object v0

    .line 450
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->h:Z

    if-nez v1, :cond_0

    .line 451
    const/4 v0, 0x0

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getText()Ljava/lang/String;

    move-result-object v7

    .line 458
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v8

    .line 460
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/Tip;->setText(Ljava/lang/String;)V

    .line 461
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->h:Z

    if-eqz v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/Tip;->setEditedBitmap(Landroid/graphics/Bitmap;)V

    .line 465
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->k:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    sget-object v2, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->NEW:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    if-ne v1, v2, :cond_3

    .line 466
    new-instance v1, Lcom/yelp/android/appdata/webrequests/SaveTipRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/appdata/webrequests/SaveTipRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 467
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    .line 468
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    .line 469
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->setResult(I)V

    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getTempId()Ljava/lang/String;

    move-result-object v6

    .line 472
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    const-string/jumbo v10, "com.yelp.android.tips.add"

    invoke-direct {v0, v2, v10}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->d()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    if-ne v0, v2, :cond_4

    move v2, v9

    .line 496
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->k:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    sget-object v10, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->EDIT:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    if-ne v0, v10, :cond_2

    move v5, v9

    :cond_2
    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/yelp/android/services/TipUploadService;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/Photo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 499
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->finish()V

    .line 500
    :goto_2
    return-void

    .line 475
    :cond_3
    :try_start_1
    new-instance v1, Lcom/yelp/android/appdata/webrequests/EditTipRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/appdata/webrequests/EditTipRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 477
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 478
    sget-object v2, Lcom/yelp/android/serializable/TipFeedEntry;->CONTENT_KEY:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 479
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 480
    const-string/jumbo v3, "bundle to be passed"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 481
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->setResult(ILandroid/content/Intent;)V

    .line 482
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v6

    .line 484
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    const-string/jumbo v3, "com.yelp.android.tips.update"

    invoke-direct {v0, v2, v3}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v5

    move v3, v5

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 489
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->d()V

    .line 490
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->showInfoDialog(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    move v2, v5

    .line 495
    goto :goto_1
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 511
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->WriteTip:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 3
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
    .line 516
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 517
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    if-eqz v1, :cond_0

    .line 519
    const-string/jumbo v1, "quicktip_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_0
    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 266
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 267
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eq p2, v3, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->finish()V

    .line 270
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    if-ne p2, v3, :cond_1

    .line 271
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p3, p0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/content/Intent;Lcom/yelp/android/ui/util/al;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 273
    :cond_1
    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    if-ne p2, v3, :cond_2

    .line 274
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->b()V

    .line 276
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const v10, 0x7f0c01c5

    const v9, 0x7f0c01c3

    const/16 v8, 0x8

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const v0, 0x7f070351

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 111
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    :cond_0
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->setContentView(I)V

    .line 116
    const v0, 0x7f0c017d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    const v0, 0x7f0c01ca

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 121
    const v0, 0x7f0c00c6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/tips/h;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/h;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->registerForContextMenu(Landroid/view/View;)V

    .line 131
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v1

    const/16 v3, 0x65

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/util/ImageInputHelper;-><init>(Lcom/yelp/android/appdata/n;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    .line 132
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->d()V

    .line 134
    if-eqz p1, :cond_5

    .line 135
    const-string/jumbo v0, "bitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->a:Landroid/graphics/Bitmap;

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->b(Landroid/os/Bundle;)V

    .line 137
    const-string/jumbo v0, "key.bundle.text.state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "photo_dirty"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->h:Z

    move-object v1, v0

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->k:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    .line 147
    new-instance v0, Lcom/yelp/android/ui/activities/tips/r;

    invoke-direct {v0, p0, v2}, Lcom/yelp/android/ui/activities/tips/r;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;Lcom/yelp/android/ui/activities/tips/h;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->j:Lcom/yelp/android/ui/activities/tips/r;

    .line 149
    const v0, 0x7f0c01c9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    iget-object v3, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    new-instance v4, Lcom/yelp/android/ui/util/ce;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-direct {v4, v0, v5}, Lcom/yelp/android/ui/util/ce;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "business_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->c:Ljava/lang/String;

    .line 155
    const v0, 0x7f0c01c6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->e:Landroid/widget/ToggleButton;

    .line 156
    const v0, 0x7f0c01c7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->f:Landroid/widget/ToggleButton;

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->e:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/yelp/android/ui/activities/tips/j;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/tips/j;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->f:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/yelp/android/ui/activities/tips/k;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/tips/k;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->f:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->e:Landroid/widget/ToggleButton;

    invoke-static {v0, v3, v2, v4, v5}, Lcom/yelp/android/util/z;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Landroid/content/SharedPreferences;Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)V

    .line 179
    sget-object v0, Lcom/yelp/android/ui/activities/tips/i;->a:[I

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->k:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_1
    return-void

    .line 181
    :pswitch_0
    new-instance v0, Lcom/yelp/android/serializable/Tip$TempTip;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Tip$TempTip;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 183
    if-eqz v1, :cond_2

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_2
    invoke-virtual {p0, v10}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 189
    const v0, 0x7f070608

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->setTitle(I)V

    goto :goto_1

    .line 192
    :pswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "tip"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    .line 193
    if-eqz v1, :cond_4

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 200
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->c()V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 203
    :cond_3
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual {p0, v10}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 205
    const v0, 0x7f0c00ab

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v0, 0x7f0c01c4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v0, 0x7f070609

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->setTitle(I)V

    goto/16 :goto_1

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto/16 :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    const v3, 0x7f0c0509

    const/4 v2, 0x0

    .line 531
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 532
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c00c6

    if-ne v0, v1, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 534
    const v0, 0x7f0c050a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 535
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/n;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 548
    :goto_0
    const v0, 0x7f0c01b7

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/tips/q;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/q;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 556
    :cond_0
    return-void

    .line 538
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/tips/p;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/p;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 280
    packed-switch p1, :pswitch_data_0

    .line 286
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 282
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 284
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->b(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 235
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 236
    const v0, 0x7f0c04fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->k:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    sget-object v2, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->NEW:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    if-ne v0, v2, :cond_0

    const v0, 0x7f070490

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 238
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_0
    const v0, 0x7f070647

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 256
    if-nez p2, :cond_0

    invoke-static {p3}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 259
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 243
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c04fd

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->n:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 363
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->removeDialog(I)V

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->cancel(Z)V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 370
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 227
    const-string/jumbo v0, "bitmap"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 228
    const-string/jumbo v0, "photo_dirty"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/os/Bundle;)V

    .line 230
    return-void
.end method
