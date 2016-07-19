.class public Lcom/yelp/android/ui/activities/ActivityConfirmAccount;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityConfirmAccount.java"


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/yelp/android/appdata/webrequests/co;

.field private c:Landroid/widget/ScrollView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/Intent;

.field private m:Z

.field private n:Lcom/yelp/android/appdata/webrequests/do;

.field private o:Lcom/yelp/android/appdata/webrequests/c;

.field private p:Lcom/yelp/android/appdata/webrequests/b;

.field private final q:Landroid/view/View$OnClickListener;

.field private final r:Landroid/view/View$OnClickListener;

.field private final s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->j:Landroid/os/Handler;

    .line 292
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$1;-><init>(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->q:Landroid/view/View$OnClickListener;

    .line 300
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$2;-><init>(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->r:Landroid/view/View$OnClickListener;

    .line 312
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$3;-><init>(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 329
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$4;-><init>(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->t:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 364
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;-><init>(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->u:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 432
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$6;-><init>(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->v:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-static {p0, p1, v0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    const-string/jumbo v1, "embedded_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    const-string/jumbo v1, "embedded_intent_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    const-string/jumbo v1, "confirm_hash"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v1, "just_logged_in"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    if-nez p1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 269
    :cond_0
    const-string/jumbo v0, "confirm_hash"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    const-string/jumbo v0, "confirm_hash"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->k:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_1
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 273
    if-eqz v0, :cond_2

    .line 274
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "embedded_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->l:Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->b()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->e:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->c:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->c:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->i:Landroid/widget/Button;

    sget v1, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->h:Landroid/widget/Button;

    sget v1, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->b(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->f:Landroid/widget/TextView;

    sget v1, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 361
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->v:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    return-void
.end method

.method public static b(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-static {p0, p1, v0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "auto_resend_email"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->l:Landroid/content/Intent;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 444
    const v0, 0x7f0701aa

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/util/ar;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->n:Lcom/yelp/android/appdata/webrequests/do;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->n:Lcom/yelp/android/appdata/webrequests/do;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/do;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/do;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/do;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->n:Lcom/yelp/android/appdata/webrequests/do;

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->n:Lcom/yelp/android/appdata/webrequests/do;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/do;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->n:Lcom/yelp/android/appdata/webrequests/do;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 288
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ConfirmResendEmail:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 290
    :cond_1
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 449
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Landroid/content/Context;)V

    .line 450
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->k:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x418

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->startActivityForResult(Landroid/content/Intent;I)V

    .line 453
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->finish()V

    .line 454
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->c()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->h:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->i:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->f:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ConfirmEmail:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 250
    packed-switch p1, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 252
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->b:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x3f3
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 243
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ConfirmEmailCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 244
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->setContentView(I)V

    .line 148
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->b:Lcom/yelp/android/appdata/webrequests/co;

    .line 149
    const v0, 0x7f0f0141

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->d:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0f0143

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->f:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0f0145

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->h:Landroid/widget/Button;

    .line 152
    const v0, 0x7f0f0146

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->i:Landroid/widget/Button;

    .line 153
    const v0, 0x7f0f0142

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->e:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0f0147

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->g:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0f013f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->c:Landroid/widget/ScrollView;

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->h:Landroid/widget/Button;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->b:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/co;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    sget v0, Lcom/yelp/android/ui/util/av;->a:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a:I

    .line 164
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "auto_resend_email"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->m:Z

    .line 168
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Intent;)V

    .line 169
    return-void

    :cond_0
    move v0, v1

    .line 164
    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 231
    :pswitch_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ConfirmEmailCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->l:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->l:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 222
    const-string/jumbo v0, "resend_confirmation_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->n:Lcom/yelp/android/appdata/webrequests/do;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 223
    const-string/jumbo v0, "account_confirmation_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->o:Lcom/yelp/android/appdata/webrequests/c;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 224
    const-string/jumbo v0, "confirm_account_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->p:Lcom/yelp/android/appdata/webrequests/b;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 225
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 173
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 174
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->showLogoInToolbar()V

    .line 175
    const-string/jumbo v0, "resend_confirmation_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/do;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->n:Lcom/yelp/android/appdata/webrequests/do;

    .line 177
    const-string/jumbo v0, "account_confirmation_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->t:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/c;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->o:Lcom/yelp/android/appdata/webrequests/c;

    .line 179
    const-string/jumbo v0, "confirm_account_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->u:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/b;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->p:Lcom/yelp/android/appdata/webrequests/b;

    .line 184
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->c()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->k:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->o:Lcom/yelp/android/appdata/webrequests/c;

    if-nez v0, :cond_1

    .line 191
    new-instance v0, Lcom/yelp/android/appdata/webrequests/c;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->t:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->o:Lcom/yelp/android/appdata/webrequests/c;

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->o:Lcom/yelp/android/appdata/webrequests/c;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/c;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 196
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->showLoadingDialog()V

    .line 208
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->m:Z

    if-eqz v0, :cond_2

    .line 209
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->b()V

    .line 210
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->m:Z

    .line 212
    :cond_2
    return-void

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->p:Lcom/yelp/android/appdata/webrequests/b;

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Lcom/yelp/android/appdata/webrequests/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->u:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/b;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->p:Lcom/yelp/android/appdata/webrequests/b;

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->p:Lcom/yelp/android/appdata/webrequests/b;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/b;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 204
    const v0, 0x7f070214

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->showLoadingDialog(I)V

    goto :goto_0
.end method
