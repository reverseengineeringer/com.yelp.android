.class Lcom/facebook/c$a;
.super Landroid/content/BroadcastReceiver;
.source "AccessTokenTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/c;


# direct methods
.method private constructor <init>(Lcom/facebook/c;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/facebook/c$a;->a:Lcom/facebook/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/c;Lcom/facebook/c$1;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/facebook/c$a;-><init>(Lcom/facebook/c;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 100
    const-string/jumbo v0, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/AccessToken;

    .line 104
    const-string/jumbo v1, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/AccessToken;

    .line 107
    iget-object v2, p0, Lcom/facebook/c$a;->a:Lcom/facebook/c;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/c;->a(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    .line 109
    :cond_0
    return-void
.end method
