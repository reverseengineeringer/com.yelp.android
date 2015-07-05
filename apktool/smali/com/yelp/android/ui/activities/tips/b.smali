.class Lcom/yelp/android/ui/activities/tips/b;
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
    .line 180
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/b;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/b;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/b;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/TipPhotoViewer;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Photo;)Landroid/content/Intent;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/b;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method
