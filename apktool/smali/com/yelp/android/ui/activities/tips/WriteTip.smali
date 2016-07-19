.class public Lcom/yelp/android/ui/activities/tips/WriteTip;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "WriteTip.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/yelp/android/ui/util/ImageInputHelper$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/tips/WriteTip$2;,
        Lcom/yelp/android/ui/activities/tips/WriteTip$a;,
        Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;
    }
.end annotation


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

.field private j:Lcom/yelp/android/ui/activities/tips/WriteTip$a;

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

.field private m:Ljava/lang/String;

.field private final n:Landroid/view/View$OnClickListener;

.field private final o:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->h:Z

    .line 437
    new-instance v0, Lcom/yelp/android/ui/activities/tips/WriteTip$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/tips/WriteTip$7;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->n:Landroid/view/View$OnClickListener;

    .line 450
    new-instance v0, Lcom/yelp/android/ui/activities/tips/WriteTip$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/tips/WriteTip$8;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->o:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    sget-object v1, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->EDIT:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    const-string/jumbo v1, "extra.business_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    sget-object v1, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->NEW:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v1, "extra.business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 125
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    const-string/jumbo v1, "extra.tip_source"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/tips/WriteTip;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/ui/widgets/WebImageView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/serializable/Tip;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/ui/activities/tips/WriteTip$a;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->j:Lcom/yelp/android/ui/activities/tips/WriteTip$a;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 252
    const v0, 0x7f0f01af

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    const v1, 0x7f020575

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 565
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a()V

    .line 566
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/tips/WriteTip;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/tips/WriteTip;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->k:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/tips/WriteTip;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->f:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/tips/WriteTip;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->e:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/ui/util/ImageInputHelper;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 350
    const-string/jumbo v0, "bundle message for dialogs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700fe

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070250

    new-instance v2, Lcom/yelp/android/ui/activities/tips/WriteTip$5;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/tips/WriteTip$5;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->hideLoadingDialog()V

    .line 645
    const v0, 0x7f070118

    const v1, 0x7f0702a2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->showInfoDialog(II)V

    .line 646
    return-void
.end method

