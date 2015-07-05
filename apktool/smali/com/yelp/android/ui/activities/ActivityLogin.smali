.class public Lcom/yelp/android/ui/activities/ActivityLogin;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityLogin.java"


# instance fields
.field a:Lcom/yelp/android/appdata/webrequests/dc;

.field b:Lcom/yelp/android/appdata/i;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Lcom/yelp/android/ui/dialogs/bn;

.field private h:Landroid/widget/TextView;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private final l:Lcom/yelp/android/appdata/webrequests/di;

.field private final m:Landroid/content/DialogInterface$OnClickListener;

.field private final n:Landroid/content/DialogInterface$OnClickListener;

.field private final o:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
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
    .line 44
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 409
    new-instance v0, Lcom/yelp/android/ui/activities/cl;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/cl;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->l:Lcom/yelp/android/appdata/webrequests/di;

    .line 497
    new-instance v0, Lcom/yelp/android/ui/activities/co;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/co;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->m:Landroid/content/DialogInterface$OnClickListener;

    .line 510
    new-instance v0, Lcom/yelp/android/ui/activities/cp;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/cp;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 523
    new-instance v0, Lcom/yelp/android/ui/activities/ch;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ch;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->o:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "com.yelp.android.ui.ActivityLogin.showOptionCreateAccount"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "com.yelp.android.ui.ActivityLogin.showSuccessDlgOnCompletion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    if-eqz p1, :cond_0

    .line 110
    const-string/jumbo v1, "action_message"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    :goto_0
    return-object p3

    .line 185
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :goto_1
    invoke-static {p0, p1, p3}, Lcom/yelp/android/ui/activities/ActivityLogin;->b(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    goto :goto_0

    :cond_1
    move p1, p2

    .line 185
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-object p2

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityLogin;->b(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 80
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    const-string/jumbo v1, "extra.embedded_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 126
    const-string/jumbo v1, "action_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 286
    const v0, 0x7f0c015c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/LinearLayout;

    .line 288
    const v0, 0x7f0c0160

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->d:Landroid/widget/EditText;

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusLeftId(I)V

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusRightId(I)V

    .line 292
    const v0, 0x7f0c0161

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->e:Landroid/widget/EditText;

    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->e:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusLeftId(I)V

    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusRightId(I)V

    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/cg;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/cg;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 311
    const v0, 0x7f0c0162

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->f:Landroid/widget/Button;

    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->f:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/ci;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ci;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->b:Lcom/yelp/android/appdata/i;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.yelp.android.ui.ActivityLogin.showOptionCreateAccount"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    const v0, 0x7f0c0164

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 328
    new-instance v1, Lcom/yelp/android/ui/activities/cj;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/cj;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    const v0, 0x7f0c015e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 345
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 356
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "action_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    const v0, 0x7f0c015f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->h:Landroid/widget/TextView;

    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/yelp/android/ui/activities/ck;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ck;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 374
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->i:Z

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 377
    :cond_2
    return-void

    .line 352
    :cond_3
    const v0, 0x7f0c0163

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 353
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->b()V

    return-void
.end method

.method public static b(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 140
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "signup_from_review"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    return-object v0
.end method

.method private static b(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 199
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 200
    const-string/jumbo v1, "extra.embedded_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityLogin;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const v3, 0x7f07034e

    const/4 v4, 0x1

    .line 380
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInClick:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 381
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070367

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 407
    :goto_0
    return-void

    .line 388
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

    .line 389
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070368

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 401
    :cond_3
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f07034d

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, v2, v3, v4}, Lcom/yelp/android/ui/dialogs/bn;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/yelp/android/ui/dialogs/bn;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->g:Lcom/yelp/android/ui/dialogs/bn;

    .line 403
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->g:Lcom/yelp/android/ui/dialogs/bn;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/dialogs/bn;->setCancelable(Z)V

    .line 406
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->a:Lcom/yelp/android/appdata/webrequests/dc;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->l:Lcom/yelp/android/appdata/webrequests/di;

    invoke-virtual {v2, v0, v1, v3}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/di;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityLogin;)Lcom/yelp/android/ui/dialogs/bn;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->g:Lcom/yelp/android/ui/dialogs/bn;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.embedded_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 551
    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->startActivity(Landroid/content/Intent;)V

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.embedded_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 555
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->setResult(ILandroid/content/Intent;)V

    .line 565
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->finish()V

    .line 566
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->c()V

    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/ActivityLogin;)Lcom/yelp/android/appdata/webrequests/m;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->o:Lcom/yelp/android/appdata/webrequests/m;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/ActivityLogin;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->d:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 570
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->LogIn:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 444
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 445
    packed-switch p1, :pswitch_data_0

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 449
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->c()V

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 281
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 282
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->setContentView(I)V

    .line 210
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->a:Lcom/yelp/android/appdata/webrequests/dc;

    .line 212
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->b:Lcom/yelp/android/appdata/i;

    .line 214
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    const-string/jumbo v1, "from_splash"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->i:Z

    .line 219
    :cond_0
    if-eqz p1, :cond_1

    .line 220
    const-string/jumbo v0, "mDlgInfoTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->j:Ljava/lang/String;

    .line 221
    const-string/jumbo v0, "mDlgInfoMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->k:Ljava/lang/String;

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a()V

    .line 226
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f020078

    .line 458
    const v0, 0x7f07034e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 459
    sparse-switch p1, :sswitch_data_0

    .line 494
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 461
    :sswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/yelp/android/ui/activities/cm;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/cm;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 473
    new-instance v1, Lcom/yelp/android/ui/activities/cn;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/cn;-><init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 481
    :sswitch_1
    const v1, 0x7f0704fb

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 482
    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/cp;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0704fc

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070110

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 488
    :sswitch_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->k:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/cp;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070293

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070620

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 459
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x7f070012 -> :sswitch_1
        0x7f070024 -> :sswitch_2
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 273
    :pswitch_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->a:Lcom/yelp/android/appdata/webrequests/dc;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->l:Lcom/yelp/android/appdata/webrequests/di;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->b(Lcom/yelp/android/appdata/webrequests/di;)V

    .line 263
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->a:Lcom/yelp/android/appdata/webrequests/dc;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->l:Lcom/yelp/android/appdata/webrequests/di;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/di;)V

    .line 244
    const v0, 0x7f07034e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f07034d

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/ui/dialogs/bn;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/yelp/android/ui/dialogs/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->g:Lcom/yelp/android/ui/dialogs/bn;

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->g:Lcom/yelp/android/ui/dialogs/bn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/bn;->setCancelable(Z)V

    .line 252
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 231
    const-string/jumbo v1, "mDlgInfoTitle"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v1, "mDlgInfoMessage"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->j:Ljava/lang/String;

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin;->k:Ljava/lang/String;

    goto :goto_1
.end method
