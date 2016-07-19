.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$15;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/FacebookConnectManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityCreateAccount;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/activities/FacebookConnectManager$a",
        "<",
        "Lcom/yelp/android/ui/activities/ActivityCreateAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$15;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 1227
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$15;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const v1, 0x7f0700cf

    const v2, 0x7f07060c

    const/high16 v3, 0x1040000

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showYesNoDialog(IIII)V

    .line 1237
    return-void
.end method

.method public b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 1242
    return-void
.end method

.method public c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 4

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$15;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    .line 1247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$15;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const v1, 0x7f07037b

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showLoadingDialog(I)V

    .line 1248
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c()Lcom/yelp/android/serializable/FacebookUser;

    move-result-object v0

    .line 1249
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$15;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;)Ljava/lang/String;

    .line 1250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$15;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/webimageview/WebImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$15;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->u(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$15;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    .line 1254
    return-void
.end method
