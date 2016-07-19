.class public abstract Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;
.super Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;
.source "BusinessMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$1;,
        Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;-><init>()V

    .line 111
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/Media;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    .line 186
    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->j()Lcom/yelp/android/serializable/Feedback;

    move-result-object v2

    .line 187
    check-cast p2, Landroid/widget/CompoundButton;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    .line 188
    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    invoke-virtual {v2}, Lcom/yelp/android/serializable/Feedback;->a()V

    .line 196
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v2, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 198
    if-eqz v0, :cond_0

    .line 199
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 201
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    check-cast p1, Lcom/yelp/android/serializable/Video;

    .line 203
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ej;

    invoke-direct {v0, p1, v3}, Lcom/yelp/android/appdata/webrequests/ej;-><init>(Lcom/yelp/android/serializable/Video;Z)V

    .line 204
    const-string/jumbo v2, "id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v2, "video_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v2, "video_source"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->BusinessSaveVideoFeedback:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v2, v4}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 219
    :goto_1
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/c;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 221
    :cond_0
    return-void

    .line 191
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v4

    if-nez v4, :cond_5

    .line 192
    :cond_2
    invoke-virtual {v2}, Lcom/yelp/android/serializable/Feedback;->b()V

    goto :goto_0

    .line 208
    :cond_3
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 209
    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 210
    new-instance v2, Lcom/yelp/android/appdata/webrequests/eh;

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v5}, Lcom/yelp/android/appdata/webrequests/eh;-><init>(Lcom/yelp/android/serializable/Photo;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 211
    const-string/jumbo v3, "id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v3, "photo_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessSavePhotoFeedback:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v4}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 214
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v3, "com.yelp.android.media.update"

    invoke-direct {v0, p1, v3}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    move-object v0, v2

    .line 216
    goto :goto_1

    .line 217
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can only like photos / videos"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 224
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const v0, 0x7f070201

    const v1, 0x7f070397

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x407

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/Media;)Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    .line 84
    :goto_0
    return-object v0

    .line 83
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->BUSINESS_VIDEO:Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should only be able to flag photos / videos."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/yelp/android/serializable/Media;Ljava/lang/String;)V
    .locals 6

    .prologue
    const v5, 0x7f040024

    const v4, 0x7f04001f

    .line 158
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 159
    const-string/jumbo v0, "id"

    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 161
    check-cast v0, Lcom/yelp/android/serializable/Video;

    .line 162
    const-string/jumbo v2, "video_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v2, "video_source"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideoFeedbackList:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 172
    :goto_0
    invoke-static {p1}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a(Lcom/yelp/android/serializable/Media;)Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v4, v5}, Landroid/support/v4/app/o;->a(IIII)Landroid/support/v4/app/o;

    move-result-object v1

    const v2, 0x7f0f01ae

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 181
    return-void

    .line 165
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const-string/jumbo v0, "photo_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotoFeedbackList:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can only like photos / videos."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;Lcom/yelp/android/serializable/Media;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$1;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;Lcom/yelp/android/serializable/Media;Landroid/view/View;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->a(Lcom/yelp/android/serializable/Media;Landroid/view/View;)V

    goto :goto_0

    .line 56
    :pswitch_1
    invoke-interface {p2}, Lcom/yelp/android/serializable/Media;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->a(Lcom/yelp/android/serializable/Media;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b(Lcom/yelp/android/serializable/Media;)Lcom/yelp/android/appdata/webrequests/core/b;
    .locals 4

    .prologue
    .line 92
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->VIDEO:Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    .line 94
    :goto_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->f()Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;-><init>(Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/serializable/Media;)V

    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->showLoadingDialog()V

    .line 97
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/core/b;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 98
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessVideoDeleted:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "video_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    :cond_0
    :goto_1
    return-object v1

    .line 92
    :cond_1
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->PHOTO:Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    goto :goto_0

    .line 100
    :cond_2
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoDeleted:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "photo_id"

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected f()Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$a;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer$1;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 76
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->onActivityResult(IILandroid/content/Intent;)V

    .line 77
    :goto_0
    return-void

    .line 68
    :pswitch_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->setLikeButtonChecked(Z)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x407
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->setData(Ljava/lang/Object;)V

    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 245
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/a;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->g()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 246
    const-string/jumbo v1, "extra.media_request"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    :goto_0
    const-string/jumbo v1, "extra.media_index"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->setResult(ILandroid/content/Intent;)V

    .line 253
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/BusinessMediaViewer;->finish()V

    .line 257
    :goto_1
    return-void

    .line 248
    :cond_0
    const-string/jumbo v1, "extra.media_request"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->onBackPressed()V

    goto :goto_1
.end method
