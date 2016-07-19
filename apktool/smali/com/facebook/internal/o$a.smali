.class public final Lcom/facebook/internal/o$a;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/net/Uri;

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/facebook/internal/o$a;->a:Ljava/util/UUID;

    .line 240
    iput-object p2, p0, Lcom/facebook/internal/o$a;->d:Landroid/graphics/Bitmap;

    .line 241
    iput-object p3, p0, Lcom/facebook/internal/o$a;->e:Landroid/net/Uri;

    .line 243
    if-eqz p3, :cond_3

    .line 244
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string/jumbo v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iput-boolean v3, p0, Lcom/facebook/internal/o$a;->f:Z

    .line 247
    iput-boolean v3, p0, Lcom/facebook/internal/o$a;->g:Z

    .line 259
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/internal/o$a;->g:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/facebook/internal/o$a;->c:Ljava/lang/String;

    .line 260
    iget-boolean v0, p0, Lcom/facebook/internal/o$a;->g:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/facebook/internal/o$a;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/facebook/internal/o$a;->b:Ljava/lang/String;

    .line 266
    return-void

    .line 248
    :cond_1
    const-string/jumbo v1, "file"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    iput-boolean v3, p0, Lcom/facebook/internal/o$a;->g:Z

    goto :goto_0

    .line 250
    :cond_2
    invoke-static {p3}, Lcom/facebook/internal/u;->b(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Lcom/facebook/FacebookException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported scheme for image Uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_3
    if-eqz p2, :cond_4

    .line 254
    iput-boolean v3, p0, Lcom/facebook/internal/o$a;->g:Z

    goto :goto_0

    .line 256
    :cond_4
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Cannot share a photo without a bitmap or Uri set"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 260
    :cond_6
    invoke-static {}, Lcom/facebook/g;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/o$a;->c:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/facebook/FacebookContentProvider;->a(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/facebook/internal/o$1;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/o$a;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/o$a;)Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/facebook/internal/o$a;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/internal/o$a;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/internal/o$a;->a:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/internal/o$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/internal/o$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/internal/o$a;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/internal/o$a;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/internal/o$a;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/internal/o$a;->e:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/internal/o$a;)Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/facebook/internal/o$a;->f:Z

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/internal/o$a;->b:Ljava/lang/String;

    return-object v0
.end method
