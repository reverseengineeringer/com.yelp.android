.class public Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;
.super Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;
.source "BadgeFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$a;,
        Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$b;
    }
.end annotation


# instance fields
.field private j:Lcom/yelp/android/serializable/Badge;

.field private k:Lcom/yelp/android/serializable/YelpCheckIn;

.field private l:Landroid/net/Uri;

.field private m:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$a;

.field private n:Lcom/yelp/android/ui/util/ap;

.field private o:Lcom/yelp/android/appdata/webrequests/o;

.field private p:Lcom/yelp/android/appdata/webrequests/p;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private final s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FeedItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final t:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;-><init>()V

    .line 197
    new-instance v0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$1;-><init>(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 227
    new-instance v0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$2;-><init>(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->t:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 266
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->q:Landroid/view/View;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/Badge;Lcom/yelp/android/serializable/YelpCheckIn;Landroid/net/Uri;)Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;-><init>()V

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string/jumbo v2, "badge"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    const-string/jumbo v2, "check_in"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/Badge;)V
    .locals 6

    .prologue
    const v5, 0x7f0f041c

    const/4 v4, 0x1

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 156
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->j:Lcom/yelp/android/serializable/Badge;

    .line 157
    const v0, 0x7f0f00f2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Badge;->l()Ljava/lang/String;

    move-result-object v1

    .line 159
    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    .line 160
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->m:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$a;

    invoke-interface {v3, p1}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$a;->a(Lcom/yelp/android/serializable/Badge;)V

    .line 163
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->k:Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v3, :cond_3

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->q:Landroid/view/View;

    const v1, 0x7f0f041a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 171
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Badge;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->r:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Badge;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$b;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->r:Landroid/view/View;

    invoke-direct {v2, v3, v0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$b;-><init>(Landroid/view/View;Lcom/yelp/android/ui/widgets/WebImageView;)V

    invoke-static {v1, v2, v4}, Lcom/yelp/android/webimageview/ImageLoader;->start(Ljava/lang/String;Lcom/yelp/android/webimageview/ImageLoaderHandler;Z)V

    .line 179
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Badge;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->q:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Badge;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->q:Landroid/view/View;

    const v1, 0x7f0f041d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07026f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    new-instance v0, Lcom/yelp/android/ui/util/ap;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/ap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->n:Lcom/yelp/android/ui/util/ap;

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->n:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/ap;->a(Z)V

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->n:Lcom/yelp/android/ui/util/ap;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->a(Landroid/widget/ListAdapter;)V

    .line 195
    :cond_2
    return-void

    .line 166
    :cond_3
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->q:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;Lcom/yelp/android/serializable/Badge;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->a(Lcom/yelp/android/serializable/Badge;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)Lcom/yelp/android/ui/util/ap;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->n:Lcom/yelp/android/ui/util/ap;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->E()V

    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->E()V

    return-void
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->j:Lcom/yelp/android/serializable/Badge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->j:Lcom/yelp/android/serializable/Badge;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Badge;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yelp_bff"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->p:Lcom/yelp/android/appdata/webrequests/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->p:Lcom/yelp/android/appdata/webrequests/p;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/p;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->j:Lcom/yelp/android/serializable/Badge;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->l:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/p;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/p;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->p:Lcom/yelp/android/appdata/webrequests/p;

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->p:Lcom/yelp/android/appdata/webrequests/p;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/p;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 151
    :cond_1
    return-void

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->j:Lcom/yelp/android/serializable/Badge;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Badge;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onAttach(Landroid/app/Activity;)V

    .line 126
    check-cast p1, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->m:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$a;

    .line 127
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onPause()V

    .line 140
    const-string/jumbo v0, "badge_feed"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->p:Lcom/yelp/android/appdata/webrequests/p;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 141
    const-string/jumbo v0, "badge_details"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->o:Lcom/yelp/android/appdata/webrequests/o;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onResume()V

    .line 132
    const-string/jumbo v0, "badge_feed"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->p:Lcom/yelp/android/appdata/webrequests/p;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/p;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->p:Lcom/yelp/android/appdata/webrequests/p;

    .line 133
    const-string/jumbo v0, "badge_details"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->o:Lcom/yelp/android/appdata/webrequests/o;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->t:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/o;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->o:Lcom/yelp/android/appdata/webrequests/o;

    .line 135
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->j:Lcom/yelp/android/serializable/Badge;

    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "check_in"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->k:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 83
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->l:Landroid/net/Uri;

    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03013e

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->q:Landroid/view/View;

    .line 90
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 91
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->q:Landroid/view/View;

    const v1, 0x7f0f041b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->r:Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_notification_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 100
    sget-object v1, Lcom/yelp/android/services/push/Notifier$NotificationType;->Badge:Lcom/yelp/android/services/push/Notifier$NotificationType;

    if-ne v0, v1, :cond_0

    .line 101
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/analytics/n;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->l:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/yelp/android/analytics/n;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 102
    new-instance v0, Lcom/yelp/android/appdata/webrequests/o;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->l:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->t:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/o;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->o:Lcom/yelp/android/appdata/webrequests/o;

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->o:Lcom/yelp/android/appdata/webrequests/o;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/o;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->D()V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->k:Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->q:Landroid/view/View;

    const v1, 0x7f0f041d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->n()V

    .line 121
    :goto_1
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->j:Lcom/yelp/android/serializable/Badge;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->a(Lcom/yelp/android/serializable/Badge;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f038a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 119
    const v1, 0x7f0205bb

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    goto :goto_1
.end method
