.class Lcom/facebook/internal/p$a;
.super Lcom/facebook/internal/p$c;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/p$c;-><init>(Lcom/facebook/internal/p$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/p$1;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/facebook/internal/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    const-string/jumbo v0, "com.facebook.katana"

    return-object v0
.end method
