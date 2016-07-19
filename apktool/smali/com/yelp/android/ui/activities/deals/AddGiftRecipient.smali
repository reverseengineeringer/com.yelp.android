.class public Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "AddGiftRecipient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$b;,
        Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$a;
    }
.end annotation


# static fields
.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/AutoCompleteTextView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/Button;

.field private h:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "friend.xtra"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->i:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "valid.xtra"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 340
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 259
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    sget-object v1, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v1, "data"

    const-string/jumbo v2, ""

    invoke-virtual {p1}, Lcom/yelp/android/serializable/GiftRecipient;->a()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 262
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Lcom/yelp/android/serializable/GiftRecipient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    sget-object v0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->j:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->i:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/GiftRecipient;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 240
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 241
    const v0, 0x7f070278

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->setTitle(I)V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->g:Landroid/widget/Button;

    const v1, 0x7f070514

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/GiftRecipient;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/GiftRecipient;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {p1}, Lcom/yelp/android/serializable/GiftRecipient;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/GiftRecipient;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/GiftRecipient;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 251
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;Lcom/yelp/android/util/ContactsFetcher$Contact;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Lcom/yelp/android/util/ContactsFetcher$Contact;)V

    return-void
.end method

.method private a(Lcom/yelp/android/util/ContactsFetcher$Contact;)V
    .locals 2

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, p0}, Lcom/yelp/android/util/ContactsFetcher$Contact;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p1, p0}, Lcom/yelp/android/util/ContactsFetcher$Contact;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->DealAddGiftRecipient:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 273
    packed-switch p1, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 281
    return-void

    .line 275
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 276
    invoke-static {}, Lcom/yelp/android/util/ContactsFetcher;->b()Lcom/yelp/android/util/ContactsFetcher;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/yelp/android/util/ContactsFetcher;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/yelp/android/util/ContactsFetcher$Contact;

    move-result-object v0

    .line 277
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Lcom/yelp/android/util/ContactsFetcher$Contact;)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->setContentView(I)V

    .line 73
    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 74
    const v0, 0x7f0f00e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c:Landroid/widget/EditText;

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 76
    new-instance v2, Lcom/yelp/android/ui/activities/deals/c;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/deals/c;-><init>()V

    .line 77
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_3

    .line 78
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    aput-object v2, v0, v5

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 86
    const v0, 0x7f0f00df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->d:Landroid/widget/EditText;

    .line 87
    const v0, 0x7f0f00db

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->b:Landroid/widget/EditText;

    .line 88
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->o()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v0, 0x7f0f00dd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a:Landroid/widget/AutoCompleteTextView;

    .line 92
    new-instance v0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$a;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$a;-><init>(Landroid/app/Activity;)V

    .line 93
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$1;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$1;-><init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$a;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    const v0, 0x7f0f00dc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->e:Landroid/view/View;

    .line 127
    invoke-static {}, Lcom/yelp/android/util/ContactsFetcher;->b()Lcom/yelp/android/util/ContactsFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/util/ContactsFetcher;->a()Landroid/content/Intent;

    move-result-object v0

    .line 128
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->e:Landroid/view/View;

    new-instance v3, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$2;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$2;-><init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->e:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_1
    const v0, 0x7f0f00b5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    .line 140
    const v0, 0x7f0f00e1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->g:Landroid/widget/Button;

    .line 141
    new-instance v0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$3;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$3;-><init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;Landroid/view/View;)V

    .line 162
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 164
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->g:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;-><init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v0, 0x7f0f00e2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->h:Landroid/view/View;

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->h:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$5;-><init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 232
    sget-object v1, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GiftRecipient;

    .line 233
    if-eqz v0, :cond_2

    .line 234
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Lcom/yelp/android/serializable/GiftRecipient;)V

    .line 236
    :cond_2
    return-void

    .line 80
    :cond_3
    array-length v3, v0

    .line 81
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    .line 82
    invoke-static {v0, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    aput-object v2, v4, v3

    goto/16 :goto_0
.end method
