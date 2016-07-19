.class Lcom/facebook/share/internal/i$a;
.super Ljava/lang/Object;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/internal/i$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/i$1;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/facebook/share/internal/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareLinkContent;)V
    .locals 0

    .prologue
    .line 319
    invoke-static {p1, p0}, Lcom/facebook/share/internal/i;->a(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/i$a;)V

    .line 320
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareOpenGraphAction;)V
    .locals 0

    .prologue
    .line 336
    invoke-static {p1, p0}, Lcom/facebook/share/internal/i;->a(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/i$a;)V

    .line 337
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareOpenGraphContent;)V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/internal/i$a;->a:Z

    .line 332
    invoke-static {p1, p0}, Lcom/facebook/share/internal/i;->a(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/i$a;)V

    .line 333
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareOpenGraphObject;)V
    .locals 0

    .prologue
    .line 340
    invoke-static {p1, p0}, Lcom/facebook/share/internal/i;->a(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/i$a;)V

    .line 341
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V
    .locals 0

    .prologue
    .line 345
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/i;->a(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/i$a;Z)V

    .line 346
    return-void
.end method

.method public a(Lcom/facebook/share/model/SharePhoto;)V
    .locals 0

    .prologue
    .line 349
    invoke-static {p1, p0}, Lcom/facebook/share/internal/i;->b(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/i$a;)V

    .line 350
    return-void
.end method

.method public a(Lcom/facebook/share/model/SharePhotoContent;)V
    .locals 0

    .prologue
    .line 323
    invoke-static {p1, p0}, Lcom/facebook/share/internal/i;->a(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/i$a;)V

    .line 324
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareVideo;)V
    .locals 0

    .prologue
    .line 353
    invoke-static {p1, p0}, Lcom/facebook/share/internal/i;->a(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/i$a;)V

    .line 354
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareVideoContent;)V
    .locals 0

    .prologue
    .line 327
    invoke-static {p1, p0}, Lcom/facebook/share/internal/i;->a(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/i$a;)V

    .line 328
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/facebook/share/internal/i$a;->a:Z

    return v0
.end method
