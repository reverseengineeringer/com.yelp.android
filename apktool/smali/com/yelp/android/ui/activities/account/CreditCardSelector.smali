.class public Lcom/yelp/android/ui/activities/account/CreditCardSelector;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "CreditCardSelector.java"


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

.field private b:Lcom/yelp/android/ui/activities/account/e;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 217
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 82
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
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/account/CreditCardSelector;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string/jumbo v1, "extra.cards"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
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

    .line 94
    if-nez p0, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 98
    :cond_0
    const-string/jumbo v0, "extra.cards"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 103
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
    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    .line 206
    new-instance v1, Lcom/yelp/android/appdata/webrequests/bl;

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/webrequests/bl;-><init>(Lcom/yelp/android/serializable/PaymentMethod;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/bl;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->setResult(I)V

    .line 210
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->f()V

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->b:Lcom/yelp/android/ui/activities/account/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/account/e;->a(Ljava/util/List;)V

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->b:Lcom/yelp/android/ui/activities/account/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/account/e;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/PaymentMethod;)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 299
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->f()V

    .line 300
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/account/CreditCardSelector;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->c()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/account/CreditCardSelector;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(I)V

    return-void
.end method

.method public static b(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 115
    if-eqz p0, :cond_0

    .line 116
    const-string/jumbo v1, "extra.card_added"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 118
    :cond_0
    return v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 265
    invoke-static {}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->isEventsFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/yelp/android/services/x;->a(Landroid/content/Context;)Ljava/lang/String;

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

    move-result-object v0

    .line 273
    const v1, 0x7f07008e

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/analytics/iris/ViewIri;->AccountAddCreditCard:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v3, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->LOGIN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;)Landroid/content/Intent;

    move-result-object v0

    .line 276
    const/16 v1, 0x408

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->startActivityForResult(Landroid/content/Intent;I)V

    .line 293
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 279
    sget-object v0, Lcom/yelp/android/util/ErrorType;->ADD_CREDIT_CARD_NOT_SUPPORTED:Lcom/yelp/android/util/ErrorType;

    new-instance v1, Lcom/yelp/android/ui/activities/account/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/account/b;-><init>(Lcom/yelp/android/ui/activities/account/CreditCardSelector;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->populateError(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 303
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 304
    iget-object v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    const-string/jumbo v1, "extra.cards"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 307
    :cond_0
    const-string/jumbo v1, "extra.card_added"

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->setResult(ILandroid/content/Intent;)V

    .line 309
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->finish()V

    .line 310
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    .line 365
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 366
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    .line 368
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PaymentMethod;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 371
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;-><init>()V

    const v0, 0x7f0701f7

    invoke-static {v0, v2}, Lcom/yelp/android/ui/dialogs/SingleChoiceListDialogFragment;->b(ILjava/util/List;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;

    move-result-object v0

    .line 373
    const v1, 0x7f070488

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->a(Ljava/lang/String;)V

    .line 374
    new-instance v1, Lcom/yelp/android/ui/activities/account/d;

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/activities/account/d;-><init>(Lcom/yelp/android/ui/activities/account/CreditCardSelector;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/as;)V

    .line 381
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 382
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    .line 259
    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(Lcom/yelp/android/serializable/PaymentMethod;)V

    .line 262
    :cond_0
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->AccountPaymentMethods:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 166
    sparse-switch p1, :sswitch_data_0

    .line 189
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 190
    :cond_1
    return-void

    .line 168
    :sswitch_0
    if-nez p2, :cond_2

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->f()V

    goto :goto_0

    .line 178
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->c:Z

    .line 179
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->f()V

    goto :goto_0

    .line 183
    :sswitch_1
    if-eqz p2, :cond_1

    .line 186
    invoke-static {p3}, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->a(Landroid/content/Intent;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(I)V

    goto :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_1
        0x408 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/account/e;->a(Landroid/view/ViewGroup;)Lcom/yelp/android/ui/panels/ButtonWithIcon;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f070098

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 126
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getImageView()Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v1

    const v2, 0x7f020266

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 127
    new-instance v1, Lcom/yelp/android/ui/activities/account/a;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/account/a;-><init>(Lcom/yelp/android/ui/activities/account/CreditCardSelector;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->c:Z

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 137
    if-nez p1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.cards"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    .line 147
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/account/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/account/e;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->b:Lcom/yelp/android/ui/activities/account/e;

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->b:Lcom/yelp/android/ui/activities/account/e;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->registerForContextMenu(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->c()V

    .line 156
    :cond_1
    return-void

    .line 140
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

    .line 342
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 343
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move-object v0, p2

    .line 345
    check-cast v0, Landroid/widget/AdapterView;

    .line 346
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    .line 347
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PaymentMethod;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 349
    const v0, 0x1080027

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 350
    const v0, 0x7f0c04fc

    const v2, 0x7f0701f6

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 351
    new-instance v2, Lcom/yelp/android/ui/activities/account/c;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/account/c;-><init>(Lcom/yelp/android/ui/activities/account/CreditCardSelector;I)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 361
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 362
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->f()V

    .line 199
    const/4 v0, 0x1

    .line 201
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

    .line 325
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 336
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 327
    :sswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->f()V

    goto :goto_0

    .line 330
    :sswitch_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->c()V

    goto :goto_0

    .line 333
    :sswitch_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->g()V

    goto :goto_0

    .line 325
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c04fb -> :sswitch_1
        0x7f0c04fc -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    const-string/jumbo v0, "extra.cards"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 162
    return-void
.end method
