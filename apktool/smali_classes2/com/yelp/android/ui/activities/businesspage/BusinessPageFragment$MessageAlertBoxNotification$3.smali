.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification$3;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;
.source "BusinessPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$1;)V

    return-void
.end method


# virtual methods
.method protected addNotification(Landroid/content/Context;Lcom/yelp/android/ui/activities/businesspage/d;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 514
    const-string/jumbo v0, "extra.multiple_media"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/yelp/android/ui/activities/businesspage/d;->a(Landroid/content/Context;I)V

    .line 516
    return-void
.end method
