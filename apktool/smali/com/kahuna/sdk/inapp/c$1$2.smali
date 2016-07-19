.class Lcom/kahuna/sdk/inapp/c$1$2;
.super Ljava/lang/Object;
.source "RichInAppMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 216
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/c$1$2;->a:Lcom/kahuna/sdk/inapp/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/a;

    .line 220
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1$2;->a:Lcom/kahuna/sdk/inapp/c$1;

    iget-object v1, v1, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v1, v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Lcom/kahuna/sdk/inapp/a;)V

    .line 221
    return-void
.end method
