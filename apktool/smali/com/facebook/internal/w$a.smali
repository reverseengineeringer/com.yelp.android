.class public Lcom/facebook/internal/w$a;
.super Ljava/lang/Object;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/facebook/internal/w$c;

.field private f:Landroid/os/Bundle;

.field private g:Lcom/facebook/AccessToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    const v0, 0x1030010

    iput v0, p0, Lcom/facebook/internal/w$a;->d:I

    .line 540
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/w$a;->g:Lcom/facebook/AccessToken;

    .line 541
    iget-object v0, p0, Lcom/facebook/internal/w$a;->g:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    .line 542
    invoke-static {p1}, Lcom/facebook/internal/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_1

    .line 544
    iput-object v0, p0, Lcom/facebook/internal/w$a;->b:Ljava/lang/String;

    .line 551
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/w$a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 552
    return-void

    .line 546
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Attempted to create a builder without a valid access token or a valid default Application ID."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    const v0, 0x1030010

    iput v0, p0, Lcom/facebook/internal/w$a;->d:I

    .line 564
    if-nez p2, :cond_0

    .line 565
    invoke-static {p1}, Lcom/facebook/internal/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 567
    :cond_0
    const-string/jumbo v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iput-object p2, p0, Lcom/facebook/internal/w$a;->b:Ljava/lang/String;

    .line 570
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/internal/w$a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 571
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 637
    iput-object p1, p0, Lcom/facebook/internal/w$a;->a:Landroid/content/Context;

    .line 638
    iput-object p2, p0, Lcom/facebook/internal/w$a;->c:Ljava/lang/String;

    .line 639
    if-eqz p3, :cond_0

    .line 640
    iput-object p3, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/internal/w$c;)Lcom/facebook/internal/w$a;
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/facebook/internal/w$a;->e:Lcom/facebook/internal/w$c;

    .line 592
    return-object p0
.end method

.method public a()Lcom/facebook/internal/w;
    .locals 6

    .prologue
    .line 602
    iget-object v0, p0, Lcom/facebook/internal/w$a;->g:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/facebook/internal/w$a;->g:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    const-string/jumbo v1, "access_token"

    iget-object v2, p0, Lcom/facebook/internal/w$a;->g:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :goto_0
    new-instance v0, Lcom/facebook/internal/w;

    iget-object v1, p0, Lcom/facebook/internal/w$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/internal/w$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    iget v4, p0, Lcom/facebook/internal/w$a;->d:I

    iget-object v5, p0, Lcom/facebook/internal/w$a;->e:Lcom/facebook/internal/w$c;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/w;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/w$c;)V

    return-object v0

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/facebook/internal/w$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/facebook/internal/w$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/facebook/internal/w$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/facebook/internal/w$a;->d:I

    return v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public f()Lcom/facebook/internal/w$c;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/facebook/internal/w$a;->e:Lcom/facebook/internal/w$c;

    return-object v0
.end method
