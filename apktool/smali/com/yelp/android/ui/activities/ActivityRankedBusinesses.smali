.class public Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityRankedBusinesses.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/yelp/android/ui/k;
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$3;,
        Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$a;,
        Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/RankTitle$Rank;

.field private b:Lcom/yelp/android/serializable/User;

.field private c:Lcom/yelp/android/serializable/RankLocation;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Bundle;

.field private f:Lcom/yelp/android/appdata/webrequests/fi;

.field private g:Lcom/yelp/android/appdata/webrequests/fb;

.field private h:Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;

.field private final i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fi$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fb$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 371
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$1;-><init>(Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 386
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$2;-><init>(Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/RankLocation;Lcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 78
    invoke-static {p0, p2, p3}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a(Landroid/content/Context;Lcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 72
    const-string/jumbo v1, "rank"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RankTitle$Rank;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankLocation;->c()I

    move-result v0

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;->getCount()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;->notifyDataSetChanged()V

    .line 234
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->disableLoading()V

    .line 235
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b:Lcom/yelp/android/serializable/User;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/User;->b(Lcom/yelp/android/serializable/RankTitle$Rank;)I

    move-result v0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/fi;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/fb;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->p_()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankLocation;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankLocation;->b()Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    return-void

    .line 154
    :cond_1
    const/4 v0, 0x0

    .line 157
    sget-object v1, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$3;->a:[I

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 173
    :goto_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_0
    const v0, 0x7f070355

    .line 160
    goto :goto_1

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f070155

    goto :goto_1

    :cond_2
    const v0, 0x7f070156

    goto :goto_1

    .line 165
    :pswitch_2
    const v0, 0x7f07026c

    .line 166
    goto :goto_1

    .line 168
    :pswitch_3
    const v0, 0x7f0704e6

    .line 169
    goto :goto_1

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private g()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x14

    const/4 v12, 0x0

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v2

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/fb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/fb;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fb;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fb;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/RankLocation;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;->getCount()I

    move-result v4

    iget-object v6, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/fb;-><init>(Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/fb;

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/fb;

    new-array v1, v12, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fb;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/fb;

    .line 216
    :goto_0
    return-object v0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/fi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/fi;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fi;->u()Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    :cond_2
    new-instance v6, Lcom/yelp/android/appdata/webrequests/fi;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;->getCount()I

    move-result v9

    iget-object v11, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-object v8, v2

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/yelp/android/appdata/webrequests/fi;-><init>(Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v6, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/fi;

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/fi;

    new-array v1, v12, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fi;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/fi;

    goto :goto_0

    .line 216
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 247
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RankLocation;

    .line 248
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankLocation;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 251
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->startActivity(Landroid/content/Intent;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankLocation;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b:Lcom/yelp/android/serializable/User;

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a(Landroid/content/Context;Lcom/yelp/android/serializable/RankLocation;Lcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public b()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fi;",
            "Lcom/yelp/android/appdata/webrequests/fb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g()Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 139
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserRankingsBusinesses:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b()Landroid/util/Pair;

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
    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    if-eqz p1, :cond_2

    .line 87
    const-string/jumbo v0, "locations"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->d:Ljava/util/ArrayList;

    .line 88
    const-string/jumbo v0, "counts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->e:Landroid/os/Bundle;

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b()Landroid/util/Pair;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/fi;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/fi;

    .line 97
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/fb;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/fb;

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/fi;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/fi;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fi;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/fb;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/fb;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fb;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 108
    const-string/jumbo v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b:Lcom/yelp/android/serializable/User;

    .line 109
    const-string/jumbo v0, "rank"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 110
    const-string/jumbo v0, "location"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RankLocation;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->e:Landroid/os/Bundle;

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 114
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f()V

    .line 116
    return-void

    .line 90
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->d:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->e:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 240
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/fi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/fi;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fi;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/fi;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/fb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/fb;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fb;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/fb;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->r_()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 181
    const-string/jumbo v0, "locations"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 182
    const-string/jumbo v0, "counts"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 183
    return-void
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 190
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g()Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses$b;->notifyDataSetInvalidated()V

    .line 192
    return-void
.end method

.method public q_()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->p_()V

    .line 144
    return-void
.end method

.method public r_()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fi;",
            "Lcom/yelp/android/appdata/webrequests/fb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/fi;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/fb;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
