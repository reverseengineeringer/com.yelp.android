.class public Lcom/facebook/internal/k$a;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;

.field private c:Lcom/facebook/internal/k$b;

.field private d:Z

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string/jumbo v0, "imageUri"

    invoke-static {p2, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/facebook/internal/k$a;->a:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/facebook/internal/k$a;->b:Landroid/net/Uri;

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/k$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/internal/k$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/internal/k$a;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/internal/k$a;->b:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/internal/k$a;)Lcom/facebook/internal/k$b;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/internal/k$a;->c:Lcom/facebook/internal/k$b;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/internal/k$a;)Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/facebook/internal/k$a;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/facebook/internal/k$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/internal/k$a;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/internal/k$b;)Lcom/facebook/internal/k$a;
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/internal/k$a;->c:Lcom/facebook/internal/k$b;

    .line 141
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/facebook/internal/k$a;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/internal/k$a;->e:Ljava/lang/Object;

    .line 146
    return-object p0
.end method

.method public a(Z)Lcom/facebook/internal/k$a;
    .locals 0

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/facebook/internal/k$a;->d:Z

    .line 151
    return-object p0
.end method

.method public a()Lcom/facebook/internal/k;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/facebook/internal/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/k;-><init>(Lcom/facebook/internal/k$a;Lcom/facebook/internal/k$1;)V

    return-object v0
.end method
