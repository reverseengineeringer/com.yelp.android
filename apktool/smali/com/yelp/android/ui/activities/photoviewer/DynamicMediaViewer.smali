.class public abstract Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;
.super Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;
.source "DynamicMediaViewer.java"


# instance fields
.field protected a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

.field private f:I

.field private g:Z

.field private h:I

.field private final i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
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
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->f:I

    .line 207
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;-><init>(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Intent;)I
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "extra.media_index"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->f:I

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->h:I

    return p1
.end method

.method protected static a(Landroid/content/Intent;Ljava/util/List;ILcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;I",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a(Landroid/content/Intent;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "extra.media_request"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v1, "extra.total_media"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 199
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/a;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 204
    :cond_1
    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->h:I

    return v0
.end method

.method public static b(Landroid/content/Intent;)Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "extra.media_request"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->c()V

    .line 179
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->d()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->f:I

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->g:Z

    .line 183
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->hideLoadingDialog()V

    .line 184
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c()V

    return-void
.end method

.method private d()I
    .locals 2

    .prologue
    .line 187
    const/high16 v0, 0x3f400000    # 0.75f

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/a;->d()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 128
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->h:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->h:I

    add-int/lit8 v0, v0, -0x2a

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 132
    new-instance v2, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->d()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->h:I

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->d()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/a;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->f:I

    if-lt p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->g:Z

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->g:Z

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->d:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;-><init>(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected g()I
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.total_media"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 80
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->onCreate(Landroid/os/Bundle;)V

    .line 82
    if-eqz p1, :cond_0

    .line 83
    const-string/jumbo v0, "threshold"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->f:I

    .line 84
    const-string/jumbo v0, "is_threshold_exceeded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->g:Z

    .line 88
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->f:I

    if-ne v0, v1, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->d()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->f:I

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.media_request"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->g()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->c(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 100
    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->onPause()V

    .line 111
    const-string/jumbo v0, "media_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 112
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->onResume()V

    .line 105
    const-string/jumbo v0, "media_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 106
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    const-string/jumbo v0, "threshold"

    iget v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const-string/jumbo v0, "is_threshold_exceeded"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    return-void
.end method