.method protected a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 256
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->r()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 259
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
    .line 634
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->a:Landroid/graphics/Bitmap;

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->h:Z

    .line 636
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 637
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->c()V

    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const v3, 0x7f0705e4

    .line 370
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0705e2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/tips/WriteTip$6;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/WriteTip$6;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 506
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->e()Ljava/io/File;

    move-result-object v3

    .line 509
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->d()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    .line 510
    :goto_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->h:Z

    if-nez v0, :cond_0

    .line 511
    const/4 v3, 0x0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->e()Ljava/lang/String;

    move-result-object v11

    .line 515
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->r()Lcom/yelp/android/serializable/Photo;

    move-result-object v12

    .line 516
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 517
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/Tip;->a(Ljava/lang/String;)V

    .line 518
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->h:Z

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Tip;->a(Landroid/graphics/Bitmap;)V

    .line 523
    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 524
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->d()V

    .line 525
    const v0, 0x7f0700bf

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->showInfoDialog(Ljava/lang/CharSequence;)V

    .line 561
    :goto_1
    return-void

    .line 509
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->k:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    sget-object v1, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->NEW:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    if-ne v0, v1, :cond_4

    .line 530
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/services/job/TipNewJob;->launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZZ)V

    .line 538
    invoke-virtual {p0, v13}, Lcom/yelp/android/ui/activities/tips/WriteTip;->setResult(I)V

    .line 540
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    const-string/jumbo v2, "com.yelp.android.tips.add"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 560
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->finish()V

    goto :goto_1

    .line 543
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    move-object v9, v3

    move v10, v6

    invoke-static/range {v7 .. v12}, Lcom/yelp/android/services/job/TipEditJob;->launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;Lcom/yelp/android/serializable/Photo;)V

    .line 551
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 552
    const-string/jumbo v1, "tip_updated"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, v13, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->setResult(ILandroid/content/Intent;)V

    .line 555
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    const-string/jumbo v2, "com.yelp.android.tips.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 572
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->WriteTip:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
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
    .line 577
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 578
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    if-eqz v1, :cond_0

    .line 580
    const-string/jumbo v1, "quicktip_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_0
    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 325
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 326
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eq p2, v3, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->finish()V

    .line 329
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    if-ne p2, v3, :cond_1

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p3, p0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/content/Intent;Lcom/yelp/android/ui/util/ImageInputHelper$c;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 332
    :cond_1
    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    if-ne p2, v3, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->b()V

    .line 335
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const v10, 0x7f0f01f5

    const v9, 0x7f0f01f3

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 140
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const v0, 0x7f07038d

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 143
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.tip_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->m:Ljava/lang/String;

    .line 148
    const v0, 0x7f03005a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->setContentView(I)V

    .line 150
    const v0, 0x7f0f01af

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    const v0, 0x7f0f01fa

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 155
    const v0, 0x7f0f0113

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/tips/WriteTip$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/WriteTip$1;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->registerForContextMenu(Landroid/view/View;)V

    .line 166
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v1

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;-><init>(Lcom/yelp/android/appdata/f;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    .line 167
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->d()V

    .line 169
    if-eqz p1, :cond_5

    .line 170
    const-string/jumbo v0, "bitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->a:Landroid/graphics/Bitmap;

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->b(Landroid/os/Bundle;)V

    .line 172
    const-string/jumbo v0, "key.bundle.text.state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string/jumbo v1, "photo_dirty"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->h:Z

    move-object v6, v0

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->k:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    .line 182
    new-instance v0, Lcom/yelp/android/ui/activities/tips/WriteTip$a;

    invoke-direct {v0, p0, v3}, Lcom/yelp/android/ui/activities/tips/WriteTip$a;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;Lcom/yelp/android/ui/activities/tips/WriteTip$1;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->j:Lcom/yelp/android/ui/activities/tips/WriteTip$a;

    .line 184
    const v0, 0x7f0f01f9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/yelp/android/ui/util/al;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-direct {v2, v0, v4}, Lcom/yelp/android/ui/util/al;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->c:Ljava/lang/String;

    .line 191
    const v0, 0x7f0f01f6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->e:Landroid/widget/ToggleButton;

    .line 192
    const v0, 0x7f0f01f7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->f:Landroid/widget/ToggleButton;

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->e:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/yelp/android/ui/activities/tips/WriteTip$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/WriteTip$3;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->f:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/yelp/android/ui/activities/tips/WriteTip$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/WriteTip$4;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v1

    .line 215
    const/4 v2, 0x1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->f:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->e:Landroid/widget/ToggleButton;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/util/p;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/User;ZLandroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)V

    .line 218
    sget-object v0, Lcom/yelp/android/ui/activities/tips/WriteTip$2;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->k:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 249
    :goto_1
    return-void

    .line 220
    :pswitch_0
    new-instance v0, Lcom/yelp/android/serializable/Tip$TempTip;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Tip$TempTip;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 222
    if-eqz v6, :cond_2

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_2
    invoke-virtual {p0, v10}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 227
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 228
    const v0, 0x7f0705f2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->setTitle(I)V

    goto :goto_1

    .line 231
    :pswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    .line 232
    if-eqz v6, :cond_4

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->r()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 239
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->c()V

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->r()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 242
    :cond_3
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 243
    invoke-virtual {p0, v10}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 244
    const v0, 0x7f0f00e2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    const v0, 0x7f0f01f4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const v0, 0x7f0705f3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->setTitle(I)V

    goto/16 :goto_1

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->i:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    move-object v6, v3

    goto/16 :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    const v3, 0x7f0f0612

    const/4 v2, 0x0

    .line 593
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 594
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f0113

    if-ne v0, v1, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100018

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 596
    const v0, 0x7f0f0613

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 597
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 619
    :goto_0
    const v0, 0x7f0f01e7

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/tips/WriteTip$10;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/WriteTip$10;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 630
    :cond_0
    return-void

    .line 600
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/tips/WriteTip$9;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/WriteTip$9;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 339
    packed-switch p1, :pswitch_data_0

    .line 345
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 341
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 343
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->b(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 274
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 275
    const v0, 0x7f0f0607

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->k:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    sget-object v2, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->NEW:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    if-ne v0, v2, :cond_0

    const v0, 0x7f0704a7

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 277
    const/4 v0, 0x1

    return v0

    .line 275
    :cond_0
    const v0, 0x7f070623

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 295
    if-nez p2, :cond_0

    invoke-static {p3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 298
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0607

    if-ne v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->o:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 284
    const/4 v0, 0x1

    .line 286
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
    .line 427
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 428
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->removeDialog(I)V

    .line 430
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Z)V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 435
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 306
    const/16 v0, 0xfa

    if-ne v0, p1, :cond_2

    .line 307
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/k;->a([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v1

    .line 309
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    const v0, 0x7f070486

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {v0, p0, v1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/app/Activity;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)V

    goto :goto_0

    .line 319
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 266
    const-string/jumbo v0, "bitmap"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 267
    const-string/jumbo v0, "photo_dirty"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip;->g:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/os/Bundle;)V

    .line 269
    return-void
.end method
