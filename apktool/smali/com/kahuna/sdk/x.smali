.class public Lcom/kahuna/sdk/x;
.super Ljava/lang/Object;
.source "PushNotificationContainer.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/kahuna/sdk/x;->d:I

    .line 36
    iput-object p1, p0, Lcom/kahuna/sdk/x;->a:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kahuna/sdk/x;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/kahuna/sdk/x;->d:I

    .line 65
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kahuna/sdk/x;->f:Landroid/graphics/Bitmap;

    .line 77
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/kahuna/sdk/x;->g:Landroid/os/Bundle;

    .line 89
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/kahuna/sdk/x;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kahuna/sdk/x;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kahuna/sdk/x;->c:Ljava/lang/String;

    .line 57
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kahuna/sdk/x;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kahuna/sdk/x;->e:Ljava/lang/String;

    .line 73
    return-void
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/kahuna/sdk/x;->d:I

    return v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kahuna/sdk/x;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kahuna/sdk/x;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected g()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kahuna/sdk/x;->g:Landroid/os/Bundle;

    return-object v0
.end method
