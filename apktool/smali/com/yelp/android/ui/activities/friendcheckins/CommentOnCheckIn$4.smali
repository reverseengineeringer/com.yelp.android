.class Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$4;
.super Ljava/lang/Object;
.source "CommentOnCheckIn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/yelp/android/serializable/YelpCheckIn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$4;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 523
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$4;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->d(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$4;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$4;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$4;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->d(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/CheckInFeedback;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/CheckInFeedback;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->startActivity(Landroid/content/Intent;)V

    .line 531
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$4;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$4;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$4;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/WhoLikedThisCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
