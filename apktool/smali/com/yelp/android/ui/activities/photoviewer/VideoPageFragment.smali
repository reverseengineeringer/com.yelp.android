.class public abstract Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;
.super Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;
.source "VideoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$a;
    }
.end annotation


# instance fields
.field protected b:Landroid/widget/ImageView;

.field protected c:Lcom/yelp/android/serializable/Video;

.field protected d:Z

.field private e:Lcom/yelp/android/webimageview/WebImageView;

.field private f:J

.field private g:Z

.field private i:Z

.field private j:Lcom/yelp/android/ui/activities/photoviewer/a$a;

.field private k:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$a;

.field private final l:Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;

.field private final m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;-><init>()V

    .line 118
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$1;-><init>(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->l:Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;

    .line 263
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$2;-><init>(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->m:Landroid/view/View$OnClickListener;

    .line 274
    return-void
.end method

.method private H()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 227
    .line 228
    iget-wide v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->f:J

    sub-long/2addr v0, v4

    .line 230
    iput-wide v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->f:J

    .line 232
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 233
    const-string/jumbo v3, "id"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Video;->k()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v3, "video_id"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v3, "video_source"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Video;->p()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v3, "time_elapsed"

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/yelp/android/util/i;->f(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessVideoPlay:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 238
    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private I()V
    .locals 4

    .prologue
    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v1, "video_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string/jumbo v1, "video_source"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->p()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v1, "time_played"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/yelp/android/util/i;->f(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v1, "video_duration"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->j()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/yelp/android/util/i;->f(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessVideoPause:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 248
    return-void
.end method

.method private J()V
    .locals 4

    .prologue
    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v1, "video_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v1, "video_source"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->p()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v1, "duration"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->j()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/yelp/android/util/i;->f(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessVideoEnd:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 257
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/webimageview/WebImageView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->e:Lcom/yelp/android/webimageview/WebImageView;

    return-object v0
.end method

.method protected static b(Lcom/yelp/android/serializable/Video;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/a$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->j:Lcom/yelp/android/ui/activities/photoviewer/a$a;

    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public a(Lcom/yelp/android/ui/activities/photoviewer/a$a;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->j:Lcom/yelp/android/ui/activities/photoviewer/a$a;

    .line 261
    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method protected abstract f()V
.end method

.method protected abstract g()V
.end method

.method protected abstract h()Z
.end method

.method protected abstract i()I
.end method

.method protected abstract j()I
.end method

.method public k()Lcom/yelp/android/serializable/Media;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->s()Lcom/yelp/android/serializable/Video;

    move-result-object v0

    return-object v0
.end method

.method protected m()V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->H_()V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    return-void
.end method

.method protected n()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->J()V

    .line 209
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->r()V

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i:Z

    .line 212
    return-void
.end method

.method protected o()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->l()V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i:Z

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->d:Z

    .line 198
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->H()V

    .line 199
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$a;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->k:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$a;

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Video;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->a()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v2, 0x7f0f0349

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    .line 81
    const v1, 0x7f0f032e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/webimageview/WebImageView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->e:Lcom/yelp/android/webimageview/WebImageView;

    .line 82
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->e:Lcom/yelp/android/webimageview/WebImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/yelp/android/webimageview/WebImageView;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->e:Lcom/yelp/android/webimageview/WebImageView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->l:Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    .line 84
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/PanelLoading;->bringToFront()V

    .line 85
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onPause()V

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->q()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i:Z

    .line 111
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onResume()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->d:Z

    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->m()V

    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->r()V

    .line 104
    return-void
.end method

.method public final p()V
    .locals 4

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->g:Z

    if-nez v0, :cond_1

    .line 141
    iget-wide v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->f:J

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b()V

    goto :goto_0
.end method

.method public final q()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c()V

    .line 153
    return-void
.end method

.method public final r()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->g()V

    .line 157
    return-void
.end method

.method public s()Lcom/yelp/android/serializable/Video;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    return-object v0
.end method

.method protected t()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->m()V

    .line 165
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->r()V

    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->p()V

    .line 167
    return-void
.end method

.method protected u()V
    .locals 0

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->f()V

    .line 171
    return-void
.end method

.method protected v()V
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->g:Z

    .line 186
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->l()V

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->k:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->d:Z

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$a;->a(Ljava/lang/String;Z)V

    .line 191
    return-void
.end method

.method protected w()V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->l()V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->I()V

    .line 205
    return-void
.end method

.method protected x()V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->q()V

    .line 224
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->i:Z

    if-nez v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->H_()V

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->p()V

    goto :goto_0
.end method
