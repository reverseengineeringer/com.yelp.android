.class Lcom/yelp/android/ui/activities/bk;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/activities/fg",
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
    .line 917
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bk;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 926
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 931
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bk;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const v1, 0x7f070047

    const v2, 0x7f070620

    const/high16 v3, 0x1040000

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showYesNoDialog(IIII)V

    .line 934
    return-void
.end method

.method public b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 939
    return-void
.end method

.method public c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 4

    .prologue
    .line 943
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bk;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    .line 944
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bk;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const v1, 0x7f070340

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showLoadingDialog(I)V

    .line 945
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c()Lcom/yelp/android/serializable/FacebookUser;

    move-result-object v0

    .line 946
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bk;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;)Ljava/lang/String;

    .line 947
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bk;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/webimageview/WebImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bk;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/bk;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    .line 950
    return-void
.end method
