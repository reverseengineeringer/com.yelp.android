.class public Lcom/yelp/android/ui/activities/ActivityLogin;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityLogin.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/Button;

.field private e:Lcom/yelp/android/ui/dialogs/e;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/CheckBox;

.field private h:Lcom/yelp/android/appdata/webrequests/co;

.field private i:Lcom/yelp/android/appdata/c;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private final m:Landroid/content/DialogInterface$OnClickListener;

.field private final n:Landroid/content/DialogInterface$OnClickListener;

.field private final o:Lcom/yelp/android/appdata/webrequests/co$a;

.field private final p:Landroid/content/DialogInterface$OnClickListener;

.field private q:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final r:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
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
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 564
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityLogin$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityLogin$6;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->m:Landroid/content/DialogInterface$OnClickListener;

    .line 578
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityLogin$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityLogin$7;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 588
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityLogin$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityLogin$8;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->o:Lcom/yelp/android/appdata/webrequests/co$a;

    .line 669
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityLogin$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityLogin$9;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 685
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityLogin$10;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityLogin$10;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->q:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 698
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityLogin$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityLogin$2;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->r:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/app/Activity;II)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    const-string/jumbo v1, "com.yelp.android.ui.ActivityLogin.showOptionCreateAccount"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const-string/jumbo v1, "action_message"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    :goto_0
    return-object p3

    .line 229
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const/4 v0, 0x0

    invoke-static {p0, p1, p3, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/yelp/android/ui/activities/ActivityLogin;->b(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-object p2

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityLogin;->b(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 163
    const-string/jumbo v1, "action_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "embedded_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 355
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->b()V

    .line 357
    const v0, 0x7f0f0197

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->a:Landroid/widget/LinearLayout;

    .line 359
    const v0, 0x7f0f019b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->b:Landroid/widget/EditText;

    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusLeftId(I)V

    .line 361
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusRightId(I)V

    .line 363
    const v0, 0x7f0f019c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/EditText;

    .line 364
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusLeftId(I)V

    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusRightId(I)V

    .line 368
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityLogin$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityLogin$1;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 383
    const v0, 0x7f0f019d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->g:Landroid/widget/CheckBox;

    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->g:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->q:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 385
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->c()V

    .line 387
    const v0, 0x7f0f019e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->d:Landroid/widget/Button;

    .line 388
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->d:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityLogin$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityLogin$3;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->h:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->i:Lcom/yelp/android/appdata/c;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.yelp.android.ui.ActivityLogin.showOptionCreateAccount"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    const v0, 0x7f0f01a0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 404
    new-instance v1, Lcom/yelp/android/ui/activities/ActivityLogin$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityLogin$4;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    const v0, 0x7f0f0199

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 427
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 439
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "action_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    const v0, 0x7f0f019a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->f:Landroid/widget/TextView;

    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityLogin$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityLogin$5;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 457
    return-void

    .line 434
    :cond_2
    const v0, 0x7f0f019f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 436
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->d()V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 481
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 488
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 489
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 490
    return-void

    .line 481
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityLogin;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->j:Z

    return p1
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-static {p0, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "com.yelp.android.ui.ActivityLogin.showOptionCreateAccount"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 189
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 190
    const-string/jumbo v1, "signup_from_review"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    return-object v0
.end method

.method private static b(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 259
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 260
    const-string/jumbo v1, "embedded_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 261
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 244
    const v0, 0x7f070384

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 245
    const-string/jumbo v1, "confirm_hash"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityLogin;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 460
    const v0, 0x7f070683

    const v1, 0x7f0705c5

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->b(Landroid/content/Context;II)Landroid/text/Spannable;

    move-result-object v1

    .line 463
    const v0, 0x7f0704b3

    const v2, 0x7f0704b7

    invoke-static {p0, v0, v2}, Lcom/yelp/android/util/StringUtils;->b(Landroid/content/Context;II)Landroid/text/Spannable;

    move-result-object v2

    .line 467
    const v0, 0x7f0f013d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 468
    const v3, 0x7f0703a3

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 472
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->j:Z

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Z)V

    .line 476
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->g()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityLogin;)Lcom/yelp/android/ui/dialogs/e;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->e:Lcom/yelp/android/ui/dialogs/e;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v3, 0x7f07038a

    const/4 v4, 0x1

    .line 493
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInClick:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 495
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 498
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInValidationError:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 499
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070709

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 531
    :goto_0
    return-void

    .line 504
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_3

    .line 505
    :cond_2
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInValidationError:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 506
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07070a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 512
    :cond_3
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->j:Z

    if-eqz v2, :cond_4

    .line 514
    invoke-direct {p0, v5}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Z)V

    .line 524
    :cond_4
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f070389

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, v2, v3, v4}, Lcom/yelp/android/ui/dialogs/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->e:Lcom/yelp/android/ui/dialogs/e;

    .line 527
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->e:Lcom/yelp/android/ui/dialogs/e;

    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/dialogs/e;->setCancelable(Z)V

    .line 530
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->h:Lcom/yelp/android/appdata/webrequests/co;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->o:Lcom/yelp/android/appdata/webrequests/co$a;

    invoke-virtual {v2, v0, v1, v3}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/co$a;)V

    goto :goto_0
