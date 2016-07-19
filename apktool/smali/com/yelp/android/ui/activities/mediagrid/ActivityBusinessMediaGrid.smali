.class public Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityBusinessMediaGrid.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;
.implements Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$a;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

.field private b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

.field private c:Lcom/yelp/android/appdata/webrequests/af;

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

.field private e:Ljava/lang/String;

.field private f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 224
    new-instance v0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid$1;-><init>(Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0, p2, p3}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0, p2, p3, p4}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0, p2, p3}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    const-string/jumbo v2, "media_request"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const-string/jumbo v2, "media_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 103
    return-object v1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v2, 0x7f0f020d

    .line 212
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    if-nez v0, :cond_0

    .line 216
    invoke-static {p1, p2, p3}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    .line 217
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 222
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/MediaCategory;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Lcom/yelp/android/serializable/MediaCategory;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;)",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaCategory;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaCategory;->b()I

    move-result v3

    const/16 v4, 0x14

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/MediaRequest;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static/range {p0 .. p5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/MediaRequest;II)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x42e

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 176
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Z)V
    .locals 3

    .prologue
    .line 180
    if-eqz p2, :cond_0

    .line 181
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMorePhotosAddPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 187
    :goto_0
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    const v1, 0x7f0701ff

    const v2, 0x7f07038e

    invoke-static {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void

    .line 183
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->PhotoGridCell:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v0

    .line 184
    const-string/jumbo v1, "business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotosGrid:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 2
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
    .line 156
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 110
    const-string/jumbo v0, "title"

    const v1, 0x7f07048d

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->setTitle(I)V

    .line 111
    const-string/jumbo v0, "business"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 112
    const-string/jumbo v1, "business_id"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    const-string/jumbo v1, "media_request"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 114
    const-string/jumbo v1, "media_list"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->d:Ljava/util/ArrayList;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->e:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;)V

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_0
    if-eqz v3, :cond_1

    .line 120
    iput-object v3, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->e:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->enableLoading()V

    .line 122
    new-instance v0, Lcom/yelp/android/appdata/webrequests/af;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v3, v1}, Lcom/yelp/android/appdata/webrequests/af;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->c:Lcom/yelp/android/appdata/webrequests/af;

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->c:Lcom/yelp/android/appdata/webrequests/af;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/af;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "We must be provided with a business or a bizId to create a media grid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 145
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10002a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 139
    const-string/jumbo v0, "business_info"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->c:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 140
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 133
    const-string/jumbo v0, "business_info"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->c:Lcom/yelp/android/appdata/webrequests/af;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/af;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->c:Lcom/yelp/android/appdata/webrequests/af;

    .line 134
    return-void
.end method
