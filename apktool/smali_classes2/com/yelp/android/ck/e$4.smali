.class Lcom/yelp/android/ck/e$4;
.super Ljava/lang/Object;
.source "OnLineSettingChange.java"

# interfaces
.implements Ljp/line/android/sdk/login/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ck/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ck/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ck/e;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yelp/android/ck/e$4;->a:Lcom/yelp/android/ck/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljp/line/android/sdk/login/LineLoginFuture;)V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/yelp/android/ck/e$7;->b:[I

    invoke-interface {p1}, Ljp/line/android/sdk/login/LineLoginFuture;->d()Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    move-result-object v1

    invoke-virtual {v1}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ck/e$4;->a:Lcom/yelp/android/ck/e;

    invoke-static {v0}, Lcom/yelp/android/ck/e;->a(Lcom/yelp/android/ck/e;)Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ck/e$4$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ck/e$4$2;-><init>(Lcom/yelp/android/ck/e$4;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 158
    :goto_1
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ck/e$4;->a:Lcom/yelp/android/ck/e;

    invoke-static {v0, p1}, Lcom/yelp/android/ck/e;->a(Lcom/yelp/android/ck/e;Ljp/line/android/sdk/login/LineLoginFuture;)V

    goto :goto_1

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ck/e$4;->a:Lcom/yelp/android/ck/e;

    invoke-static {v0}, Lcom/yelp/android/ck/e;->a(Lcom/yelp/android/ck/e;)Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ck/e$4$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ck/e$4$1;-><init>(Lcom/yelp/android/ck/e$4;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
