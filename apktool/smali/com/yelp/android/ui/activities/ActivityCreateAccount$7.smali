.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Ljp/line/android/sdk/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljp/line/android/sdk/login/LineLoginFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljp/line/android/sdk/api/c",
        "<",
        "Lcom/yelp/android/db/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 889
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljp/line/android/sdk/api/b;)V
    .locals 3

    .prologue
    .line 892
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$24;->a:[I

    invoke-interface {p1}, Ljp/line/android/sdk/api/b;->b()Ljp/line/android/sdk/api/FutureStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljp/line/android/sdk/api/FutureStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 911
    :goto_0
    return-void

    .line 894
    :pswitch_0
    invoke-interface {p1}, Ljp/line/android/sdk/api/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/db/h;

    .line 895
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    new-instance v2, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7$1;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7$1;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;Lcom/yelp/android/db/h;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 892
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
