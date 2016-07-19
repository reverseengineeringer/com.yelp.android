.class public Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;
.super Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;
.source "TabbedMediaGridFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$a;
    }
.end annotation


# instance fields
.field private g:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$a;

.field private i:Lcom/yelp/android/ui/activities/support/YelpActivity;

.field private j:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

.field private k:Landroid/view/View;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/MediaCategory;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private final n:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->m:I

    .line 199
    new-instance v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;-><init>(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->n:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 256
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->m:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;Lcom/yelp/android/serializable/MediaCategory;)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b(Lcom/yelp/android/serializable/MediaCategory;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->j:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;)",
            "Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;-><init>()V

    .line 54
    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;Z)Landroid/os/Bundle;

    .line 55
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->l:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/MediaCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 172
    new-instance v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$1;-><init>(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->j:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->f()Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a(Ljava/util/List;Lcom/yelp/android/serializable/MediaCategory;)V

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->j:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->i:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->removeToolbarElevation()V

    .line 189
    :cond_0
    return-void
.end method

.method private b(Lcom/yelp/android/serializable/MediaCategory;)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->g:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$a;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/MediaCategory;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/serializable/MediaCategory;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->f()Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v0

    return-object v0
.end method

.method private f()Lcom/yelp/android/serializable/MediaCategory;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->l:Ljava/util/ArrayList;

    iget v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->m:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaCategory;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/MediaCategory;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->f()Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;

    sget v1, Lcom/yelp/android/ui/util/av;->d:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;->smoothScrollToPositionFromTop(III)V

    .line 156
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;

    invoke-virtual {v0, v2, v2, v2}, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;->smoothScrollToPositionFromTop(III)V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->m:I

    .line 143
    invoke-virtual {p1}, Lcom/yelp/android/serializable/MediaCategory;->c()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->e:I

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->a(Z)V

    .line 147
    :cond_1
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b(Lcom/yelp/android/serializable/MediaCategory;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->clear()V

    .line 149
    invoke-virtual {p1}, Lcom/yelp/android/serializable/MediaCategory;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MediaCategory;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/ui/activities/mediagrid/a;->a(Ljava/util/List;Z)V

    .line 154
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c()V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->H_()V

    goto :goto_1
.end method

.method protected a()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->u()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->getCount()I

    move-result v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->f()Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/MediaCategory;->c()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->n:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 83
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    if-eqz p1, :cond_2

    .line 85
    const-string/jumbo v0, "current_category"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->m:I

    .line 86
    const-string/jumbo v0, "media_categories"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->l:Ljava/util/ArrayList;

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->l:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Ljava/util/ArrayList;)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->j:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->setMediaTabClickListener(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$a;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-nez v0, :cond_3

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->m:I

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/mediagrid/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/serializable/MediaCategory;->a(Ljava/util/List;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/mediagrid/a;->b(Z)V

    .line 101
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->f:Z

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->getCount()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->e:I

    .line 108
    :cond_1
    :goto_1
    return-void

    .line 89
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->l:Ljava/util/ArrayList;

    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->j:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->H_()V

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 121
    :pswitch_0
    if-eqz p3, :cond_0

    .line 122
    invoke-static {p3}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->b(Landroid/content/Intent;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 123
    invoke-static {}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->popData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 124
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->f()Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/MediaCategory;->b(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->f()Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/MediaCategory;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/a;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x42e
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->onAttach(Landroid/content/Context;)V

    .line 63
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$a;

    move-object v1, v0

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->g:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$a;

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-object v1, v0

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->i:Lcom/yelp/android/ui/activities/support/YelpActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 65
    :catch_0
    move-exception v1

    .line 66
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must implement TabbedMediaRequestCreator and ToolbarElevationListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 76
    const v0, 0x7f0f032a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->j:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    .line 77
    const v0, 0x7f0f032d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->k:Landroid/view/View;

    .line 78
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    const-string/jumbo v0, "current_category"

    iget v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string/jumbo v0, "media_categories"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    return-void
.end method
