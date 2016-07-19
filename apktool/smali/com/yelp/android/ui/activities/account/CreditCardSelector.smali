.class public Lcom/yelp/android/ui/activities/account/CreditCardSelector;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "CreditCardSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/account/CreditCardSelector$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/ui/activities/account/CreditCardSelector$a;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 214
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/account/CreditCardSelector;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/PaymentMethod;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/account/CreditCardSelector;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string/jumbo v1, "extra.cards"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/serializable/PaymentMethod;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/PaymentMethod;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 91
    if-nez p0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 95
    :cond_0
    const-string/jumbo v0, "extra.cards"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    .line 203
    new-instance v1, Lcom/yelp/android/appdata/webrequests/bc;

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/webrequests/bc;-><init>(Lcom/yelp/android/serializable/PaymentMethod;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/bc;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->setResult(I)V

    .line 207
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->f()V

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->b:Lcom/yelp/android/ui/activities/account/CreditCardSelector$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector$a;->a(Ljava/util/List;)V

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->b:Lcom/yelp/android/ui/activities/account/CreditCardSelector$a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector$a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/PaymentMethod;)V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 286
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->f()V

    .line 287
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/account/CreditCardSelector;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->b()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/account/CreditCardSelector;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(I)V

    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 262
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/yelp/android/services/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "user_credit_card/add"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "webview_flow"

    const-string/jumbo v2, "add_cc"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 270
    const v0, 0x7f07010b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->AccountAddCreditCard:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->LOGIN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v0, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;)Landroid/content/Intent;

    move-result-object v0

    .line 279
    const/16 v1, 0x40c

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->startActivityForResult(Landroid/content/Intent;I)V

    .line 280
    return-void
.end method

.method public static b(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 112
    if-eqz p0, :cond_0

    .line 113
    const-string/jumbo v1, "extra.card_added"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 115
    :cond_0
    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 290
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 291
    iget-object v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    const-string/jumbo v1, "extra.cards"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 294
    :cond_0
    const-string/jumbo v1, "extra.card_added"

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->setResult(ILandroid/content/Intent;)V

    .line 296
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->finish()V

    .line 297
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    .line 351
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 352
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    .line 354
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PaymentMethod;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 357
    :cond_0
    const v0, 0x7f070241

    invoke-static {v0, v2}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->b(ILjava/util/List;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;

    move-result-object v0

    .line 359
    const v1, 0x7f07049d

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->a(Ljava/lang/String;)V

    .line 360
    new-instance v1, Lcom/yelp/android/ui/activities/account/CreditCardSelector$3;

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/activities/account/CreditCardSelector$3;-><init>(Lcom/yelp/android/ui/activities/account/CreditCardSelector;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;)V

    .line 368
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 369
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(Lcom/yelp/android/serializable/PaymentMethod;)V

    .line 259
    :cond_0
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->AccountPaymentMethods:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 187
    return-void

    .line 171
    :pswitch_0
    if-nez p2, :cond_1

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->f()V

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->c:Z

    .line 182
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->f()V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x40c
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v1, 0x2000

    .line 120
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector$a;->a(Landroid/view/ViewGroup;)Lcom/yelp/android/ui/panels/ButtonWithIcon;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f070116

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getImageView()Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v1

    const v2, 0x7f020333

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 129
    new-instance v1, Lcom/yelp/android/ui/activities/account/CreditCardSelector$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector$1;-><init>(Lcom/yelp/android/ui/activities/account/CreditCardSelector;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->c:Z

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 140
    if-nez p1, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.cards"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    .line 150
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/account/CreditCardSelector$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector$a;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->b:Lcom/yelp/android/ui/activities/account/CreditCardSelector$a;

    .line 151
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->b:Lcom/yelp/android/ui/activities/account/CreditCardSelector$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->registerForContextMenu(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->b()V

    .line 159
    :cond_1
    return-void

    .line 143
    :cond_2
    const-string/jumbo v0, "extra.cards"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 328
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 329
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move-object v0, p2

    .line 331
    check-cast v0, Landroid/widget/AdapterView;

    .line 332
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    .line 333
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PaymentMethod;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 335
    const v0, 0x1080027

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 336
    const v0, 0x7f0f0606

    const v2, 0x7f070240

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 337
    new-instance v2, Lcom/yelp/android/ui/activities/account/CreditCardSelector$2;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector$2;-><init>(Lcom/yelp/android/ui/activities/account/CreditCardSelector;I)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 347
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 348
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->f()V

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/YelpListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 312
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 323
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 314
    :sswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->f()V

    goto :goto_0

    .line 317
    :sswitch_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->b()V

    goto :goto_0

    .line 320
    :sswitch_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->g()V

    goto :goto_0

    .line 312
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f0605 -> :sswitch_1
        0x7f0f0606 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    const-string/jumbo v0, "extra.cards"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 165
    return-void
.end method
