.class Lcom/yelp/android/appdata/j$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationsCountController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/j;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/j;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/yelp/android/appdata/j$2;->a:Lcom/yelp/android/appdata/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 171
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->b(Landroid/content/Intent;)I

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/yelp/android/appdata/j$2;->a:Lcom/yelp/android/appdata/j;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/j;->a(Lcom/yelp/android/appdata/j;I)V

    .line 173
    return-void
.end method
