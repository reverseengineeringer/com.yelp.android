.class public Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityCompliments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$5;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/at;

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

.field private final g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/at$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$1;-><init>(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 303
    new-instance v0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$3;-><init>(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 333
    new-instance v0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$4;-><init>(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    const-class v1, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    const-string/jumbo v1, "extra.mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 192
    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)Lcom/yelp/android/ui/activities/compliments/a;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->b:Lcom/yelp/android/ui/activities/compliments/a;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/Compliment;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->a(Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/Compliment;)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/Compliment;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p1, v0, p2}, Lcom/yelp/android/ui/activities/compliments/Mode;->makeActionRequest(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/Compliment;)Lcom/yelp/android/appdata/webrequests/as;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/as;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 257
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)Lcom/yelp/android/ui/activities/compliments/Mode;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 145
    instance-of v1, v0, Lcom/yelp/android/serializable/Compliment;

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    .line 147
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->s()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 149
    sget-object v2, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$5;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->j()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 180
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->m()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 184
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->startActivity(Landroid/content/Intent;)V

    .line 186
    :cond_0
    return-void

    .line 151
    :pswitch_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-static {p0, v1, v4}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->a(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 161
    :pswitch_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v4}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 166
    :pswitch_3
    invoke-static {p0, v1, v4}, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;->a(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 171
    :pswitch_4
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 149
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

.method protected c()V
    .locals 5

    .prologue
    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->b:Lcom/yelp/android/ui/activities/compliments/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    sget-object v1, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    if-ne v0, v1, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->a:Lcom/yelp/android/appdata/webrequests/at;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->a:Lcom/yelp/android/appdata/webrequests/at;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/at;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->s()I

    move-result v3

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->s_()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/compliments/Mode;->makeLookupRequest(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;II)Lcom/yelp/android/appdata/webrequests/at;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->a:Lcom/yelp/android/appdata/webrequests/at;

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->a:Lcom/yelp/android/appdata/webrequests/at;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/at;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 213
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->a:Lcom/yelp/android/appdata/webrequests/at;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BrowseCompliments:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 251
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 233
    :sswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 234
    const-string/jumbo v0, "extra.exec_mode"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/compliments/Mode;

    .line 235
    const-string/jumbo v3, "extra.exec_compliment"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Compliment;

    .line 236
    new-instance v3, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$2;-><init>(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/serializable/Compliment;)V

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v2

    .line 243
    goto :goto_0

    .line 245
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 246
    const v1, 0x7f0701dd

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->b:Lcom/yelp/android/ui/activities/compliments/a;

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/compliments/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 248
    goto :goto_0

    .line 227
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070137 -> :sswitch_0
        0x7f070227 -> :sswitch_1
        0x7f070240 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 99
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Compliments:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-static {p0, v0}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;)V

    .line 102
    const v0, 0x7f0701f8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->setTitle(I)V

    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 105
    const-string/jumbo v0, "extra.mode"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/compliments/Mode;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "requests"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 109
    sget-object v0, Lcom/yelp/android/ui/activities/compliments/Mode;->LIST:Lcom/yelp/android/ui/activities/compliments/Mode;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    .line 115
    :cond_0
    :goto_0
    const-string/jumbo v0, "extra.user"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 116
    if-nez v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 119
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->e:Ljava/lang/String;

    .line 120
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->f:Ljava/lang/String;

    .line 122
    new-instance v2, Lcom/yelp/android/ui/activities/compliments/a;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/yelp/android/ui/activities/compliments/a;-><init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Z)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->b:Lcom/yelp/android/ui/activities/compliments/a;

    .line 124
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->b:Lcom/yelp/android/ui/activities/compliments/a;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    const-string/jumbo v0, "extra.compliments"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->c:Ljava/util/ArrayList;

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 131
    :cond_2
    if-eqz p1, :cond_3

    .line 132
    const-string/jumbo v0, "extra.compliments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->c:Ljava/util/ArrayList;

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->c:Ljava/util/ArrayList;

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->b:Lcom/yelp/android/ui/activities/compliments/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/compliments/a;->a(Ljava/util/List;)V

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->registerForContextMenu(Landroid/view/View;)V

    .line 140
    return-void

    .line 111
    :cond_5
    sget-object v0, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10

    .prologue
    const v9, 0x7f070240

    const v8, 0x7f070227

    const v5, 0x7f070137

    const/high16 v7, 0x20000000

    const/4 v6, 0x0

    .line 261
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 262
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 264
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    .line 266
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->k()Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v1

    iget v1, v1, Lcom/yelp/android/serializable/Compliment$ComplimentType;->mText:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 267
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->k()Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v1

    iget v1, v1, Lcom/yelp/android/serializable/Compliment$ComplimentType;->mIcon:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 268
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v2

    .line 270
    if-eqz v2, :cond_1

    .line 271
    const v1, 0x7f070550

    invoke-interface {p1, v6, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 272
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->m()Lcom/yelp/android/serializable/User;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 274
    const/16 v1, 0x80

    .line 275
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->l()Lcom/yelp/android/serializable/Compliment$ComplimentState;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/serializable/Compliment$ComplimentState;->ELIGIBLE:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->d:Lcom/yelp/android/ui/activities/compliments/Mode;

    sget-object v4, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    if-ne v3, v4, :cond_0

    .line 276
    const/4 v1, 0x1

    invoke-interface {p1, v6, v5, v1, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 277
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    const-string/jumbo v4, "extra.exec_mode"

    sget-object v5, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v4, "extra.exec_compliment"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 280
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 282
    const/4 v1, 0x2

    .line 284
    :cond_0
    invoke-interface {p1, v6, v9, v1, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 285
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    const-string/jumbo v4, "extra.exec_mode"

    sget-object v5, Lcom/yelp/android/ui/activities/compliments/Mode;->DELETE:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 287
    const-string/jumbo v4, "extra.exec_compliment"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 288
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 289
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 292
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->m()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/User;)V

    .line 293
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->f:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/Compliment;Ljava/lang/String;Z)V

    .line 295
    invoke-interface {p1, v6, v8, v6, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 296
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 222
    const-string/jumbo v0, "extra.compliments"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 223
    return-void
.end method
