.class public Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "AddGiftRecipient.java"


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

    .line 335
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    sget-object v1, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 255
    const-string/jumbo v1, "data"

    const-string/jumbo v2, ""

    invoke-virtual {p1}, Lcom/yelp/android/serializable/GiftRecipient;->getUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 256
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
    .line 260
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

    .line 233
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 234
    const v0, 0x7f070228

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->setTitle(I)V

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->g:Landroid/widget/Button;

    const v1, 0x7f070518

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/GiftRecipient;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/GiftRecipient;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p1}, Lcom/yelp/android/serializable/GiftRecipient;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/GiftRecipient;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/GiftRecipient;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 245
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
    .line 279
    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, p0}, Lcom/yelp/android/util/ContactsFetcher$Contact;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {p1, p0}, Lcom/yelp/android/util/ContactsFetcher$Contact;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 287
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
    .line 291
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->DealAddGiftRecipient:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
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
    .line 268
    packed-switch p1, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 276
    return-void

    .line 270
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 271
    invoke-static {}, Lcom/yelp/android/util/ContactsFetcher;->b()Lcom/yelp/android/util/ContactsFetcher;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/yelp/android/util/ContactsFetcher;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/yelp/android/util/ContactsFetcher$Contact;

    move-result-object v0

    .line 272
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Lcom/yelp/android/util/ContactsFetcher$Contact;)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->setContentView(I)V

    .line 73
    const v0, 0x7f0c00a7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 74
    const v0, 0x7f0c00a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c:Landroid/widget/EditText;

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 76
    new-instance v2, Lcom/yelp/android/ui/activities/deals/ai;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/deals/ai;-><init>()V

    .line 77
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_3

    .line 78
    :cond_0
    new-array v0, v6, [Landroid/text/InputFilter;

    aput-object v2, v0, v5

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 88
    const v0, 0x7f0c00a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->d:Landroid/widget/EditText;

    .line 89
    const v0, 0x7f0c00a4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->b:Landroid/widget/EditText;

    .line 90
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 91
    const v2, 0x7f0703cc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->q()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->r()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v0, 0x7f0c00a6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a:Landroid/widget/AutoCompleteTextView;

    .line 95
    new-instance v0, Lcom/yelp/android/ui/activities/deals/aa;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/aa;-><init>(Landroid/app/Activity;)V

    .line 96
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/yelp/android/ui/activities/deals/v;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/activities/deals/v;-><init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;Lcom/yelp/android/ui/activities/deals/aa;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    const v0, 0x7f0c00a5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->e:Landroid/view/View;

    .line 125
    invoke-static {}, Lcom/yelp/android/util/ContactsFetcher;->b()Lcom/yelp/android/util/ContactsFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/util/ContactsFetcher;->a()Landroid/content/Intent;

    move-result-object v0

    .line 126
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->e:Landroid/view/View;

    new-instance v3, Lcom/yelp/android/ui/activities/deals/w;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/activities/deals/w;-><init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->e:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_1
    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    .line 138
    const v0, 0x7f0c00aa

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->g:Landroid/widget/Button;

    .line 139
    new-instance v0, Lcom/yelp/android/ui/activities/deals/x;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/deals/x;-><init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;Landroid/view/View;)V

    .line 159
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 161
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->g:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/y;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/y;-><init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v0, 0x7f0c00ab

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->h:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->h:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/z;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/z;-><init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 225
    sget-object v1, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GiftRecipient;

    .line 226
    if-eqz v0, :cond_2

    .line 227
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Lcom/yelp/android/serializable/GiftRecipient;)V

    .line 229
    :cond_2
    return-void

    .line 82
    :cond_3
    array-length v3, v0

    .line 83
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    .line 84
    invoke-static {v0, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    aput-object v2, v4, v3

    goto/16 :goto_0
.end method
