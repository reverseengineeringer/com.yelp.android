.class public Lcom/yelp/android/ui/activities/camera/CameraWrangler;
.super Ljava/lang/Object;
.source "CameraWrangler.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$ShutterCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private a:I

.field private final b:Landroid/view/Display;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/camera/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private e:Landroid/hardware/Camera;

.field private f:Z

.field private final g:Landroid/view/OrientationEventListener;

.field private h:I

.field private final i:Ljava/lang/Runnable;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILandroid/view/Display;)V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Lcom/yelp/android/ui/activities/camera/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/c;-><init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->i:Ljava/lang/Runnable;

    .line 203
    new-instance v0, Lcom/yelp/android/ui/activities/camera/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/d;-><init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->j:Ljava/lang/Runnable;

    .line 62
    iput p1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    .line 63
    iput-object p2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b:Landroid/view/Display;

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c:Ljava/util/List;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->d:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/yelp/android/ui/activities/camera/g;

    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p0}, Lcom/yelp/android/ui/activities/camera/g;-><init>(Landroid/content/Context;ILcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->g:Landroid/view/OrientationEventListener;

    .line 68
    return-void
.end method

.method public static a(II)I
    .locals 3

    .prologue
    .line 282
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 283
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 284
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 285
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p0

    rem-int/lit16 v0, v0, 0x168

    .line 286
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 290
    :goto_0
    return v0

    .line 288
    :cond_0
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method public static a(Landroid/view/Display;I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 262
    packed-switch v1, :pswitch_data_0

    .line 277
    :goto_0
    :pswitch_0
    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(II)I

    move-result v0

    return v0

    .line 267
    :pswitch_1
    const/16 v0, 0x5a

    .line 268
    goto :goto_0

    .line 270
    :pswitch_2
    const/16 v0, 0xb4

    .line 271
    goto :goto_0

    .line 273
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/view/OrientationEventListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->g:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .locals 7

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 173
    const/4 v1, 0x0

    .line 174
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 175
    if-eqz v1, :cond_0

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v4, v5

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v5, v6

    if-le v4, v5, :cond_2

    :cond_0
    :goto_1
    move-object v1, v0

    .line 178
    goto :goto_0

    .line 179
    :cond_1
    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b:Landroid/view/Display;

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/Display;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->h:I

    .line 181
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->h:I

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b:Landroid/view/Display;

    iget v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/Display;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->f:Z

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/hardware/Camera;)Z
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string/jumbo v1, "auto"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "macro"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    return v0
.end method

.method public a(ILandroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 90
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 91
    :goto_0
    iput p1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    .line 92
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->f:Z

    .line 93
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c()V

    .line 97
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 98
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    .line 99
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/SurfaceHolder;)V

    .line 101
    :cond_1
    return-void

    .line 90
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/SurfaceView;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    return-void
.end method

.method public a(Landroid/view/SurfaceView;Lcom/yelp/android/ui/activities/camera/a;)V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public b()Landroid/hardware/Camera$Size;
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 153
    const/4 v0, 0x0

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 156
    iget v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->h:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->h:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_0

    .line 157
    :cond_2
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    .line 158
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iput v2, v0, Landroid/hardware/Camera$Size;->height:I

    .line 159
    iput v1, v0, Landroid/hardware/Camera$Size;->width:I

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->g:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->f:Z

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/a;

    .line 233
    invoke-interface {v0, p0}, Lcom/yelp/android/ui/activities/camera/a;->c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 240
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->f:Z

    .line 241
    return-void

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_1
.end method

.method public e()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 296
    if-nez v0, :cond_0

    .line 298
    sget-object v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->AUTO:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    .line 300
    :cond_0
    const-class v1, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->fromString(Ljava/lang/String;)Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 307
    goto :goto_0
.end method

.method public f()Lcom/yelp/android/ui/activities/camera/b;
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lcom/yelp/android/ui/activities/camera/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/e;-><init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    return-object v0
.end method

.method public g()Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->fromString(Ljava/lang/String;)Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->OFF:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    goto :goto_0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 252
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Lcom/yelp/android/ui/activities/camera/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/camera/h;-><init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Lcom/yelp/android/ui/activities/camera/c;)V

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 257
    return-void
.end method

.method public onShutter()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/a;

    .line 480
    invoke-interface {v0, p0}, Lcom/yelp/android/ui/activities/camera/a;->d(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    goto :goto_0

    .line 482
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    .line 128
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_0
    return-void
.end method
