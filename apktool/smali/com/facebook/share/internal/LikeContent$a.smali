.class public Lcom/facebook/share/internal/LikeContent$a;
.super Ljava/lang/Object;
.source "LikeContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/LikeContent$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/share/internal/LikeContent$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/share/internal/LikeContent$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/share/internal/LikeContent$a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$a;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/share/internal/LikeContent$a;->a:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public a()Lcom/facebook/share/internal/LikeContent;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/facebook/share/internal/LikeContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/internal/LikeContent;-><init>(Lcom/facebook/share/internal/LikeContent$a;Lcom/facebook/share/internal/LikeContent$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$a;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/facebook/share/internal/LikeContent$a;->b:Ljava/lang/String;

    .line 100
    return-object p0
.end method
