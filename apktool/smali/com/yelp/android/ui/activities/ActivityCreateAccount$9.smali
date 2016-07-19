.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$9;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Ljp/line/android/sdk/login/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$9;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljp/line/android/sdk/login/LineLoginFuture;)V
    .locals 2

    .prologue
    .line 931
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$24;->b:[I

    invoke-interface {p1}, Ljp/line/android/sdk/login/LineLoginFuture;->d()Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    move-result-object v1

    invoke-virtual {v1}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 938
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LineSignupCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 939
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$9;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    .line 942
    :goto_0
    return-void

    .line 933
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$9;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljp/line/android/sdk/login/LineLoginFuture;)V

    goto :goto_0

    .line 931
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