.end method

.method private e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 538
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0706ef

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 541
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/appdata/ApiPreferences;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;->REPORT_BACKGROUND_LOCATION:Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/ApiPreferences;->a(Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/ActivityLogin;)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->e()Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 552
    const v0, 0x7f070152

    const v1, 0x7f07043e

    const v2, 0x7f070450

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(III)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    .line 557
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->setCancelable(Z)V

    .line 558
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 559
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 560
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->BackgroundLocationAttachToAccountDialog:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 561
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "background_location_attach_to_account_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->f()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "embedded_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 722
    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->startActivity(Landroid/content/Intent;)V

    .line 725
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "embedded_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 726
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->setResult(ILandroid/content/Intent;)V

    .line 728
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->finish()V

    .line 729
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->h()V

    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 733
    const-string/jumbo v0, "confirm_hash"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    if-nez v0, :cond_0

    .line 735
    const/4 v2, 0x0

    const-string/jumbo v0, "embedded_intent"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string/jumbo v3, "embedded_data"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-static {p0, v2, v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->startActivity(Landroid/content/Intent;)V

    .line 741
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->finish()V

    .line 748
    :goto_0
    return-void

    .line 743
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->startActivity(Landroid/content/Intent;)V

    .line 746
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->finish()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/ActivityLogin;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->j:Z

    return v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->c()V

    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/ActivityLogin;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->r:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/ActivityLogin;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 666
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->LogIn:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 636
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 637
    packed-switch p1, :pswitch_data_0

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 641
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->g()V

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 351
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 352
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/16 v1, 0x2000

    .line 266
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 267
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 269
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->setContentView(I)V

    .line 272
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->h:Lcom/yelp/android/appdata/webrequests/co;

    .line 274
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->i:Lcom/yelp/android/appdata/c;

    .line 276
    if-eqz p1, :cond_0

    .line 277
    const-string/jumbo v0, "password_unmasked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->j:Z

    .line 278
    const-string/jumbo v0, "mDialogInfoTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->k:Ljava/lang/String;

    .line 279
    const-string/jumbo v0, "mDialogInfoMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->l:Ljava/lang/String;

    .line 280
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "background_location_attach_to_account_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    .line 285
    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 289
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a()V

    .line 296
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 650
    const v0, 0x7f07038a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 653
    const v1, 0x7f0700ac

    if-ne p1, v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->l:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/ar;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0702ea

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07060c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 661
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 341
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 343
    :pswitch_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 327
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->h:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->h:Lcom/yelp/android/appdata/webrequests/co;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->o:Lcom/yelp/android/appdata/webrequests/co$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->b(Lcom/yelp/android/appdata/webrequests/co$a;)V

    .line 333
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 308
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->h:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->h:Lcom/yelp/android/appdata/webrequests/co;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->o:Lcom/yelp/android/appdata/webrequests/co$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/appdata/webrequests/co$a;)V

    .line 315
    const v0, 0x7f07038a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f070389

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/ui/dialogs/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->e:Lcom/yelp/android/ui/dialogs/e;

    .line 318
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->e:Lcom/yelp/android/ui/dialogs/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/e;->setCancelable(Z)V

    .line 323
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 301
    const-string/jumbo v1, "mDialogInfoTitle"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v1, "mDialogInfoMessage"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string/jumbo v0, "password_unmasked"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->k:Ljava/lang/String;

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->l:Ljava/lang/String;

    goto :goto_1
.end method
