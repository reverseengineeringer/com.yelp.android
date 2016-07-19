.class public Lcom/yelp/android/services/push/AppUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppUpdatedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 27
    const-string/jumbo v0, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-static {}, Lcom/yelp/android/services/push/b;->b()Lcom/yelp/android/services/push/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-static {}, Lcom/yelp/android/services/push/b;->b()Lcom/yelp/android/services/push/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/b;->c()V

    .line 35
    :cond_2
    invoke-static {p1}, Lcom/yelp/android/appdata/AppData;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->g()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1, v0}, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/dialogs/WhatsNewDialogFragment;->a:Lcom/yelp/android/appdata/b;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/appdata/c;->a(Lcom/yelp/android/appdata/b;Z)V

    .line 44
    :cond_3
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/c;->b(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->s()Lcom/yelp/android/services/backgroundlocation/a;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/yelp/android/services/backgroundlocation/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/yelp/android/services/backgroundlocation/a;->a()V

    goto :goto_0
.end method
