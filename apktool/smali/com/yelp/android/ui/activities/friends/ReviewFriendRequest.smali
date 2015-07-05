.class public Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ReviewFriendRequest.java"

# interfaces
.implements Lcom/yelp/android/ui/p;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/yelp/android/serializable/FriendRequest;

.field private c:Ljava/lang/String;

.field private final d:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FriendRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/yelp/android/av/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 306
    new-instance v0, Lcom/yelp/android/ui/activities/friends/w;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/w;-><init>(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->d:Lcom/yelp/android/appdata/webrequests/m;

    .line 333
    new-instance v0, Lcom/yelp/android/ui/activities/friends/x;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/x;-><init>(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->e:Lcom/yelp/android/av/i;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;Lcom/yelp/android/serializable/FriendRequest;)Lcom/yelp/android/serializable/FriendRequest;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;Lcom/yelp/android/serializable/User;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->hideLoadingDialog()V

    .line 214
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/profile/j;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/profile/j;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    iput-object v1, v0, Lcom/yelp/android/ui/activities/profile/j;->c:Lcom/yelp/android/serializable/FriendRequest;

    .line 220
    sget-object v1, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->APPROVE:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    if-ne p1, v1, :cond_2

    .line 221
    const v1, 0x7f0702a5

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v1, v4}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 224
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->setResult(ILandroid/content/Intent;)V

    .line 227
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v1

    .line 228
    invoke-virtual {v1, v5}, Lcom/yelp/android/serializable/User;->addFriendCount(I)V

    .line 229
    iput v5, v0, Lcom/yelp/android/ui/activities/profile/j;->d:I

    .line 235
    :cond_1
    :goto_1
    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/profile/j;->a(Landroid/content/Context;)V

    .line 236
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->finish()V

    goto :goto_0

    .line 230
    :cond_2
    sget-object v1, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->IGNORE:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    if-ne p1, v1, :cond_1

    .line 231
    const v1, 0x7f0702f0

    invoke-static {v1, v4}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 232
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->setResult(ILandroid/content/Intent;)V

    .line 233
    iput v4, v0, Lcom/yelp/android/ui/activities/profile/j;->d:I

    goto :goto_1
.end method

.method private a(Lcom/yelp/android/serializable/FriendRequest;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v9

    .line 185
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FriendRequest;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 186
    :goto_0
    if-nez v0, :cond_0

    .line 187
    const v0, 0x7f0c0132

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v3

    .line 191
    const v0, 0x7f0c0150

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 192
    const v4, 0x7f0702a7

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/dc;->q()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {p0, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const v0, 0x7f0c00a9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 197
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FriendRequest;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const/16 v3, 0xf

    invoke-static {v0, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 199
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 201
    const v0, 0x7f0c0151

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 202
    const v3, 0x7f0702a9

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p0, v3, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    new-instance v0, Lcom/yelp/android/ui/util/cn;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/cn;-><init>(Landroid/view/View;Z)V

    .line 206
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v3

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v4

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->getPhotoCount()I

    move-result v5

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->getVideoCount()I

    move-result v6

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->getMediaCount()I

    move-result v7

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/yelp/android/serializable/User;->isEliteUser()Z

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/yelp/android/ui/util/cn;->a(Landroid/content/Context;Ljava/lang/CharSequence;IIIIILjava/lang/String;Z)V

    .line 210
    return-void

    :cond_1
    move v0, v2

    .line 185
    goto/16 :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/FriendRequest;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;)V
    .locals 3

    .prologue
    .line 252
    new-instance v0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->e:Lcom/yelp/android/av/i;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;-><init>(Lcom/yelp/android/av/i;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;Lcom/yelp/android/serializable/User;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 255
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;Lcom/yelp/android/serializable/User;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;Lcom/yelp/android/serializable/FriendRequest;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/serializable/FriendRequest;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)Lcom/yelp/android/serializable/FriendRequest;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;Lcom/yelp/android/serializable/FriendRequest;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/serializable/FriendRequest;)V

    return-void
.end method


# virtual methods
.method public a_()V
    .locals 7

    .prologue
    .line 175
    new-instance v0, Lcom/yelp/android/appdata/webrequests/p;

    const-string/jumbo v1, "user/requests/friends"

    const-string/jumbo v2, "user_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->d:Lcom/yelp/android/appdata/webrequests/m;

    new-instance v4, Lcom/yelp/android/appdata/webrequests/q;

    const-string/jumbo v5, "friend_requests"

    sget-object v6, Lcom/yelp/android/serializable/FriendRequest;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-direct {v4, v5, v6}, Lcom/yelp/android/appdata/webrequests/q;-><init>(Ljava/lang/String;Lcom/yelp/parcelgen/JsonParser;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/p;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/parcelgen/JsonParser;)V

    .line 179
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/p;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 180
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 181
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FriendRequest:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 1
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
    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.friendRequest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FriendRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.acknowledgement"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    .line 118
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 123
    const v1, 0x1030010

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->setTheme(I)V

    .line 124
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/serializable/FriendRequest;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;)V

    .line 171
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->c:Ljava/lang/String;

    .line 136
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->setContentView(I)V

    .line 139
    const v0, 0x7f0c014f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/friends/t;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/friends/t;-><init>(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f0c0153

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/friends/u;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/friends/u;-><init>(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v0, 0x7f0c0154

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/friends/v;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/friends/v;-><init>(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b:Lcom/yelp/android/serializable/FriendRequest;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/serializable/FriendRequest;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->c:Ljava/lang/String;

    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a_()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x1020001

    if-ne v0, v1, :cond_0

    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    .line 286
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 288
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 273
    const v0, 0x1020001

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_0

    .line 275
    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1080010

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 279
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 275
    :cond_1
    const v0, 0x108000f

    goto :goto_0
.end method
