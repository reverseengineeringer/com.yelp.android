.class public Lcom/kahuna/sdk/inapp/b;
.super Ljava/lang/Object;
.source "RichInAppMessageImage.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/b;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/inapp/b;
    .locals 2

    .prologue
    .line 49
    invoke-static {p0}, Lcom/kahuna/sdk/w;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/kahuna/sdk/inapp/b;

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/inapp/b;-><init>(Ljava/lang/String;)V

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/b;->b:Landroid/graphics/Bitmap;

    .line 42
    return-void
.end method

.method b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/b;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
