.class public Lcom/yelp/android/ui/activities/ActivityMediaBrowser;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityMediaBrowser.java"


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Lcom/yelp/android/ui/activities/cv;

.field private c:Lcom/yelp/android/serializable/YelpBusiness;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

.field private g:I

.field private final h:Landroid/widget/AdapterView$OnItemClickListener;

.field private final i:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->g:I

    .line 309
    new-instance v0, Lcom/yelp/android/ui/activities/ct;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ct;-><init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->h:Landroid/widget/AdapterView$OnItemClickListener;

    .line 340
    new-instance v0, Lcom/yelp/android/ui/activities/cu;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/cu;-><init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->i:Lcom/yelp/android/appdata/webrequests/m;

    .line 366
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->g:I

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;Z)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p4}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->setData(Ljava/lang/Object;)V

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const-string/jumbo v1, "extra.media_request"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v1, "extra.state_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 103
    const-string/jumbo v1, "extra.show_likes"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;Lcom/yelp/android/appdata/webrequests/MediaRequest;)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    return-object p1
.end method

.method private a()V
    .locals 5

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 276
    const-string/jumbo v0, "extra.state_title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->setTitle(Ljava/lang/CharSequence;)V

    .line 278
    invoke-static {}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->popData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 285
    if-eqz v0, :cond_2

    .line 286
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    .line 287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 288
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->e:Ljava/util/TreeSet;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 289
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 296
    :cond_2
    const-string/jumbo v0, "extra.media_request"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-eqz v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->countMedia(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->resetWithOffset(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 301
    :cond_3
    const-string/jumbo v0, "extra.business"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c:Lcom/yelp/android/serializable/YelpBusiness;

    .line 302
    new-instance v0, Lcom/yelp/android/ui/activities/cv;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    const-string/jumbo v3, "extra.show_likes"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/yelp/android/ui/activities/cv;-><init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->b:Lcom/yelp/android/ui/activities/cv;

    .line 304
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->b:Lcom/yelp/android/ui/activities/cv;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->h:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a:Landroid/widget/GridView;

    new-instance v1, Lcom/yelp/android/ui/activities/cz;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/activities/cz;-><init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;Lcom/yelp/android/ui/activities/cr;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 307
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/Media;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->b:Lcom/yelp/android/ui/activities/cv;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/cv;->notifyDataSetChanged()V

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->e:Ljava/util/TreeSet;

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;Lcom/yelp/android/serializable/Media;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a(Lcom/yelp/android/serializable/Media;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/m;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->i:Lcom/yelp/android/appdata/webrequests/m;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/ui/activities/cv;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->b:Lcom/yelp/android/ui/activities/cv;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 260
    :goto_0
    invoke-static {p1, v0, p2, p3, p4}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x404

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->startActivityForResult(Landroid/content/Intent;I)V

    .line 262
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/yelp/android/serializable/Media;Z)V
    .locals 2

    .prologue
    .line 245
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->b:Lcom/yelp/android/ui/activities/cv;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/cv;->notifyDataSetChanged()V

    .line 251
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotosGrid:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
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
    .line 235
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v1, :cond_0

    .line 237
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 239
    :cond_0
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 144
    :pswitch_0
    if-eqz p3, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.media_request"

    invoke-static {p3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Intent;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a()V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x404
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->setContentView(I)V

    .line 113
    const v0, 0x7f0c017c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a:Landroid/widget/GridView;

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a:Landroid/widget/GridView;

    new-instance v1, Lcom/yelp/android/ui/activities/cz;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/activities/cz;-><init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;Lcom/yelp/android/ui/activities/cr;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->e:Ljava/util/TreeSet;

    .line 117
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a()V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    const-string/jumbo v0, "extra.media_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 120
    const-string/jumbo v0, "media_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 122
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    const-string/jumbo v0, "deleted_media_set"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->e:Ljava/util/TreeSet;

    .line 125
    const-string/jumbo v0, "previous_scroll_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->g:I

    .line 129
    :cond_0
    const-string/jumbo v0, "com.yelp.android.media.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/cr;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/cr;-><init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 138
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 211
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100026

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c0408

    if-ne v0, v1, :cond_0

    .line 218
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMorePhotosAddPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 219
    const v0, 0x7f07063a

    const v1, 0x7f070352

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v2}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->startActivity(Landroid/content/Intent;)V

    .line 223
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->g:I

    .line 190
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 205
    const-string/jumbo v0, "previous_scroll_position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->g:I

    .line 206
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 157
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->isFetching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->i:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 166
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->showLoadingDialog()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->clearFocus()V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a:Landroid/widget/GridView;

    new-instance v1, Lcom/yelp/android/ui/activities/cs;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/cs;-><init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a:Landroid/widget/GridView;

    iget v1, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 184
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->retry()Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    const-string/jumbo v0, "media_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->f:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 196
    const-string/jumbo v0, "media_list"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 197
    const-string/jumbo v0, "deleted_media_set"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->e:Ljava/util/TreeSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 198
    const-string/jumbo v0, "previous_scroll_position"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    return-void
.end method
