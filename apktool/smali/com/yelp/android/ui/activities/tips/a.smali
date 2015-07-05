.class Lcom/yelp/android/ui/activities/tips/a;
.super Ljava/lang/Object;
.source "TipComplimentsLikes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/a;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/a;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/a;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/a;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Tip;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method
