.class public Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ReviewFriendRequest.java"

# interfaces
.implements Lcom/yelp/android/ui/k;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/yelp/android/serializable/FriendRequest;

.field private c:Ljava/lang/String;

.field private final d:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FriendRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/yelp/android/appdata/webrequests/core/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 335
    new-instance v0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$4;-><init>(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->d:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 363
    new-instance v0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$5;-><init>(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->e:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;Lcom/yelp/android/serializable/FriendRequest;)Lcom/yelp/android/serializable/FriendRequest;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;Lcom/yelp/android/serializable/User;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->hideLoadingDialog()V

    .line 230
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;-><init>()V

    .line 235
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    iput-object v1, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->c:Lcom/yelp/android/serializable/FriendRequest;

    .line 236
    sget-object v1, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->APPROVE:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    if-ne p1, v1, :cond_2

    .line 237
    const v1, 0x7f0702f2

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->Z()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {v1, v4}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 240
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->setResult(ILandroid/content/Intent;)V

    .line 243
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v5}, Lcom/yelp/android/serializable/User;->e(I)V

    .line 245
    iput v5, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->d:I

    .line 251
    :cond_1
    :goto_1
    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a(Landroid/content/Context;)V

    .line 252
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->finish()V

    goto :goto_0

    .line 246
    :cond_2
    sget-object v1, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->IGNORE:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    if-ne p1, v1, :cond_1

    .line 247
    const v1, 0x7f070333

    invoke-static {v1, v4}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 248
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->setResult(ILandroid/content/Intent;)V

    .line 249
    iput v4, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->d:I

    goto :goto_1
.end method

.method private a(Lcom/yelp/android/serializable/FriendRequest;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FriendRequest;->j()Lcom/yelp/android/serializable/User;

    move-result-object v9

    .line 192
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FriendRequest;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 193
    :goto_0
    if-nez v0, :cond_0

    .line 194
    const v0, 0x7f0f0174

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v3

    .line 198
    const v0, 0x7f0f018c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 199
    const v4, 0x7f0702f4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/co;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {p0, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    const v0, 0x7f0f00e0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 206
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FriendRequest;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const/16 v3, 0xf

    invoke-static {v0, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 208
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 210
    const v0, 0x7f0f018d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    const v3, 0x7f0702f6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->Z()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p0, v3, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    new-instance v0, Lcom/yelp/android/ui/util/ap$b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/ap$b;-><init>(Landroid/view/View;Z)V

    .line 216
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v3

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->j_()I

    move-result v4

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->l_()I

    move-result v5

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->m_()I

    move-result v6

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->n_()I

    move-result v7

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->h()Z

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/yelp/android/ui/util/ap$b;->a(Landroid/content/Context;Ljava/lang/CharSequence;IIIIILjava/lang/String;Z)V

    .line 226
    return-void

    :cond_1
    move v0, v2

    .line 192
    goto/16 :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/FriendRequest;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;)V
    .locals 3

    .prologue
    .line 271
    new-instance v0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->e:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FriendRequest;->j()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;-><init>(Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;Lcom/yelp/android/serializable/User;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    .line 277
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 278
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;Lcom/yelp/android/serializable/User;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;Lcom/yelp/android/serializable/FriendRequest;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/serializable/FriendRequest;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)Lcom/yelp/android/serializable/FriendRequest;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;Lcom/yelp/android/serializable/FriendRequest;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/serializable/FriendRequest;)V

    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FriendRequest:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 1
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
    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.friendRequest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FriendRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    .line 116
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.acknowledgement"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    .line 119
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 124
    const v1, 0x1030010

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->setTheme(I)V

    .line 125
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/serializable/FriendRequest;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;)V

    .line 176
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FriendRequest;->j()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->c:Ljava/lang/String;

    .line 137
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->setContentView(I)V

    .line 140
    const v0, 0x7f0f018b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$1;-><init>(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f0f018e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$2;-><init>(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f0f00f1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest$3;-><init>(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/serializable/FriendRequest;)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->c:Ljava/lang/String;

    goto :goto_1

    .line 174
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->p_()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 313
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x1020001

    if-ne v0, v1, :cond_0

    .line 314
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    .line 315
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 317
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 315
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 300
    const v0, 0x1020001

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_0

    .line 302
    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1080010

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 308
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 302
    :cond_1
    const v0, 0x108000f

    goto :goto_0
.end method

.method public p_()V
    .locals 7

    .prologue
    .line 180
    new-instance v0, Lcom/yelp/android/appdata/webrequests/m;

    const-string/jumbo v1, "user/requests/friends"

    const-string/jumbo v2, "user_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->d:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    new-instance v4, Lcom/yelp/android/appdata/webrequests/m$a;

    const-string/jumbo v5, "friend_requests"

    sget-object v6, Lcom/yelp/android/serializable/FriendRequest;->CREATOR:Lcom/yelp/android/serializable/a;

    invoke-direct {v4, v5, v6}, Lcom/yelp/android/appdata/webrequests/m$a;-><init>(Ljava/lang/String;Lcom/yelp/parcelgen/JsonParser;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/m;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/parcelgen/JsonParser;)V

    .line 186
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/m;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 187
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 188
    return-void
.end method
