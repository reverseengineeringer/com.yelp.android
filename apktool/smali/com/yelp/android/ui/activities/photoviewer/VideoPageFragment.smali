.class public abstract Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;
.super Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;
.source "VideoPageFragment.java"


# instance fields
.field protected b:Landroid/widget/ImageView;

.field protected c:Lcom/yelp/android/serializable/Video;

.field protected d:Z

.field private e:Lcom/yelp/android/webimageview/WebImageView;

.field private g:J

.field private h:Z

.field private i:Z

.field private j:Lcom/yelp/android/ui/activities/photoviewer/am;

.field private k:Lcom/yelp/android/ui/activities/photoviewer/aq;

.field private final l:Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;

.field private final m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;-><init>()V

    .line 112
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/ao;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/ao;-><init>(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->l:Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;

    .line 255
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/ap;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/ap;-><init>(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->m:Landroid/view/View$OnClickListener;

    .line 265
    return-void
.end method

.method private F()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 218
    .line 219
    iget-wide v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->g:J

    sub-long/2addr v0, v4

    .line 221
    iput-wide v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->g:J

    .line 223
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 224
    const-string/jumbo v3, "id"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Video;->getBusinessId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v3, "video_id"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Video;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string/jumbo v3, "video_source"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Video;->getVideoSource()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string/jumbo v3, "time_elapsed"

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/yelp/android/util/o;->f(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessVideoPlay:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 229
    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private G()V
    .locals 4

    .prologue
    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 233
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v1, "video_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v1, "video_source"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->getVideoSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v1, "time_played"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->h()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/yelp/android/util/o;->f(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string/jumbo v1, "video_duration"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/yelp/android/util/o;->f(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessVideoPause:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 240
    return-void
.end method

.method private H()V
    .locals 4

    .prologue
    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 244
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v1, "video_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v1, "video_source"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->getVideoSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string/jumbo v1, "duration"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/yelp/android/util/o;->f(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessVideoEnd:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 249
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/webimageview/WebImageView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->e:Lcom/yelp/android/webimageview/WebImageView;

    return-object v0
.end method

.method protected static b(Lcom/yelp/android/serializable/Video;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 127
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/am;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->j:Lcom/yelp/android/ui/activities/photoviewer/am;

    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public a(Lcom/yelp/android/ui/activities/photoviewer/am;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->j:Lcom/yelp/android/ui/activities/photoviewer/am;

    .line 253
    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method protected abstract e()V
.end method

.method protected abstract f()V
.end method

.method protected abstract g()Z
.end method

.method protected abstract h()I
.end method

.method protected abstract i()I
.end method

.method protected k()V
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i_()V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    return-void
.end method

.method protected l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->H()V

    .line 200
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->p()V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i:Z

    .line 203
    return-void
.end method

.method protected m()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->j()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i:Z

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->d:Z

    .line 189
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->F()V

    .line 190
    return-void
.end method

.method public final n()V
    .locals 4

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->h:Z

    if-nez v0, :cond_1

    .line 132
    iget-wide v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->g:J

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b()V

    goto :goto_0
.end method

.method public final o()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c()V

    .line 144
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/aq;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->k:Lcom/yelp/android/ui/activities/photoviewer/aq;

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Video;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->a()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v2, 0x7f0c02e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    .line 80
    const v1, 0x7f0c02c8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/webimageview/WebImageView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->e:Lcom/yelp/android/webimageview/WebImageView;

    .line 81
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->e:Lcom/yelp/android/webimageview/WebImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/yelp/android/webimageview/WebImageView;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->e:Lcom/yelp/android/webimageview/WebImageView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->l:Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    .line 83
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/PanelLoading;->bringToFront()V

    .line 84
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onPause()V

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->o()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i:Z

    .line 110
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onResume()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->d:Z

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->k()V

    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->p()V

    .line 103
    return-void
.end method

.method public final p()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->f()V

    .line 148
    return-void
.end method

.method public q()Lcom/yelp/android/serializable/Video;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    return-object v0
.end method

.method protected r()V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->k()V

    .line 156
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->p()V

    .line 157
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->n()V

    .line 158
    return-void
.end method

.method protected s()V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->e()V

    .line 162
    return-void
.end method

.method protected t()V
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->h:Z

    .line 177
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->j()V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->k:Lcom/yelp/android/ui/activities/photoviewer/aq;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Video;->getId()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->d:Z

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/aq;->a(Ljava/lang/String;Z)V

    .line 182
    return-void
.end method

.method protected u()V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->j()V

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->G()V

    .line 196
    return-void
.end method

.method protected v()V
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->o()V

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i:Z

    if-nez v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i_()V

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->n()V

    goto :goto_0
.end method
