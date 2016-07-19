.class Lcom/facebook/share/internal/i$b;
.super Lcom/facebook/share/internal/i$a;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/i$a;-><init>(Lcom/facebook/share/internal/i$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/i$1;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/facebook/share/internal/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/SharePhoto;)V
    .locals 0

    .prologue
    .line 303
    invoke-static {p1, p0}, Lcom/facebook/share/internal/i;->a(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/i$a;)V

    .line 304
    return-void
.end method

.method public a(Lcom/facebook/share/model/SharePhotoContent;)V
    .locals 2

    .prologue
    .line 293
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Cannot share SharePhotoContent via web sharing dialogs"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/facebook/share/model/ShareVideoContent;)V
    .locals 2

    .prologue
    .line 298
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Cannot share ShareVideoContent via web sharing dialogs"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
