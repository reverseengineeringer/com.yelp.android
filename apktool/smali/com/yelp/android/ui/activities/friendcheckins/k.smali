.class Lcom/yelp/android/ui/activities/friendcheckins/k;
.super Ljava/lang/Object;
.source "NearbyCheckIns.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/k;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method
