.class public Lcom/yelp/android/ui/activities/ActivityBadge;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityBadge.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/feed/u;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/yelp/android/appdata/webrequests/r;

.field private final e:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
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
    .line 37
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 171
    new-instance v0, Lcom/yelp/android/ui/activities/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/c;-><init>(Lcom/yelp/android/ui/activities/ActivityBadge;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->e:Lcom/yelp/android/appdata/webrequests/m;

    .line 186
    new-instance v0, Lcom/yelp/android/ui/activities/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/d;-><init>(Lcom/yelp/android/ui/activities/ActivityBadge;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->f:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Badge;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 49
    .line 50
    if-eqz p2, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityBadge$ActivityBadgeDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string/jumbo v1, "dialog"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    :goto_0
    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    return-object v0

    .line 54
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityBadge;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityBadge;)Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityBadge;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(II)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    .line 144
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Badge;->getId()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/s;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->e:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/s;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/s;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/Badge;)V
    .locals 6

    .prologue
    const v5, 0x7f0c0344

    const/4 v4, 0x0

    .line 106
    const v0, 0x7f0c00ac

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Badge;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 108
    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->b:Landroid/view/View;

    const v1, 0x7f0c0342

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 119
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Badge;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v1

    .line 120
    if-nez v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->c:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Badge;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Lcom/yelp/android/ui/activities/b;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/b;-><init>(Lcom/yelp/android/ui/activities/ActivityBadge;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/yelp/android/webimageview/ImageLoader;->start(Ljava/lang/String;Lcom/yelp/android/webimageview/ImageLoaderHandler;Z)V

    .line 132
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Badge;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Badge;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_1
    return-void

    .line 114
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityBadge;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BadgeDetails:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c00ae

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e5

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->b:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/u;)V

    .line 70
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityBadge;->setResult(ILandroid/content/Intent;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->b:Landroid/view/View;

    const v1, 0x7f0c0343

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->c:Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 75
    const-string/jumbo v0, "extra_notification_type"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 77
    const-string/jumbo v2, "badge"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    const-string/jumbo v0, "badge"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->a(Lcom/yelp/android/serializable/Badge;)V

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "dialog"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->d:Lcom/yelp/android/appdata/webrequests/r;

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    const v0, 0x7f0c00ad

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 95
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    new-instance v1, Lcom/yelp/android/ui/activities/a;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/a;-><init>(Lcom/yelp/android/ui/activities/ActivityBadge;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_1
    return-void

    .line 79
    :cond_2
    sget-object v2, Lcom/yelp/android/services/push/Notifier$NotificationType;->Badge:Lcom/yelp/android/services/push/Notifier$NotificationType;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->d:Lcom/yelp/android/appdata/webrequests/r;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->d:Lcom/yelp/android/appdata/webrequests/r;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/r;->isFetching()Z

    move-result v0

    if-nez v0, :cond_4

    .line 81
    :cond_3
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/analytics/o;

    invoke-direct {v2, v0}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 84
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/yelp/android/appdata/webrequests/r;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->f:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/r;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->d:Lcom/yelp/android/appdata/webrequests/r;

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->d:Lcom/yelp/android/appdata/webrequests/r;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/r;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->showLoadingDialog()V

    goto :goto_0

    .line 89
    :cond_4
    const-string/jumbo v0, "Activity started without a badge extra"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->finish()V

    goto :goto_0
.end method
