.class Lcom/kahuna/sdk/inapp/c$1$5;
.super Ljava/lang/Object;
.source "RichInAppMessageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/inapp/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/inapp/c$1;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/inapp/c$1;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/c$1$5;->a:Lcom/kahuna/sdk/inapp/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 281
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->e()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Lcom/kahuna/sdk/inapp/RichInAppMessage;)Lcom/kahuna/sdk/inapp/RichInAppMessage;

    .line 282
    return-void
.end method
