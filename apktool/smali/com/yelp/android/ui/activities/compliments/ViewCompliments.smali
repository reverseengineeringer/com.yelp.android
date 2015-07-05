.class public Lcom/yelp/android/ui/activities/compliments/ViewCompliments;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ViewCompliments.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/az;

.field private b:Lcom/yelp/android/ui/activities/compliments/a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yelp/android/ui/activities/compliments/Mode;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/bb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 71
    new-instance v0, Lcom/yelp/android/ui/activities/compliments/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/compliments/j;-><init>(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->g:Lcom/yelp/android/appdata/webrequests/m;

    .line 283
    new-instance v0, Lcom/yelp/android/ui/activities/compliments/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/compliments/l;-><init>(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->h:Lcom/yelp/android/appdata/webrequests/m;

    .line 311
    new-instance v0, Lcom/yelp/android/ui/activities/compliments/m;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/compliments/m;-><init>(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->i:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    const-class v1, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 178
    const-string/jumbo v1, "extra.mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 179
    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;)Lcom/yelp/android/ui/activities/compliments/a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->b:Lcom/yelp/android/ui/activities/compliments/a;

    return-object v0
.end method

.method private a(Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/Compliment;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->g:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p1, v0, p2}, Lcom/yelp/android/ui/activities/compliments/Mode;->makeActionRequest(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/Compliment;)Lcom/yelp/android/appdata/webrequests/av;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/av;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 237
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/Compliment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->a(Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/Compliment;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;)Lcom/yelp/android/ui/activities/compliments/Mode;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 141
    instance-of v1, v0, Lcom/yelp/android/serializable/Compliment;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    .line 143
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 145
    sget-object v2, Lcom/yelp/android/ui/activities/compliments/n;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getItem()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 168
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 171
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->startActivity(Landroid/content/Intent;)V

    .line 173
    :cond_0
    return-void

    .line 147
    :pswitch_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getComplimentableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-static {p0, v1, v4}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->b(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v4}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 158
    :pswitch_3
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getComplimentableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v4}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_4
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getComplimentableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected d()V
    .locals 5

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->b:Lcom/yelp/android/ui/activities/compliments/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    sget-object v1, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    if-ne v0, v1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->a:Lcom/yelp/android/appdata/webrequests/az;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->a:Lcom/yelp/android/appdata/webrequests/az;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/az;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->i:Lcom/yelp/android/appdata/webrequests/m;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->r()I

    move-result v3

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->e_()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/compliments/Mode;->makeLookupRequest(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;II)Lcom/yelp/android/appdata/webrequests/az;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->a:Lcom/yelp/android/appdata/webrequests/az;

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->a:Lcom/yelp/android/appdata/webrequests/az;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/az;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 199
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->a:Lcom/yelp/android/appdata/webrequests/az;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BrowseCompliments:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 231
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 219
    :sswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 220
    const-string/jumbo v0, "extra.exec_mode"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/compliments/Mode;

    .line 221
    const-string/jumbo v2, "extra.exec_compliment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Compliment;

    .line 222
    new-instance v2, Lcom/yelp/android/ui/activities/compliments/k;

    invoke-direct {v2, p0, v0, v1}, Lcom/yelp/android/ui/activities/compliments/k;-><init>(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/Compliment;)V

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :sswitch_data_0
    .sparse-switch
        0x7f0700ba -> :sswitch_0
        0x7f0701f6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 95
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Compliments:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-static {p0, v0}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;)V

    .line 98
    const v0, 0x7f0701c2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->setTitle(I)V

    .line 99
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 101
    const-string/jumbo v0, "extra.mode"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/compliments/Mode;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "requests"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 105
    sget-object v0, Lcom/yelp/android/ui/activities/compliments/Mode;->LIST:Lcom/yelp/android/ui/activities/compliments/Mode;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    .line 111
    :cond_0
    :goto_0
    const-string/jumbo v0, "extra.user"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 112
    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 115
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->e:Ljava/lang/String;

    .line 116
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->f:Ljava/lang/String;

    .line 118
    new-instance v2, Lcom/yelp/android/ui/activities/compliments/a;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->h:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/yelp/android/ui/activities/compliments/a;-><init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/appdata/webrequests/m;Z)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->b:Lcom/yelp/android/ui/activities/compliments/a;

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->b:Lcom/yelp/android/ui/activities/compliments/a;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    const-string/jumbo v0, "extra.compliments"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->c:Ljava/util/ArrayList;

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 127
    :cond_2
    if-eqz p1, :cond_3

    .line 128
    const-string/jumbo v0, "extra.compliments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->c:Ljava/util/ArrayList;

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->c:Ljava/util/ArrayList;

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->b:Lcom/yelp/android/ui/activities/compliments/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/compliments/a;->a(Ljava/util/List;)V

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->registerForContextMenu(Landroid/view/View;)V

    .line 136
    return-void

    .line 107
    :cond_5
    sget-object v0, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9

    .prologue
    const v8, 0x7f0701f6

    const v5, 0x7f0700ba

    const/high16 v7, 0x20000000

    const/4 v6, 0x0

    .line 242
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 243
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 245
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    .line 247
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getType()Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v1

    iget v1, v1, Lcom/yelp/android/serializable/Compliment$ComplimentType;->mText:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 248
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getType()Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v1

    iget v1, v1, Lcom/yelp/android/serializable/Compliment$ComplimentType;->mIcon:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 249
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v2

    .line 251
    if-eqz v2, :cond_1

    .line 252
    const v1, 0x7f070550

    invoke-interface {p1, v6, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 254
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 256
    const/16 v1, 0x80

    .line 257
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getState()Lcom/yelp/android/serializable/Compliment$ComplimentState;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/serializable/Compliment$ComplimentState;->ELIGIBLE:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    sget-object v4, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    if-ne v3, v4, :cond_0

    .line 258
    const/4 v1, 0x1

    invoke-interface {p1, v6, v5, v1, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 259
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    const-string/jumbo v4, "extra.exec_mode"

    sget-object v5, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v4, "extra.exec_compliment"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 262
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 264
    const/4 v1, 0x2

    .line 266
    :cond_0
    invoke-interface {p1, v6, v8, v1, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 267
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    const-string/jumbo v4, "extra.exec_mode"

    sget-object v5, Lcom/yelp/android/ui/activities/compliments/Mode;->DELETE:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 269
    const-string/jumbo v4, "extra.exec_compliment"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 270
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 274
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/yelp/android/ui/util/bf;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/User;)V

    .line 275
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->f:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/yelp/android/ui/util/bf;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/Compliment;Ljava/lang/String;Z)V

    .line 276
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    const-string/jumbo v0, "extra.compliments"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 209
    return-void
.end method
