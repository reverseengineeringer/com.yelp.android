.class Lcom/yelp/android/appdata/h;
.super Ljava/lang/Object;
.source "AppData.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/AppData;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/AppData;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/yelp/android/appdata/h;->a:Lcom/yelp/android/appdata/AppData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 883
    :try_start_0
    invoke-static {}, Lcom/yelp/android/services/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    iget-object v0, p0, Lcom/yelp/android/appdata/h;->a:Lcom/yelp/android/appdata/AppData;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;)Landroid/content/Intent;

    .line 891
    :goto_0
    return-void

    .line 884
    :catch_0
    move-exception v0

    .line 889
    iget-object v0, p0, Lcom/yelp/android/appdata/h;->a:Lcom/yelp/android/appdata/AppData;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yelp/android/appdata/h;->a:Lcom/yelp/android/appdata/AppData;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;)Landroid/content/Intent;

    throw v0
.end method
