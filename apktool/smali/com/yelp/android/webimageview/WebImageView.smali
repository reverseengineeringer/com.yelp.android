.class public Lcom/yelp/android/webimageview/WebImageView;
.super Landroid/widget/ImageView;
.source "WebImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;,
        Lcom/yelp/android/webimageview/WebImageView$WebImageLoaderHandler;
    }
.end annotation


# static fields
.field public static final ACTION_INVALID_BUNDLE_URL:Ljava/lang/String; = "com.yelp.android.webimageview.intent.invalid_bundle_url"

.field public static final EXTRA_IMAGE_URL:Ljava/lang/String; = "image_url"


# instance fields
.field private mFollowCrossRedirects:Z

.field private mLoaded:Z

.field private mLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private mPriority:J

.field private mReqHeight:I

.field private mReqWidth:I

.field private mSavePermanently:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    sget-object v0, Lcom/yelp/android/webimageview/R$styleable;->WebImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0, v0}, Lcom/yelp/android/webimageview/WebImageView;->applyTypedArray(Landroid/content/res/TypedArray;)V

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/yelp/android/webimageview/WebImageView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/webimageview/WebImageView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/yelp/android/webimageview/WebImageView;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/yelp/android/webimageview/WebImageView;->mLoaded:Z

    return p1
.end method

.method public static getResourceForName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 53
    :cond_0
    const-string/jumbo v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const-string/jumbo v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public applyTypedArray(Landroid/content/res/TypedArray;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yelp/android/webimageview/WebImageView;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yelp/android/webimageview/WebImageView;->mSavePermanently:Z

    .line 81
    const/4 v2, 0x5

    const/16 v3, 0x14

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/yelp/android/webimageview/WebImageView;->mPriority:J

    .line 82
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yelp/android/webimageview/WebImageView;->mFollowCrossRedirects:Z

    .line 83
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/WebImageView;->invalidate()V

    .line 87
    return-void

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/yelp/android/webimageview/WebImageView;->mLoaded:Z

    return v0
.end method

.method public declared-synchronized loadImage(Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V
    .locals 10

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/webimageview/WebImageView;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot load a null Image url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 226
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/yelp/android/webimageview/WebImageView;->mLoaded:Z

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/yelp/android/webimageview/WebImageView;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/yelp/android/webimageview/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v0, p0, Lcom/yelp/android/webimageview/WebImageView;->mUrl:Ljava/lang/String;

    iget v8, p0, Lcom/yelp/android/webimageview/WebImageView;->mReqWidth:I

    iget v9, p0, Lcom/yelp/android/webimageview/WebImageView;->mReqHeight:I

    new-instance v1, Lcom/yelp/android/webimageview/WebImageView$WebImageLoaderHandler;

    iget-object v2, p0, Lcom/yelp/android/webimageview/WebImageView;->mUrl:Ljava/lang/String;

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/yelp/android/webimageview/WebImageView;->mPriority:J

    add-long/2addr v4, v6

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/yelp/android/webimageview/WebImageView$WebImageLoaderHandler;-><init>(Ljava/lang/String;Lcom/yelp/android/webimageview/WebImageView;JLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    iget-boolean v6, p0, Lcom/yelp/android/webimageview/WebImageView;->mSavePermanently:Z

    iget-boolean v7, p0, Lcom/yelp/android/webimageview/WebImageView;->mFollowCrossRedirects:Z

    move-object v2, v0

    move v3, v8

    move v4, v9

    move-object v5, v1

    invoke-static/range {v2 .. v7}, Lcom/yelp/android/webimageview/ImageLoader;->start(Ljava/lang/String;IILcom/yelp/android/webimageview/ImageLoaderHandler;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/webimageview/WebImageView;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/yelp/android/webimageview/WebImageView;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/yelp/android/webimageview/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/webimageview/WebImageView;->mLoaded:Z

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/webimageview/WebImageView;->mUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/yelp/android/webimageview/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    iput-boolean p2, p0, Lcom/yelp/android/webimageview/WebImageView;->mLoaded:Z

    .line 250
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, p1, v0, v0}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;II)V

    .line 121
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;III)V

    .line 138
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 124
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;II)V

    .line 125
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;III)V
    .locals 1

    .prologue
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/WebImageView;->reset()V

    .line 145
    invoke-virtual {p0, p2}, Lcom/yelp/android/webimageview/WebImageView;->setImageResource(I)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 152
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;II)V

    .line 153
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;II)V
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/WebImageView;->reset()V

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    :cond_2
    iput-object p1, p0, Lcom/yelp/android/webimageview/WebImageView;->mUrl:Ljava/lang/String;

    .line 162
    iput p4, p0, Lcom/yelp/android/webimageview/WebImageView;->mReqWidth:I

    .line 163
    iput p5, p0, Lcom/yelp/android/webimageview/WebImageView;->mReqHeight:I

    .line 164
    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {p0, p3}, Lcom/yelp/android/webimageview/WebImageView;->loadImage(Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    goto :goto_0

    .line 167
    :cond_3
    const-string/jumbo v0, "android.resource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/yelp/android/webimageview/WebImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 171
    :cond_4
    const-string/jumbo v0, "bundle://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string/jumbo v0, "bundle://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/WebImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/webimageview/WebImageView;->getResourceForName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 174
    if-nez v1, :cond_5

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.yelp.android.webimageview.intent.invalid_bundle_url"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v2, "image_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/WebImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    :cond_5
    invoke-virtual {p0, v1}, Lcom/yelp/android/webimageview/WebImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setLoadingDrawable(I)V
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/WebImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/webimageview/WebImageView;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 191
    iput-object p1, p0, Lcom/yelp/android/webimageview/WebImageView;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    iget-boolean v0, p0, Lcom/yelp/android/webimageview/WebImageView;->mLoaded:Z

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/yelp/android/webimageview/WebImageView;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/yelp/android/webimageview/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :cond_0
    return-void
.end method

.method public setPriority(I)V
    .locals 4

    .prologue
    .line 110
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/webimageview/WebImageView;->mPriority:J

    .line 111
    return-void
.end method

.method public setSavePermanently(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/yelp/android/webimageview/WebImageView;->mSavePermanently:Z

    .line 102
    return-void
.end method
