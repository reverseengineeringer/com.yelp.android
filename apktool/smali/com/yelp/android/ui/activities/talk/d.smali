.class Lcom/yelp/android/ui/activities/talk/d;
.super Ljava/lang/Object;
.source "ActivityTalkPost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/d;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/d;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->showDialog(I)V

    .line 63
    return-void
.end method
