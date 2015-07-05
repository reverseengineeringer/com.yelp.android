.class Lcom/yelp/android/ui/activities/fk;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/NotificationActivity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/yelp/android/ui/activities/fk;->a:Lcom/yelp/android/ui/activities/NotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fk;->a:Lcom/yelp/android/ui/activities/NotificationActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/NotificationActivity;->finish()V

    .line 42
    return-void
.end method
