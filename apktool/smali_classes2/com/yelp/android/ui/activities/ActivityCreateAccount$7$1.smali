.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$7$1;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;->a(Ljp/line/android/sdk/api/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/db/h;

.field final synthetic b:Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;Lcom/yelp/android/db/h;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7$1;->b:Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7$1;->a:Lcom/yelp/android/db/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 899
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7$1;->b:Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7$1;->a:Lcom/yelp/android/db/h;

    iget-object v1, v1, Lcom/yelp/android/db/h;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;)Ljava/lang/String;

    .line 900
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7$1;->b:Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/webimageview/WebImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7$1;->b:Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->o(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7$1;->b:Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    .line 904
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7$1;->b:Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7$1;->a:Lcom/yelp/android/db/h;

    iget-object v1, v1, Lcom/yelp/android/db/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;)Ljava/lang/String;

    .line 905
    return-void
.end method
