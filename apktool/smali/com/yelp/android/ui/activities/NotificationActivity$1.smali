.class Lcom/yelp/android/ui/activities/NotificationActivity$1;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/NotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/NotificationActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yelp/android/ui/activities/NotificationActivity$1;->a:Lcom/yelp/android/ui/activities/NotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/activities/NotificationActivity$1;->a:Lcom/yelp/android/ui/activities/NotificationActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/NotificationActivity;->finish()V

    .line 43
    return-void
.end method
