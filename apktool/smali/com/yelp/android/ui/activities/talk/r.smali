.class Lcom/yelp/android/ui/activities/talk/r;
.super Ljava/lang/Object;
.source "TalkMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/TalkMessage;

.field final synthetic b:Lcom/yelp/android/ui/activities/talk/q;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/q;Lcom/yelp/android/serializable/TalkMessage;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/r;->b:Lcom/yelp/android/ui/activities/talk/q;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/talk/r;->a:Lcom/yelp/android/serializable/TalkMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/r;->b:Lcom/yelp/android/ui/activities/talk/q;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/q;->b(Lcom/yelp/android/ui/activities/talk/q;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/r;->b:Lcom/yelp/android/ui/activities/talk/q;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/q;->b(Lcom/yelp/android/ui/activities/talk/q;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/r;->a:Lcom/yelp/android/serializable/TalkMessage;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/TalkMessage;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method
