.class public Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "WhoLikedThisBizPhotoFragment.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/reviewpage/f;

.field private b:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/ui/panels/PanelLoading;

.field private d:Landroid/view/View;

.field private final e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PhotoFeedback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/VideoFeedback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 134
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment$2;-><init>(Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 148
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment$3;-><init>(Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/Media;)Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;-><init>()V

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string/jumbo v2, "extra.media"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->b(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/DisplayableAsUserBadge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/activities/reviewpage/f;->a(Ljava/util/List;Z)V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/f;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "Empty results for \'People Who Liked This Photo\'"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 169
    return-void
.end method

.method private b(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->c()V

    .line 174
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 176
    return-void
.end method

.method private b(Lcom/yelp/android/serializable/Media;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/f;->clear()V

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ai;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    check-cast p1, Lcom/yelp/android/serializable/Video;

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/appdata/webrequests/ai;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/Video;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->b()V

    .line 132
    :cond_1
    return-void

    .line 125
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ab;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    check-cast p1, Lcom/yelp/android/serializable/Photo;

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/appdata/webrequests/ab;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/Photo;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 187
    instance-of v1, v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->startActivity(Landroid/content/Intent;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-static {p1}, Lcom/yelp/android/ui/activities/reviewpage/f;->b(Landroid/os/Bundle;)Lcom/yelp/android/ui/activities/reviewpage/f;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/f;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/f;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/f;->notifyDataSetChanged()V

    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 107
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra.media"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 99
    if-eqz v0, :cond_2

    .line 100
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->b(Lcom/yelp/android/serializable/Media;)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "Missing photo argument"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 60
    const v0, 0x7f0300dd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 61
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment$1;-><init>(Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    const v0, 0x7f0f0283

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/PanelLoading;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->c:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 75
    const v0, 0x7f0f0026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->d:Landroid/view/View;

    .line 76
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDestroyView()V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Z)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a:Lcom/yelp/android/ui/activities/reviewpage/f;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/f;->a(Landroid/os/Bundle;)V

    .line 182
    return-void
.end method
